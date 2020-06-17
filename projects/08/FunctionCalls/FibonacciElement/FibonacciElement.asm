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
@256 // begin bootstrap-code
D=A
@SP
M=D
@retAddrLabel11263 // call Sys.init 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL // push @LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG // push @ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS // push @THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT // push @THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // ARG = SP - 5 - nArgs
D=M
D=D-1
D=D-1
D=D-1
D=D-1
D=D-1
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.init // goto Sys.init
0;JMP // end goto Sys.init
(retAddrLabel11263) // end call Sys.init 0
(Main.fibonacci)
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
@current-pos11272
D=A
@R13
M=D
@2
D=A
@push_constant_conserved_fn
0;JMP
(current-pos11272)
@end.comp.fn11273 // lt
D=A
@R13
M=D
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
@lt_fn // go to the lt_fn
0;JMP
(end.comp.fn11273) // end lt
@SP // if-goto IF_TRUE
D=M
D=D-1
M=D
A=M
D=M
@IF_TRUE
D;JNE // end if-goto IF_TRUE
@IF_FALSE // goto IF_FALSE
0;JMP // end goto IF_FALSE
(IF_TRUE)
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
@LCL // return
D=M
@R13
M=D
@5 // retAddr = *(endFrame - 5) = @R14
D=A
@R13
D=M-D
A=D
D=M
@R14
M=D // *ARG = pop() -- below
@SP
D=M
D=D-1
M=D
@SP
A=M
D=M
@ARG
A=M
M=D
@ARG // SP = ARG + 1
D=M
D=D+1
@SP
M=D
@R13 // THAT = *(endFrame - 1)
D=M
D=D-1
A=D
D=M
@THAT
M=D
@R13 // THIS = *(endFrame - 2)
D=M
D=D-1
D=D-1
A=D
D=M
@THIS
M=D
@R13 // ARG = *(endFrame - 3)
D=M
D=D-1
D=D-1
D=D-1
A=D
D=M
@ARG
M=D
@R13 // LCL = *(endFrame - 4)
D=M
D=D-1
D=D-1
D=D-1
D=D-1
A=D
D=M
@LCL
M=D
@R14 // goto retAddr = *(endFrame - 5)
D=M
A=D
0;JMP // end return
(IF_FALSE)
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
@current-pos11274
D=A
@R13
M=D
@2
D=A
@push_constant_conserved_fn
0;JMP
(current-pos11274)
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
@retAddrLabel11275 // call Main.fibonacci 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL // push @LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG // push @ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS // push @THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT // push @THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // ARG = SP - 5 - nArgs
D=M
D=D-1
D=D-1
D=D-1
D=D-1
D=D-1
D=D-1
@ARG
M=D
@SP
D=M
@LCL
M=D
@Main.fibonacci // goto Main.fibonacci
0;JMP // end goto Main.fibonacci
(retAddrLabel11275) // end call Main.fibonacci 1
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
@current-pos11276
D=A
@R13
M=D
@1
D=A
@push_constant_conserved_fn
0;JMP
(current-pos11276)
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
@retAddrLabel11277 // call Main.fibonacci 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL // push @LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG // push @ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS // push @THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT // push @THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // ARG = SP - 5 - nArgs
D=M
D=D-1
D=D-1
D=D-1
D=D-1
D=D-1
D=D-1
@ARG
M=D
@SP
D=M
@LCL
M=D
@Main.fibonacci // goto Main.fibonacci
0;JMP // end goto Main.fibonacci
(retAddrLabel11277) // end call Main.fibonacci 1
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
@LCL // return
D=M
@R13
M=D
@5 // retAddr = *(endFrame - 5) = @R14
D=A
@R13
D=M-D
A=D
D=M
@R14
M=D // *ARG = pop() -- below
@SP
D=M
D=D-1
M=D
@SP
A=M
D=M
@ARG
A=M
M=D
@ARG // SP = ARG + 1
D=M
D=D+1
@SP
M=D
@R13 // THAT = *(endFrame - 1)
D=M
D=D-1
A=D
D=M
@THAT
M=D
@R13 // THIS = *(endFrame - 2)
D=M
D=D-1
D=D-1
A=D
D=M
@THIS
M=D
@R13 // ARG = *(endFrame - 3)
D=M
D=D-1
D=D-1
D=D-1
A=D
D=M
@ARG
M=D
@R13 // LCL = *(endFrame - 4)
D=M
D=D-1
D=D-1
D=D-1
D=D-1
A=D
D=M
@LCL
M=D
@R14 // goto retAddr = *(endFrame - 5)
D=M
A=D
0;JMP // end return
(Sys.init)
@current-pos11278
D=A
@R13
M=D
@4
D=A
@push_constant_conserved_fn
0;JMP
(current-pos11278)
@retAddrLabel11279 // call Main.fibonacci 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL // push @LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG // push @ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS // push @THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT // push @THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // ARG = SP - 5 - nArgs
D=M
D=D-1
D=D-1
D=D-1
D=D-1
D=D-1
D=D-1
@ARG
M=D
@SP
D=M
@LCL
M=D
@Main.fibonacci // goto Main.fibonacci
0;JMP // end goto Main.fibonacci
(retAddrLabel11279) // end call Main.fibonacci 1
(WHILE)
@WHILE // goto WHILE
0;JMP // end goto WHILE