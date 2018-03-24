#include <stdio.h>

int sum;

extern void add(int a, int b);

void main(){
	int a,b;
	a=3,b=4;
	add(a,b);
	printf("sum = %d\n",sum);
}
