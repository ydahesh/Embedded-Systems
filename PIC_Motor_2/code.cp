#line 1 "E:/Embedded Systems Course/PIC/PIC_Motor_2/code.c"
void forward(){
portb.b0=0;
portb.b1=1;
portb.b2=0;
portb.b3=1;
}
void reverse(){
portb.b0=1;
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
trisb.b0=0;
trisb.b1=0;
trisb.b2=0;
trisb.b3=0;
trisd.rd0=1;
trisd.rd1=1;
portb.b0=0;
portb.b1=0;
portb.b2=0;
portb.b3=0;
portd.rd0=0;
portd.rd1=0;
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
else{stop();}
}
}
