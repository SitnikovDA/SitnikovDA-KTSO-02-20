Вначале программа вызывает fork() функцию, которая создает дочерний процесс:
int pid = fork();


Затем программа выводит PID процессов, в котором он расположен:
printf("my pid =%i, returned pid =%i\n", getpid(), pid);
