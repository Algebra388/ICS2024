#include <stdio.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
int main()
{
    int fd = open("1.txt", O_RDWR | O_CREAT | O_TRUNC, 0777);
    printf("fd = %d\n", fd);
    //printf("%s\n", error);
    write(fd, "12345\n", 6);
    return 0;
}