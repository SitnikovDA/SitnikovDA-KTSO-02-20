В самом начале программа получает сигнал от пользователя и обрабатывает его.
Затем счетчик запускается:
int counter = 0;


Также в программе две действующих функции - handler1:
void handler1(int sig)
{
counter++;
printf("counter = %d\n", counter);
/* Flushes the printed string to stdout */
fflush(stdout);
kill(pid, SIGUSR1);
}


И функция handler2:
void handler2(int sig)
{
counter += 3;
printf("counter = %d\n", counter);
exit(0);
}

Обработка: Программа привязывает первую функцию обработки к текущему процессу.
Далее, если процесс окажется дочерним, функция handler2 обработает сигнал.
