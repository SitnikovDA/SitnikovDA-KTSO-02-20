Сначала программа создает handle и канал права на который доступны каждому:
int fd;
int len;
char buf[BUFSIZE];
if (mkfifo(NAMEDPIPE_NAME, 0777))
{
perror("mkfifo");
return 1;
}



После этого бесконечный цикл начинается:
{
memset(buf, '\0', BUFSIZE);
if ((len = read(fd, buf, BUFSIZE - 1)) <= 0)
{
error("read error");
close(fd);
remove(NAMEDPIPE_NAME);
return 0;
}
printf("Incoming message (%d): %s\n", len, buf);
} while (1);


Если программа получает сообщение:
if ((len = read(fd, buf, BUFSIZE - 1)) <= 0)</ br> Число характеристик выводиться и печает само себя

