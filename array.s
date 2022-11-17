      AREA program,CODE,READONLY
      ENTRY
      MOV R0,#5              ; Initializing counter register
      LDR R1,=array          ; Loading base address to a register
	  LDR R3,=0X40000000
loop  LDR R2,[R1],#4         ; Loading value from array and updating(increment) the address
      ;ADD R3,R3,R2           ; Sum is stored in R3 register
      SUB R0,R0,#1           ; Decrementing counter value
      CMP R0,#00             ; Checking counter value
      BNE loop
array DCD 0x00000001,0x000000AF,0x00000002,0x00000DC,0x000001FB
      END