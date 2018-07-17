#line 1 "E:/Embedded Systems Course/PIC/PIC_Motor_Drive/code.c"
void forward(){
portb.b0=1;
portb.b1=0;
portb.b2=1;
portb.b3=0;
}
void reverse(){
portb.b0=0;
portb.b1=1;
portb.b2=0;
portb.b3=1;
}
void right(){
portb.b0=1;
portb.b1=0;
portb.b2=0;
portb.b3=0;
}
void left(){
portb.b0=0;
portb.b1=0;
portb.b2=1;
portb.b3=0;
}
void stop(){
portb.b0=0;
portb.b1=0;
portb.b2=0;
portb.b3=0;
}

void main() {
trisb=0;
trisd=1;
portb=0;
portd=0;
for(;;)
{
if (portd.rd0==1)
{
forward();
}
else if (portd.rd1==1)
{
reverse();
}
else if (portd.rd2==1)
{
right();
}
else if (portd.rd3==1)
{
left();
}
else{stop();}
}
}
