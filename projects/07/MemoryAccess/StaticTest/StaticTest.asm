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
// push constant 111
@current-pos16490
D=A
@R13
M=D
@111
D=A
@push_constant_conserved_fn
0;JMP
(current-pos16490)
// end push constant 111
// push constant 333
@current-pos16491
D=A
@R13
M=D
@333
D=A
@push_constant_conserved_fn
0;JMP
(current-pos16491)
// end push constant 333
// push constant 888
@current-pos16492
D=A
@R13
M=D
@888
D=A
@push_constant_conserved_fn
0;JMP
(current-pos16492)
// end push constant 888
// pop static 8
@SP
D=M
D=D-1
M=D
@SP
A=M
D=M
@StaticTest.8
M=D
// end pop static 8
// pop static 3
@SP
D=M
D=D-1
M=D
@SP
A=M
D=M
@StaticTest.3
M=D
// end pop static 3
// pop static 1
@SP
D=M
D=D-1
M=D
@SP
A=M
D=M
@StaticTest.1
M=D
// end pop static 1
// push static 3
@StaticTest.3
D=M
@SP
A=M
M=D
@SP
D=M
D=D+1
M=D
// end push static 3
// push static 1
@StaticTest.1
D=M
@SP
A=M
M=D
@SP
D=M
D=D+1
M=D
// end push static 1
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
// push static 8
@StaticTest.8
D=M
@SP
A=M
M=D
@SP
D=M
D=D+1
M=D
// end push static 8
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