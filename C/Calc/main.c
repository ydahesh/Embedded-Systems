# include <stdio.h>

int  main()
{
    int x,y,result;
    char z;
    printf("please enter the first number: ");
    scanf("%d",&x);
    printf("please enter the second number: ");
    scanf("%d",&y);
    printf("please enter the operation: ");
    getchar();
    scanf("%c",&z);
    if (z=='+')
    {
        result=x+y;
    }
    if (z=='-')
    {
        result=x-y;
    }
    if (z=='/')
    {
        result=x/y;
    }
    if (z=='*')
    {
        result=x*y;
    }
    printf("the result is: %d",result);

}
