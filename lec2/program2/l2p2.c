#include<stdio.h>
#include<math.h>
#include<errno.h> // содержит объявления для errno

int main(void)
{
	asin(10.0); // приведет  к возникновению ошибки области определения

	if(errno == EDOM)
		perror("Programm finished with error");
	
	return 0;
}
