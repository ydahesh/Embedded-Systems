
_main:

;code.c,1 :: 		void main() {
;code.c,2 :: 		trisb.b0=0;
	BCF        TRISB+0, 0
;code.c,3 :: 		trisb.b1=1;
	BSF        TRISB+0, 1
;code.c,4 :: 		portb.b0=0;
	BCF        PORTB+0, 0
;code.c,5 :: 		portb.b1=0;
	BCF        PORTB+0, 1
;code.c,6 :: 		for(;;)
L_main0:
;code.c,8 :: 		if (portb.b1==1)
	BTFSS      PORTB+0, 1
	GOTO       L_main3
;code.c,10 :: 		portb.b0=1;
	BSF        PORTB+0, 0
;code.c,11 :: 		}
	GOTO       L_main4
L_main3:
;code.c,12 :: 		else if (portb.b1==0)
	BTFSC      PORTB+0, 1
	GOTO       L_main5
;code.c,14 :: 		portb.b0=0;
	BCF        PORTB+0, 0
;code.c,15 :: 		}
L_main5:
L_main4:
;code.c,16 :: 		}
	GOTO       L_main0
;code.c,17 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
