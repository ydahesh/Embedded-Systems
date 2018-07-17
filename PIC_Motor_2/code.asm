
_forward:

;code.c,1 :: 		void forward(){
;code.c,2 :: 		portb.b0=0;
	BCF        PORTB+0, 0
;code.c,3 :: 		portb.b1=1;
	BSF        PORTB+0, 1
;code.c,4 :: 		portb.b2=0;
	BCF        PORTB+0, 2
;code.c,5 :: 		portb.b3=1;
	BSF        PORTB+0, 3
;code.c,6 :: 		}
L_end_forward:
	RETURN
; end of _forward

_reverse:

;code.c,7 :: 		void reverse(){
;code.c,8 :: 		portb.b0=1;
	BSF        PORTB+0, 0
;code.c,9 :: 		portb.b1=0;
	BCF        PORTB+0, 1
;code.c,10 :: 		portb.b2=1;
	BSF        PORTB+0, 2
;code.c,11 :: 		portb.b3=0;
	BCF        PORTB+0, 3
;code.c,12 :: 		}
L_end_reverse:
	RETURN
; end of _reverse

_stop:

;code.c,13 :: 		void stop(){
;code.c,14 :: 		portb.b0=0;
	BCF        PORTB+0, 0
;code.c,15 :: 		portb.b1=0;
	BCF        PORTB+0, 1
;code.c,16 :: 		portb.b2=0;
	BCF        PORTB+0, 2
;code.c,17 :: 		portb.b3=0;
	BCF        PORTB+0, 3
;code.c,18 :: 		}
L_end_stop:
	RETURN
; end of _stop

_main:

;code.c,20 :: 		void main() {
;code.c,21 :: 		trisb.b0=0;
	BCF        TRISB+0, 0
;code.c,22 :: 		trisb.b1=0;
	BCF        TRISB+0, 1
;code.c,23 :: 		trisb.b2=0;
	BCF        TRISB+0, 2
;code.c,24 :: 		trisb.b3=0;
	BCF        TRISB+0, 3
;code.c,25 :: 		trisd.rd0=1;
	BSF        TRISD+0, 0
;code.c,26 :: 		trisd.rd1=1;
	BSF        TRISD+0, 1
;code.c,27 :: 		portb.b0=0;
	BCF        PORTB+0, 0
;code.c,28 :: 		portb.b1=0;
	BCF        PORTB+0, 1
;code.c,29 :: 		portb.b2=0;
	BCF        PORTB+0, 2
;code.c,30 :: 		portb.b3=0;
	BCF        PORTB+0, 3
;code.c,31 :: 		portd.rd0=0;
	BCF        PORTD+0, 0
;code.c,32 :: 		portd.rd1=0;
	BCF        PORTD+0, 1
;code.c,33 :: 		for(;;)
L_main0:
;code.c,35 :: 		if (portd.rd0==1)
	BTFSS      PORTD+0, 0
	GOTO       L_main3
;code.c,37 :: 		forward();
	CALL       _forward+0
;code.c,38 :: 		}
	GOTO       L_main4
L_main3:
;code.c,39 :: 		else if (portd.rd1==1)
	BTFSS      PORTD+0, 1
	GOTO       L_main5
;code.c,41 :: 		reverse();
	CALL       _reverse+0
;code.c,42 :: 		}
	GOTO       L_main6
L_main5:
;code.c,43 :: 		else{stop();}
	CALL       _stop+0
L_main6:
L_main4:
;code.c,44 :: 		}
	GOTO       L_main0
;code.c,45 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
