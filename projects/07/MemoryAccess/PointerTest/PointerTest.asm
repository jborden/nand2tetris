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
// push constant 3030
@current-pos15604
D=A
@R13
M=D
@3030
D=A
@push_constant_conserved_fn
0;JMP
(current-pos15604)
// end push constant 3030
// pop pointer 0
@SP
D=M
D=D-1
M=D
@SP
A=M
D=M
@THIS
M=D
// push constant 3040
@current-pos15605
D=A
@R13
M=D
@3040
D=A
@push_constant_conserved_fn
0;JMP
(current-pos15605)
// end push constant 3040
// pop pointer 1
@SP
D=M
D=D-1
M=D
@SP
A=M
D=M
@THAT
M=D
// push constant 32
@current-pos15606
D=A
@R13
M=D
@32
D=A
@push_constant_conserved_fn
0;JMP
(current-pos15606)
// end push constant 32
// pop this 2
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
// end pop this 2
// push constant 46
@current-pos15607
D=A
@R13
M=D
@46
D=A
@push_constant_conserved_fn
0;JMP
(current-pos15607)
// end push constant 46
// pop that 6
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
// end pop that 6
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
D=M
D=D+1
M=D
// end push pointer0
// push pointer 1
@THAT
D=M
@SP
A=M
M=D
@SP
D=M
D=D+1
M=D
// end push pointer1
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
@THIS
D=M
@R15
M=D
@2
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
// end push this 2
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
@THAT
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
// end push that 6
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