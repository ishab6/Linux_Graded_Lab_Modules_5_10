#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <sys/wait.h>

void handle_sigterm(int sig) {
    printf("\nParent received SIGTERM. Performing cleanup...\n");
}

void handle_sigint(int sig) {
    printf("\nParent received SIGINT. Exiting now.\n");
    exit(0);
}

int main() {
    pid_t child1, child2;

    // Set up signal handlers
    signal(SIGTERM, handle_sigterm);
    signal(SIGINT, handle_sigint);

    // Child 1: sends SIGTERM after 5 seconds
    child1 = fork();
    if (child1 == 0) {
        sleep(5);
        kill(getppid(), SIGTERM);
        exit(0);
    }

    // Child 2: sends SIGINT after 10 seconds
    child2 = fork();
    if (child2 == 0) {
        sleep(10);
        kill(getppid(), SIGINT);
        exit(0);
    }

    // Parent runs indefinitely
    printf("Parent running with PID: %d\n", getpid());
    while (1) {
        pause(); // Wait for signals
    }

    return 0;
}
