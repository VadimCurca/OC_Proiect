; R1 = a
; R2 = b
; R3 = r
; R4 = i

; !!! BZ = MOD !!!

	ADDI R1, R1, 25
	ADDI R2, R2, 10

L1:	SR  R3, R1, R2  ; !! R3 = R1 mod R2
	ADDI R1, R2, 0
	ADDI R2, R3, 0
L2: BZ 	 R2, STOP   ; go to stop
	NOP
L2: BZ R7, L1		; continue
	NOP

STOP: BZ R7, STOP
	  NOP
