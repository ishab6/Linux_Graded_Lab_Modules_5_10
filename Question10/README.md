# Question 10 – Signal Handling in C

This program demonstrates signal handling in a parent process.

- The parent process sets up handlers for SIGTERM and SIGINT.
- Child 1 sends SIGTERM after 5 seconds. The parent prints a cleanup message.
- Child 2 sends SIGINT after 10 seconds. The parent exits gracefully.
- The program uses fork(), kill(), signal(), and pause() for signal handling.
