// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed.
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

// total column count
@8191
D=A
@ncol
M=D

(INPUT_LOOP)
@KBD
D=M
@CLEAR
D;JEQ
@FILL
D;JNE

(FILL)
@ncol
D=M // d = ncol
@i // initialize i to ncol
M=D // i = ncol
(FILL_LOOP)
@i
D=M // D = i
@SCREEN
D=A+D // D = @SCREEN + i
@addr
M=D
A=M
M=-1
@i
M=M-1 // decrement i
@i
D=M
@FILL_LOOP
D;JGE
@INPUT_LOOP
0;JMP

(CLEAR)
@ncol
D=M // d = ncol
@i // initialize i to ncol
M=D // i = ncol
(CLEAR_LOOP)
@i
D=M // D = i
@SCREEN
D=A+D // D = @SCREEN + i
@addr
M=D
A=M
M=0
@i
M=M-1 // decrement i
@i
D=M
@CLEAR_LOOP
D;JGE
@INPUT_LOOP
0;JMP

(END)
@END
0;JMP
