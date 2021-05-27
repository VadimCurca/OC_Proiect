; 	initial values
; 	R1 fib 1
; 	R2 fib 2
; 	R3 n

;	R4 iterator
;	R3 aux (R1+R2)
;	R6 n - i

	ADDI	R1,R1,1
	ADDI	R2,R2,1
	ADDI	R5,R5,8


	ADDI 	R5,R5,-2
L1:	ADDI	R4,R4,1
	ADD 	R3,R1,R2
	ADDI	R1,R2,0
	ADDI	R2,R3,0
	SUB		R6,R5,R4
L3:	BZ      R6,L3	;go to stop
	NOP
	BZ		R0,L1 	;continue
	NOP
L2:	BZ 		R0,L3	;loop til the end
	NOP