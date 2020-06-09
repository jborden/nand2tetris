@begin_program
0;JMP
// comparison fn header
(eq_fn)
@R14 // store difference in D
D=M
@eq_fn_set_true
D;JEQ
@SP // store default result (false) in SP - 1
D=M
D=D-1
A=D
M=0 // SP - 1 = 0
@R13 // R13 is where we left off
A=M
0;JMP
(eq_fn_set_true) // this is when the comp evals to true
@SP
D=M
D=D-1
A=D
M=-1
@R13 // R13 is where we left off
A=M
0;JMP
(gt_fn)
@R14 // store difference in D
D=M
@gt_fn_set_true
D;JGT
@SP // store default result (false) in SP - 1
D=M
D=D-1
A=D
M=0 // SP - 1 = 0
@R13 // R13 is where we left off
A=M
0;JMP
(gt_fn_set_true) // this is when the comp evals to true
@SP
D=M
D=D-1
A=D
M=-1
@R13 // R13 is where we left off
A=M
0;JMP
(lt_fn)
@R14 // store difference in D
D=M
@lt_fn_set_true
D;JLT
@SP // store default result (false) in SP - 1
D=M
D=D-1
A=D
M=0 // SP - 1 = 0
@R13 // R13 is where we left off
A=M
0;JMP
(lt_fn_set_true) // this is when the comp evals to true
@SP
D=M
D=D-1
A=D
M=-1
@R13 // R13 is where we left off
A=M
0;JMP
// end comparison fn header
(push_constant_conserved_fn)
@SP
A=M
M=D
@SP
M=M+1
@R13
A=M
0;JMP
(begin_program)
// push constant 10
@current-pos15252
D=A
@R13
M=D
@10
D=A
@push_constant_conserved_fn
0;JMP
(current-pos15252)
// end push constant 10
// pop local 0
@SP
D=M
D=D-1
M=D
@SP
A=M
D=M
@R14
M=D
@LCL
D=M
@R15
M=D
@0
D=A
@R15
D=D+M
A=D
D=A
@R15
M=D
@R14
D=M
@R15
A=M
M=D
// end pop local 0
// push constant 21
@current-pos15253
D=A
@R13
M=D
@21
D=A
@push_constant_conserved_fn
0;JMP
(current-pos15253)
// end push constant 21
// push constant 22
@current-pos15254
D=A
@R13
M=D
@22
D=A
@push_constant_conserved_fn
0;JMP
(current-pos15254)
// end push constant 22
// pop argument 2
@SP
D=M
D=D-1
M=D
@SP
A=M
D=M
@R14
M=D
@ARG
D=M
@R15
M=D
@2
D=A
@R15
D=D+M
A=D
D=A
@R15
M=D
@R14
D=M
@R15
A=M
M=D
// end pop argument 2
// pop argument 1
@SP
D=M
D=D-1
M=D
@SP
A=M
D=M
@R14
M=D
@ARG
D=M
@R15
M=D
@1
D=A
@R15
D=D+M
A=D
D=A
@R15
M=D
@R14
D=M
@R15
A=M
M=D
// end pop argument 1
// push constant 36
@current-pos15255
D=A
@R13
M=D
@36
D=A
@push_constant_conserved_fn
0;JMP
(current-pos15255)
// end push constant 36
// pop this 6
@SP
D=M
D=D-1
M=D
@SP
A=M
D=M
@R14
M=D
@THIS
D=M
@R15
M=D
@6
D=A
@R15
D=D+M
A=D
D=A
@R15
M=D
@R14
D=M
@R15
A=M
M=D
// end pop this 6
// push constant 42
@current-pos15256
D=A
@R13
M=D
@42
D=A
@push_constant_conserved_fn
0;JMP
(current-pos15256)
// end push constant 42
// push constant 45
@current-pos15257
D=A
@R13
M=D
@45
D=A
@push_constant_conserved_fn
0;JMP
(current-pos15257)
// end push constant 45
// pop that 5
@SP
D=M
D=D-1
M=D
@SP
A=M
D=M
@R14
M=D
@THAT
D=M
@R15
M=D
@5
D=A
@R15
D=D+M
A=D
D=A
@R15
M=D
@R14
D=M
@R15
A=M
M=D
// end pop that 5
// pop that 2
@SP
D=M
D=D-1
M=D
@SP
A=M
D=M
@R14
M=D
@THAT
D=M
@R15
M=D
@2
D=A
@R15
D=D+M
A=D
D=A
@R15
M=D
@R14
D=M
@R15
A=M
M=D
// end pop that 2
// push constant 510
@current-pos15258
D=A
@R13
M=D
@510
D=A
@push_constant_conserved_fn
0;JMP
(current-pos15258)
// end push constant 510
// pop temp 6
@SP
D=M
D=D-1
M=D
@SP
A=M
D=M
@R14
M=D
@6
D=A
@5
D=D+A
@R15
M=D
@R14
D=M
@R15
A=M
M=D
// end pop temp 6
@LCL
D=M
@R15
M=D
@0
D=A
@R15
D=D+M
A=D
D=M
@SP
A=M
M=D
@SP
D=M
D=D+1
M=D
// end push local 0
@THAT
D=M
@R15
M=D
@5
D=A
@R15
D=D+M
A=D
D=M
@SP
A=M
M=D
@SP
D=M
D=D+1
M=D
// end push that 5
// add
@SP // set D to SP - 2
D=M
D=D-1
D=D-1
A=D
D=M // end set D to SP - 2
@R14 // store SP - 1 in R14
M=D
@SP // set D to SP - 1
D=M
D=D-1
A=D
D=M // end set D to SP-1
@R14
M=M+D // add operand compute
D=M // store R14
@SP // store R14 in SP - 2
M=M-1
M=M-1
A=M
M=D
@SP // increment SP to top of stack
M=M+1
// end add
@ARG
D=M
@R15
M=D
@1
D=A
@R15
D=D+M
A=D
D=M
@SP
A=M
M=D
@SP
D=M
D=D+1
M=D
// end push argument 1
// sub
@SP // set D to SP - 2
D=M
D=D-1
D=D-1
A=D
D=M // end set D to SP - 2
@R14 // store SP - 1 in R14
M=D
@SP // set D to SP - 1
D=M
D=D-1
A=D
D=M // end set D to SP-1
@R14
M=M-D // sub operand compute
D=M // store R14
@SP // store R14 in SP - 2
M=M-1
M=M-1
A=M
M=D
@SP // increment SP to top of stack
M=M+1
// end sub
@THIS
D=M
@R15
M=D
@6
D=A
@R15
D=D+M
A=D
D=M
@SP
A=M
M=D
@SP
D=M
D=D+1
M=D
// end push this 6
@THIS
D=M
@R15
M=D
@6
D=A
@R15
D=D+M
A=D
D=M
@SP
A=M
M=D
@SP
D=M
D=D+1
M=D
// end push this 6
// add
@SP // set D to SP - 2
D=M
D=D-1
D=D-1
A=D
D=M // end set D to SP - 2
@R14 // store SP - 1 in R14
M=D
@SP // set D to SP - 1
D=M
D=D-1
A=D
D=M // end set D to SP-1
@R14
M=M+D // add operand compute
D=M // store R14
@SP // store R14 in SP - 2
M=M-1
M=M-1
A=M
M=D
@SP // increment SP to top of stack
M=M+1
// end add
// sub
@SP // set D to SP - 2
D=M
D=D-1
D=D-1
A=D
D=M // end set D to SP - 2
@R14 // store SP - 1 in R14
M=D
@SP // set D to SP - 1
D=M
D=D-1
A=D
D=M // end set D to SP-1
@R14
M=M-D // sub operand compute
D=M // store R14
@SP // store R14 in SP - 2
M=M-1
M=M-1
A=M
M=D
@SP // increment SP to top of stack
M=M+1
// end sub
// push temp 6
@6
D=A
@5
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
D=M
D=D+1
M=D
// end push temp 6
// add
@SP // set D to SP - 2
D=M
D=D-1
D=D-1
A=D
D=M // end set D to SP - 2
@R14 // store SP - 1 in R14
M=D
@SP // set D to SP - 1
D=M
D=D-1
A=D
D=M // end set D to SP-1
@R14
M=M+D // add operand compute
D=M // store R14
@SP // store R14 in SP - 2
M=M-1
M=M-1
A=M
M=D
@SP // increment SP to top of stack
M=M+1
// end add