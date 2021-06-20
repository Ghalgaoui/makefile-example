#include <stdio.h>
#include <stdlib.h>

int fact(int n)
{
	if (n >= 1)
		return n * fact(n -1);
	else
		return 1;
}

int main(void)
{
	int number = 0;
	printf("Enter number \n");
	scanf("%d", &number);
	printf("Factorial of number %d = %d\n", number, fact(number));
	return 0;
}
