#include <stdio.h>

void swap(int *x,int *y)
{
    int t;
    t=*x;
    *x=*y;
    *y=t;
}

int main()
{
    int a,b;
    printf("enter first num: ");
    scanf("%d",&a);
    printf("enter second num: ");
    scanf("%d",&b);
    printf("%d",&a);
    printf("\n%d",&b);
    //printf("Before swap a= %d and b= %d",a,b);
    //swap(&a,&b);
    //printf("\nAfter swap a= %d and b= %d",a,b);
    return 0;
}
