// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// if R0 = 0 or R1 = 0, sum = 0, stop
// otherwise, i = R1

// check if R0 = 0
@R0
D=M
@STOP
D;JEQ
// CHECK if R1 = 0
@R1
D=M
@STOP
D;JEQ


@R1 // go to register 1
D=M // D = RAM[1]
@i // create an index
M=D // RAM[i] = D, e.g. how many times to add R0 to itself

@sum // create a sum and zero it out
M=0 // RAM[sum] = 0

(LOOP)
// first, add R0 to sum
@R0
D=M
@sum
M=M+D // sum = sum + d (RAM[0])
// next, decrement idx
@i
M=M-1 // decrement idx
D=M
@STOP
D;JEQ // if i = 0, stop
@LOOP // otherwise, loop back around
0;JMP
(STOP)
@sum
D=M
@R2
M=D
(END)
@END
0;JMP
