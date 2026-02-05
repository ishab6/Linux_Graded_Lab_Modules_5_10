# Question 9 – Zombie Process Prevention

This C program demonstrates how to prevent zombie processes.

- Multiple child processes are created.
- The parent uses `wait()` to collect child exit statuses.
- Parent prints PID of each cleaned child.
- No zombie processes remain.
