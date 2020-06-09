// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP // get SP - 1
D=M
D=D-1
A=D
D=M
@R14 // store SP - 1 in R14
M=D
@SP // get SP - 2
D=M
D=D-1
D=D-1
A=D
D=M
@R14 // add (SP - 2) + (SP - 1)
M=M+D
D=M // store R14
@SP // store R14 in SP - 2
M=M-1
M=M-1
A=M
M=D
@SP // increment SP to top of stack
M=M+1