
_forward:

;code.c,1 :: 		void forward(){
;code.c,2 :: 		portb.b0=1;
	BSF        PORTB+0, 0
;code.c,3 :: 		portb.b1=0;
	BCF        PORTB+0, 1
;code.c,4 :: 		portb.b2=1;
	BSF        PORTB+0, 2
;code.c,5 :: 		portb.b3=0;
	BCF        PORTB+0, 3
;code.c,6 :: 		}
L_end_forward:
	RETURN
; end of _forward

_reverse:

;code.c,7 :: 		void reverse(){
;code.c,8 :: 		portb.b0=0;
	BCF        PORTB+0, 0
;code.c,9 :: 		portb.b1=1;
	BSF        PORTB+0, 1
;code.c,10 :: 		portb.b2=0;
	BCF        PORTB+0, 2
;code.c,11 :: 		portb.b3=1;
	BSF        PORTB+0, 3
;code.c,12 :: 		}
L_end_reverse:
	RETURN
; end of _reverse

_right:

;code.c,13 :: 		void right(){
;code.c,14 :: 		portb.b0=1;
	BSF        PORTB+0, 0
;code.c,15 :: 		portb.b1=0;
	BCF        PORTB+0, 1
;code.c,16 :: 		portb.b2=0;
	BCF        PORTB+0, 2
;code.c,17 :: 		portb.b3=0;
	BCF        PORTB+0, 3
;code.c,18 :: 		}
L_end_right:
	RETURN
; end of _right

_left:

;code.c,19 :: 		void left(){
;code.c,20 :: 		portb.b0=0;
	BCF        PORTB+0, 0
;code.c,21 :: 		portb.b1=0;
	BCF        PORTB+0, 1
;code.c,22 :: 		portb.b2=1;
	BSF        PORTB+0, 2
;code.c,23 :: 		portb.b3=0;
	BCF        PORTB+0, 3
;code.c,24 :: 		}
L_end_left:
	RETURN
; end of _left

_stop:

;code.c,25 :: 		void stop(){
;code.c,26 :: 		portb.b0=0;
	BCF        PORTB+0, 0
;code.c,27 :: 		portb.b1=0;
	BCF        PORTB+0, 1
;code.c,28 :: 		portb.b2=0;
	BCF        PORTB+0, 2
;code.c,29 :: 		portb.b3=0;
	BCF        PORTB+0, 3
;code.c,30 :: 		}
L_end_stop:
	RETURN
; end of _stop

_main:

;code.c,32 :: 		void main() {
;code.c,33 :: 		trisb=0;
	CLRF       TRISB+0
;code.c,34 :: 		trisd=1;
	MOVLW      1
	MOVWF      TRISD+0
;code.c,35 :: 		portb=0;
	CLRF       PORTB+0
;code.c,36 :: 		portd=0;
	CLRF       PORTD+0
;code.c,37 :: 		for(;;)
L_main0:
;code.c,39 :: 		if (portd.rd0==1)
	BTFSS      PORTD+0, 0
	GOTO       L_main3
;code.c,41 :: 		forward();
	CALL       _forward+0
;code.c,42 :: 		}
	GOTO       L_main4
L_main3:
;code.c,43 :: 		else if (portd.rd1==1)
	BTFSS      PORTD+0, 1
	GOTO       L_main5
;code.c,45 :: 		reverse();
	CALL       _reverse+0
;code.c,46 :: 		}
	GOTO       L_main6
L_main5:
;code.c,47 :: 		else if (portd.rd2==1)
	BTFSS      PORTD+0, 2
	GOTO       L_main7
;code.c,49 :: 		right();
	CALL       _right+0
;code.c,50 :: 		}
	GOTO       L_main8
L_main7:
;code.c,51 :: 		else if (portd.rd3==1)
	BTFSS      PORTD+0, 3
	GOTO       L_main9
;code.c,53 :: 		left();
	CALL       _left+0
;code.c,54 :: 		}
	GOTO       L_main10
L_main9:
;code.c,55 :: 		else{stop();}
	CALL       _stop+0
L_main10:
L_main8:
L_main6:
L_main4:
;code.c,56 :: 		}
	GOTO       L_main0
;code.c,57 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
