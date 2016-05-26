#include <stdio.h>

double piFracMethod(double count, double currentPI, double k)
{
	while (count > 0)
	{
		currentPI = currentPI - (4 / (k + 2)) + (4 / (k + 4));
		k+=4;
		count--;
	}
	return currentPI;
}

int main()
{
	printf("%.28f\n",piFracMethod(500000000000,4,1));
	return 0;
}

