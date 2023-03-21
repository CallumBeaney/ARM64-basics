.global _start

_start:
	// LDR = load Into Register
	ldr r0, =list
	ldr r1, [r0] // get the value at the first location of list in memory
	ldr r2, [r0,#4] // first element of r0 + 4 places to get to location of Next value in memory. Add 8 or 12 to move 2 or 3 spaces ahead etc
	ldr r3, [r0,#4]! // pre-increment: increment r0 by 4 BEFORE getting value with a pre-increment 
	ldr r4, [r0],#8 // post-increment: get the value at r0 and THEN move by increment positions
	
.data
list: 
	.word 1,2,3,4,-4
