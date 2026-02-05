# Question 8 – bg_move.sh

This script moves all files from a given directory into a backup subdirectory using background processes.

Each move operation is executed in the background using &, and the PID of each process is displayed using $!. The script waits for all background processes to finish using the wait command.
