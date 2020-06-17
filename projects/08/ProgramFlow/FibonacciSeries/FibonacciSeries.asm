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
// push argument 1
@ARG
D=M
@1
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
// end push argument 1
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
// push constant 0
@current-pos18493
D=A
@R13
M=D
@0
D=A
@push_constant_conserved_fn
0;JMP
(current-pos18493)
// end push constant 0
// pop that 0
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
@0
D=D+A
A=D
D=A
@R15
M=D
@R14
D=M
@R15
A=M
M=D
// end pop that 0
// push constant 1
@current-pos18494
D=A
@R13
M=D
@1
D=A
@push_constant_conserved_fn
0;JMP
(current-pos18494)
// end push constant 1
// pop that 1
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
@1
D=D+A
A=D
D=A
@R15
M=D
@R14
D=M
@R15
A=M
M=D
// end pop that 1
// push argument 0
@ARG
D=M
@0
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
// end push argument 0
// push constant 2
@current-pos18495
D=A
@R13
M=D
@2
D=A
@push_constant_conserved_fn
0;JMP
(current-pos18495)
// end push constant 2
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
// pop argument 0
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
@0
D=D+A
A=D
D=A
@R15
M=D
@R14
D=M
@R15
A=M
M=D
// end pop argument 0
// label MAIN_LOOP_START
(MAIN_LOOP_START)
// push argument 0
@ARG
D=M
@0
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
// end push argument 0
// if-goto COMPUTE_ELEMENT
@SP
D=M
D=D-1
M=D
A=M
D=M
@COMPUTE_ELEMENT
D;JGT
// end if-goto COMPUTE_ELEMENT
// goto END_PROGRAM
@END_PROGRAM
0;JMP
// end goto END_PROGRAM
// label COMPUTE_ELEMENT
(COMPUTE_ELEMENT)
// push that 0
@THAT
D=M
@0
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
// end push that 0
// push that 1
@THAT
D=M
@1
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
// end push that 1
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
@2
D=D+A
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
// push constant 1
@current-pos18496
D=A
@R13
M=D
@1
D=A
@push_constant_conserved_fn
0;JMP
(current-pos18496)
// end push constant 1
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
// push argument 0
@ARG
D=M
@0
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
// end push argument 0
// push constant 1
@current-pos18497
D=A
@R13
M=D
@1
D=A
@push_constant_conserved_fn
0;JMP
(current-pos18497)
// end push constant 1
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
// pop argument 0
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
@0
D=D+A
A=D
D=A
@R15
M=D
@R14
D=M
@R15
A=M
M=D
// end pop argument 0
// goto MAIN_LOOP_START
@MAIN_LOOP_START
0;JMP
// end goto MAIN_LOOP_START
// label END_PROGRAM
(END_PROGRAM)