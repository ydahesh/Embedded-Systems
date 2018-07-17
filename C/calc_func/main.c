#include <stdio.h>
#include <math.h>

int main()
{
    int a,b,c;
    float z1=0,z2=0,z3=0;
    printf("\nplease enter a: ");
    scanf("%d",&a);
    printf("\nplease enter b: ");
    scanf("%d",&b);
    printf("\nplease enter c: ");
    scanf("%d",&c);
    z1=4*a*c;
    z2=b*b;
    z2-=z1;
    z2=sqrt(z2);
    z1=a*2;
    z3=z2/z1;
    printf("\nthe result is: %f",z3);
    return 0;
}
