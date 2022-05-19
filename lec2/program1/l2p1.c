#include<stdlib.h>
#include<stdio.h>
#include<errno.h>

void main()
{
	int *array = NULL;
	unsigned length, i;

	printf("Enter length of array: ");
	scanf("%d", &length);

	if (length > 0)
       	{
		//При выделении памяти возвращается указатель.
		//Если память не была выделена, то возвращается NULL
		if ((array = (int*) malloc(length * sizeof(int))) != NULL)
			for (i = 0; i < length; i++)
				array[i] = i * i;
	       	else
	       		if(errno == ENOMEM)
			{
				perror("Malloc error");
				exit(2);
			}
			else
				exit(3);
	}

	//Если переменная была инициализирована, то очищаем её
	if (array != NULL)
		free(array);
	
	return;
}
