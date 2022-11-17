	AREA myprog,CODE,READONLY
	ENTRY
Main
	LDR R0,=0x40000000
	LDR R1,[R0]
	LDR R3,=VAL ;val that is its address 0x0000001C is storing in R3
	LDR R2,=0x40000004
	STR R1,[R2]
	STR R3,[R2] ; storing value of val in r3 the address is 0x4000001C
STOP B STOP
VAL DCD &1000 ;storing 1000 in val variable
	ALIGN
	END ;the code is storing address of val 0000001C in R3 and at address 0x40000004