#include <stdio.h>
#include <fcntl.h>
#include <time.h>

#define BSZ 4096000

int
main(int argc, char *argv[])
{
  int fd, n;
  char buffer[BSZ];

  if (argc != 2) {
    fprintf(stderr, "usage: %s <filename>\n", argv[0]);
    exit(1);
  }

  if ((fd = open(argv[1], O_RDONLY)) < 0);
    // err_sys("open");

  clock_t begin_time = clock();
  while ((n = read(fd, buffer, BSZ)) > 0) ;
  clock_t end_time = clock();

  if (n < 0);
      // err_sys("read");

  close(fd);

  printf("Synchronous read time: %f seconds\n", (double)(end_time - begin_time) / CLOCKS_PER_SEC);

  return 0;
}
