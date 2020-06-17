@begin_program
0;JMP
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
@current-pos11403
D=A
@R13
M=D
@0
D=A
@push_constant_conserved_fn
0;JMP
(current-pos11403)
@SP // pop local 0
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
M=D // end pop local 0
(LOOP_START)
@ARG
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP // end push argument 0
M=M+1
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP // end push local 0
M=M+1
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
@SP // pop local 0
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
M=D // end pop local 0
@ARG
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP // end push argument 0
M=M+1
@current-pos11404
D=A
@R13
M=D
@1
D=A
@push_constant_conserved_fn
0;JMP
(current-pos11404)
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
@SP // pop argument 0
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
M=D // end pop argument 0
@ARG
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP // end push argument 0
M=M+1
@SP // if-goto LOOP_START
D=M
D=D-1
M=D
A=M
D=M
@LOOP_START
D;JNE // end if-goto LOOP_START
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP // end push local 0
M=M+1