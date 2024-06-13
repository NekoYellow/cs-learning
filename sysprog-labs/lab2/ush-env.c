/* ush-env.c */
/* environment functions for ush */

#include "ush.h"
#include "ush-env.h"
#include "ush-prt.h"

// this data structure is used to store the 
// environment assignment information.
struct varslot  /* symbol table slot */
{
    char *name;
    char *val;
    BOOLEAN exported;
}
sym[MAXVAR];


BOOLEAN assign(char **p, char *s)
{				/* initialize name or value */
    int size;

    size = strlen(s) + 1;
    if (*p == NULL) {
        if ((*p = malloc(size)) == NULL)
            return (FALSE);
    }
    else if ((*p = realloc(*p, size)) == NULL)
        return (FALSE);
    strcpy(*p, s);
    return (TRUE);
}

//////////////////////////////////////////////////////////
// You must implement the invoke function 					//
// do the environment export								       //
//////////////////////////////////////////////////////////
BOOLEAN EVexport(char *name)
{				/* set variable to be exported */    
    struct varslot * v;
    if ((v = find(name)) == NULL) return(FALSE);   
    if (v->name == NULL) {
        if (!assign(&v->name, name) || !assign(&v->val, "")) {
            return (FALSE);
        }
    }
    return (v->exported = TRUE);
}


struct varslot *find(char *name)
{				/* find symbol table entry */

    int i;
    struct varslot *v;

    v = NULL;
    for (i = 0; i < MAXVAR; i++)
    if (sym[i].name == NULL) {
        if (v == NULL)
        v = &sym[i];
    }
    else if (strcmp(sym[i].name, name) == 0) {
        v = &sym[i];
        break;
    }
    return (v);
}

//////////////////////////////////////////////////////////
// You must implement the invoke function 					//
// do the environment set								       //
//////////////////////////////////////////////////////////

BOOLEAN EVset(char *name, char *val)
{				/* add name & value to environment */
    struct varslot * v;
    if ((v = find(name)) == NULL) {
        return (FALSE);
    }
    return (assign(&v->name, name) && assign(&v->val, val));
}


BOOLEAN EVinit()
{				/* initialize symbol table from
                   environment */
    int i, namelen;
    char name[100];

    for (i = 0; environ[i] != NULL; i++) {
        namelen = strcspn(environ[i], "=");
        strncpy(name, environ[i], namelen);
        name[namelen] = '\0';
        if (strcmp(name, "HOME") != 0 && strcmp(name, "PATH") != 0)
            continue; // skip unnecessary variables
        if (!EVset(name, &environ[i][namelen + 1]) || !EVexport(name))
            return (FALSE);
    }
    return (TRUE);
}


char *EVget(char *name)
{				/* get value of variable */
    struct varslot *v;

    if ((v = find(name)) == NULL || v->name == NULL)
        return (NULL);
    return (v->val);
}

void EVprint()
{				/* printf environment */
    int i;

    for (i = 0; i < MAXVAR; i++)
    if (sym[i].name != NULL)
        printf("%3s %s=%s\n", sym[i].exported ? "[E]" : "",
           sym[i].name, sym[i].val);
}

//////////////////////////////////////////////////////////
// You must implement the invoke function 					//
// do the environment assignment						       //
//////////////////////////////////////////////////////////
void asg(int argc, char *argv[])
{				/* assignment command */
    char *part;
    if (argc != 1) {
        fprintf(stderr, "Usage: name=value\n");
        return;
    }
    part = strstr(argv[0], "=");
    if (part == NULL) {
        fprintf(stderr, "Usage: name=value\n");
        return;
    }
    *part = '\0';
    if (!EVset(argv[0], ++part)) {
        fprintf(stderr, "Assignment failed\n");
    }
}

//////////////////////////////////////////////////////////
// You must implement the invoke function 					//
// do the environment assignment						       //
//////////////////////////////////////////////////////////
void set(int argc, char *argv[])
{				/* set command */
    int i;
    if (argc == 1) {
        EVprint();
        return;
    }
    for (i = 1; i < argc; i++) {
        // printf("%s\n", *(argv+i));
        asg(1, argv+i);
    }
}

void unset(int argc,char *argv[])
{				/* unset command */
    int i;
    struct varslot *v;
    if (argc < 2) {
        fprintf(stderr, "Usage: unset name1 name2 ...\n");
        return;
    }
    for (i = 1; i < argc; i++) {
        v = find(argv[i]);
        if (v != NULL) {
            free(v->name);
            free(v->val);
            v->name = v->val = NULL;
            v->exported = FALSE;
        }
    }
}

void export(int argc, char *argv[])
{				/* export command */
    int i;

    if (argc == 1) {
        set(argc, argv);
        return;
    }
    for (i = 1; i < argc; i++)
    if (!EVexport(argv[i])) {
        printf("Cannot export %s\n", argv[i]);
        return;
    }
}
