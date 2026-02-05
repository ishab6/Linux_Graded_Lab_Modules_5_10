#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    pid_t pid;
    int i;

    for (i = 0; i < 3; i++) {
        pid = fork();

        if (pid == 0) {
            printf("Child created with PID: %d\n", getpid());
            exit(0);
        } else if (pid < 0) {
            perror("Fork failed");
            exit(1);
        }
    }

    for (i = 0; i < 3; i++) {
        pid = wait(NULL);
        printf("Parent cleaned child with PID: %d\n", pid);
    }

    return 0;
}
