#include "ush.h"
#include "ush-env.h"
#include "ush-parse.h"
#include "ush-prt.h"
#include "ush-sig.h"
#include "errno.h"

#define MAXARG 20
#define MAXFNAME 500
#define MAXWORD  100
#define BADFD -2

TOKEN command(int *waitpid, BOOLEAN makepipe, int *pipefdp);
static BOOLEAN echo(int argc, char *argv[]);
static void redirect(int srcfd, char *srcfile, int dstfd, char *dstfile,
                    BOOLEAN append, BOOLEAN bckgrnd);
static BOOLEAN builtin(int argc, char *argv[], int srcfd, int dstfd);

/////////////////////////////////////////////////////////////////
// you should better not modify this function 						     //
/////////////////////////////////////////////////////////////////
int main()
{				/* real shell */
    char *prompt;
    int pid, fd;
    TOKEN term;
    void waitfor(int);

    ignoresig();
    if (!EVinit())
        fatal("can't initialize environment");
    if ((prompt = EVget("PS2")) == NULL)
        prompt = "> ";
    printf("%s", prompt);

    while (1) {
        term = command(&pid, FALSE, NULL);
        if (term != T_AMP && pid != 0)
            waitfor(pid);
        if (term == T_NL)
            printf("%s", prompt);
        for (fd = 3; fd < 20; fd++)
            (void) close(fd);	/* ignore error */
    }
    return (0);
}



TOKEN command(int *waitpid, BOOLEAN makepipe, int *pipefdp) {				/* do simple cmd */

    TOKEN token, term;
    int argc, srcfd, dstfd, pid, pfd[2];
    char *argv[MAXARG + 1], srcfile[MAXFNAME], dstfile[MAXFNAME];
    char word[MAXWORD];

    BOOLEAN append;

    argc = 0;
    srcfd = 0;
    dstfd = 1;
    while (1) {
        switch (token = gettoken(word)) {
            case T_WORD:
                if (argc == MAXARG) {
                    fprintf(stderr, "Too many args\n");
                    break;
                }
                if ((argv[argc] = malloc(strlen(word) + 1)) == NULL) {
                    fprintf(stderr, "Out of argmemory\n");
                    break;
                }
                strcpy(argv[argc], word);
                argc++;
                continue;
            case T_LT:
                if (makepipe) {
                    fprintf(stderr, "Extra <\n");
                    break;
                }
                if (gettoken(srcfile) != T_WORD) {
                    fprintf(stderr, "Illegal <\n");
                    break;
                }
                srcfd = BADFD;
                continue;
            case T_GT:
                if (dstfd != 1) {
                    fprintf(stderr, "Extra > or >> \n");
                    break;
                }
                if (gettoken(dstfile) != T_WORD) {
                    fprintf(stderr, "Illegal > or >> \n");
                    break;
                }
                dstfd = BADFD;
                append = FALSE;
                continue;
            case T_GTGT:
                if (dstfd != 1) {
                    fprintf(stderr, "Extra > or >>\n");
                    break;
                }
                if (gettoken(dstfile) != T_WORD) {
                    fprintf(stderr, "Illegal >or >>\n");
                    break;
                }
                dstfd = BADFD;
                append = TRUE;
                continue;
            case T_BAR:
            case T_AMP:
            case T_SEMI:
            case T_NL:
                argv[argc] = NULL;
                if (token == T_BAR) {
                    if (dstfd != 1) {
                        fprintf(stderr, "> or >> conflicts with |\n");
                        break;
                    }
                    term = command(waitpid, TRUE, &srcfd); // pipecmds are executed in reversed order
                }
                else
                    term = token;

                if (makepipe) {
                    if (pipe(pfd) == -1)
                        syserr("pipe");
                    *pipefdp = pfd[0];
                    dstfd = pfd[1];
                }
                if (term == T_AMP)
                    pid = invoke(argc, argv, srcfd,
                                 srcfile, dstfd, dstfile, append, TRUE);
                else
                    pid = invoke(argc, argv, srcfd, srcfile, dstfd, dstfile,
                                 append, FALSE);

                // wait(0);
                if (makepipe) close(dstfd);

                if (token != T_BAR)
                    *waitpid = pid;
                if (argc == 0 && (token != T_NL || srcfd > 1))
                    fprintf(stderr, "Missing command\n");
                while (--argc >= 0)
                    free(argv[argc]);
                return (term);
            case T_EOF:
                exit(0);
        }
    }
}

//////////////////////////////////////////////////////////
// You must implement the invoke function 					//
// return the process id									//
/////////////////////////////////////////////////////////
int invoke(int argc, char **argv, int srcfd, char *srcfile, int dstfd, char *dstfile,
          BOOLEAN append, BOOLEAN bckgrnd)
/* invoke simple command */
{
    int pid;
    if (argc == 0 || builtin(argc, argv, srcfd, dstfd)) {
        return (0);
    }
    if ((pid = fork()) < 0) {
        syserr("fork failed");
    }
    if (pid == 0) {
        redirect(srcfd, srcfile, dstfd, dstfile, append, bckgrnd);
        if (echo(argc, argv)) exit(0);
        execvp(argv[0], argv);
        syserr("exec failed");
    }
    if (!bckgrnd) wait(0);
    return (pid);
}

//////////////////////////////////////////////////////////
// The echo is handled independently to support redirection		//
/////////////////////////////////////////////////////////
static BOOLEAN echo(int argc, char *argv[])
{
    int i;
    char *arg;
    if (strcmp(argv[0], "echo") != 0) {
        return FALSE;
    }
    if (argc < 2) {
        fprintf(stderr, "Usage: echo ...\n");
        return TRUE;
    }
    for (i = 1; i < argc; i++) {
        if (argv[i][0] == '$') {
            arg = EVget(argv[i]+1);
            printf("%s", arg == NULL ? "" : arg);
        } else {
            if (argv[i][0] == '\'' && argv[i][strlen(argv[i])-1] == '\'') {
                strcpy(arg, argv[i]);
                strncpy(argv[i], arg+1, strlen(arg)-2);
                argv[i][strlen(arg)-2] = '\0';
            }
            printf("%s", argv[i]);
        }
        printf("%c", " \n"[i == argc-1]);
    }
    return TRUE;
}

//////////////////////////////////////////////////////////
// You must implement the redirect function 					//
/////////////////////////////////////////////////////////
static void redirect(int srcfd, char *srcfile, int dstfd, char *dstfile,
                    BOOLEAN append, BOOLEAN bckgrnd)
{				/* I/O redirection */
    // fprintf(stderr, "reading from %s(%d), writing to %s(%d)\n", srcfile, srcfd, dstfile, dstfd);
    if (srcfd == 0 && bckgrnd) {
        strcpy(srcfile, "/dev/null");
        close(0);
        srcfd = BADFD;
    }
    if (srcfd != 0) {
        close(0);
        if (srcfd == BADFD) {
            if (open(srcfile, O_RDONLY) < 0) {
                fprintf(stderr, "ERROR: failed to open %s\n", srcfile);
                exit(1);
            }
        } else {
            dup(srcfd);
            close(srcfd);
        }
    }
    if (dstfd != 1) {
        close(1);
        if (dstfd == BADFD) {
            if (append) { // >> dstfile
                if (open(dstfile, O_WRONLY | O_CREAT | O_APPEND, 0666) < 0) {
                    fprintf(stderr, "ERROR: failed to open %s\n", dstfile);
                    exit(1);
                }
            } else { // > dstfile
                if (open(dstfile, O_WRONLY | O_CREAT | O_TRUNC,  0666) < 0) {
                    fprintf(stderr, "ERROR: failed to create %s\n", dstfile);
                    exit(1);
                }
            }
        } else {
            dup(dstfd);
            close(dstfd);
        }
    }
}

void waitfor(int pid)
{				/* wait for child */

    int wpid, status;

    while ((wpid = wait(&status)) != pid && wpid != -1)
    statusprt(wpid, status);
    if (wpid == pid)
    statusprt(0, status);
}

//////////////////////////////////////////////////////////
// You must implement the builtin function 	to do				//
// the builtin command. 									//
// Note :: the builtin command should not invoke the linux standard //
// function.eg, cd should not invoke chdir						//
// return true if a builtin command ,false other wise				//
//////////////////////////////////////////////////////////
static BOOLEAN builtin(int argc, char *argv[], int srcfd, int dstfd)
                  /* do built-in */
{
    char *arg;
    int i;
    BOOLEAN ret = TRUE;
    if (strchr(argv[0], '=') != NULL) {
        asg(argc,argv);
    }
    else if (strcmp(argv[0], "cd") == 0) {
        if (argc == 1) arg = EVget("HOME");
        else arg = argv[1][0] == '$' ? EVget(argv[1]+1) : argv[1];
        arg = arg == NULL ? "." : arg;
        if (chdir(arg) < 0)
            fprintf(stderr, "cd: no such file or directory: %s\n", arg);
    }
    else if (strcmp(argv[0], "exit") == 0) {
        exit(0);
    }
    else if (strcmp(argv[0], "export") == 0) {
        export(argc, argv);
    }
    else if (strcmp(argv[0], "pwd") == 0) {
        if ((arg = getcwd(NULL, 0)) == NULL) {
            syserr("pwd failed");
        }
        printf("%s\n", arg);
    }
    else if (strcmp(argv[0], "set") == 0) {
        set(argc, argv);
    }
    else if (strcmp(argv[0], "unset") == 0) {
        unset(argc, argv);
    }
    else {
        ret = FALSE;
    }
    return (ret);
}
