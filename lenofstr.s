;Find the length of the string character.

		AREA my_code,CODE,READONLY
		ENTRY
MAIN	ldr r0,=String
		;ldr r0,[r0]
loop	ldrb r2,[r0]
		cmp r2,#0
		beq l
		add r0,r0,#1
		add r1,r1,#1
		b loop	
		
l		mov r0,#0x40000000
		str r1,[r0]
STOP	b STOP
	
String 	DCB "My name is VISHAK and harry potter",0
		end