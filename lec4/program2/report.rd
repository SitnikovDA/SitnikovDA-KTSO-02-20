Программа создает массив дескрипторов файла.
После этого программа проверит корректность ввода и вывода в случае ошибки:
if (argc != 2)
and
if (pipe(pipefd) == -1)


Затем программа вызовет функцию fork() дочернего процесса, PID этого процесса. Программа проверит новый поступивший PID. ID дочернего процесса приравнивается к нулю. Корневой процесс выведет:
close(pipefd[0]);
write(pipefd[1], argv[1], strlen(argv[1]));
close(pipefd[1]);
wait(NULL);
exit(EXIT_SUCCESS);


Дочерний процесс получит информацию:
if (pid == 0)
{
close(pipefd[1]);
while (read(pipefd[0], & buf, 1) > 0)
write(STDOUT_FILENO, & buf, 1);
write(STDOUT_FILENO, "\n", 1);
close(pipefd[0]);
_exit(EXIT_SUCCESS);


Сообщения по процессу проходят по общему каналу.
