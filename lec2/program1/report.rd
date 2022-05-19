Определяем длинну массива
printf("Enter length of array: ");
scanf("%d", &length);


Выделяем память под массив. Если память не выделяется, то функция malloc выводит NULL:
if ((array = (int * ) malloc(length * sizeof(int))) != NULL)


Если всё выполнено без ошибок, то программа очистит выделенную память:
if (array != NULL)
{
free(array);
}
