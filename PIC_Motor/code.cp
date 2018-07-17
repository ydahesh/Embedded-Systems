#line 1 "E:/Embedded Systems Course/PIC/PIC_Motor/code.c"
void main() {
trisb.b0=0;
trisb.b1=1;
portb.b0=0;
portb.b1=0;
for(;;)
{
if (portb.b1==1)
{
portb.b0=1;
}
else if (portb.b1==0)
{
portb.b0=0;
}
}
}
