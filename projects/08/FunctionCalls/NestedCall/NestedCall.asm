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
(Sys.init)
@current-pos10012
D=A
@R13
M=D
@4000
D=A
@push_constant_conserved_fn
0;JMP
(current-pos10012)
@SP // pop pointer0
D=M
D=D-1
M=D
@SP
A=M
D=M
@THIS
M=D // end pop pointer 0
@current-pos10013
D=A
@R13
M=D
@5000
D=A
@push_constant_conserved_fn
0;JMP
(current-pos10013)
@SP // pop pointer1
D=M
D=D-1
M=D
@SP
A=M
D=M
@THAT
M=D // end pop pointer 1
@retAddrLabel10014 // call Sys.main 0
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
@Sys.main // goto Sys.main
0;JMP // end goto Sys.main
(retAddrLabel10014) // end call Sys.main 0
@SP // pop temp 1
D=M
D=D-1
M=D
@SP
A=M
D=M
@R14
M=D
@1
D=A
@5
D=D+A
@R15
M=D
@R14
D=M
@R15
A=M
M=D // end pop temp 1
(LOOP)
@LOOP // goto LOOP
0;JMP // end goto LOOP
(Sys.main)
@current-pos10015
D=A
@R13
M=D
@0
D=A
@push_constant_conserved_fn
0;JMP
(current-pos10015)
@current-pos10016
D=A
@R13
M=D
@0
D=A
@push_constant_conserved_fn
0;JMP
(current-pos10016)
@current-pos10017
D=A
@R13
M=D
@0
D=A
@push_constant_conserved_fn
0;JMP
(current-pos10017)
@current-pos10018
D=A
@R13
M=D
@0
D=A
@push_constant_conserved_fn
0;JMP
(current-pos10018)
@current-pos10019
D=A
@R13
M=D
@0
D=A
@push_constant_conserved_fn
0;JMP
(current-pos10019)
@current-pos10020
D=A
@R13
M=D
@4001
D=A
@push_constant_conserved_fn
0;JMP
(current-pos10020)
@SP // pop pointer0
D=M
D=D-1
M=D
@SP
A=M
D=M
@THIS
M=D // end pop pointer 0
@current-pos10021
D=A
@R13
M=D
@5001
D=A
@push_constant_conserved_fn
0;JMP
(current-pos10021)
@SP // pop pointer1
D=M
D=D-1
M=D
@SP
A=M
D=M
@THAT
M=D // end pop pointer 1
@current-pos10022
D=A
@R13
M=D
@200
D=A
@push_constant_conserved_fn
0;JMP
(current-pos10022)
@SP // pop local 1
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
M=D // end pop local 1
@current-pos10023
D=A
@R13
M=D
@40
D=A
@push_constant_conserved_fn
0;JMP
(current-pos10023)
@SP // pop local 2
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
M=D // end pop local 2
@current-pos10024
D=A
@R13
M=D
@6
D=A
@push_constant_conserved_fn
0;JMP
(current-pos10024)
@SP // pop local 3
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
@3
D=D+A
A=D
D=A
@R15
M=D
@R14
D=M
@R15
A=M
M=D // end pop local 3
@current-pos10025
D=A
@R13
M=D
@123
D=A
@push_constant_conserved_fn
0;JMP
(current-pos10025)
@retAddrLabel10026 // call Sys.add12 1
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
@Sys.add12 // goto Sys.add12
0;JMP // end goto Sys.add12
(retAddrLabel10026) // end call Sys.add12 1
@SP // pop temp 0
D=M
D=D-1
M=D
@SP
A=M
D=M
@R14
M=D
@0
D=A
@5
D=D+A
@R15
M=D
@R14
D=M
@R15
A=M
M=D // end pop temp 0
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
@LCL
D=M
@1
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP // end push local 1
M=M+1
@LCL
D=M
@2
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP // end push local 2
M=M+1
@LCL
D=M
@3
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP // end push local 3
M=M+1
@LCL
D=M
@4
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP // end push local 4
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
(Sys.add12)
@current-pos10027
D=A
@R13
M=D
@4002
D=A
@push_constant_conserved_fn
0;JMP
(current-pos10027)
@SP // pop pointer0
D=M
D=D-1
M=D
@SP
A=M
D=M
@THIS
M=D // end pop pointer 0
@current-pos10028
D=A
@R13
M=D
@5002
D=A
@push_constant_conserved_fn
0;JMP
(current-pos10028)
@SP // pop pointer1
D=M
D=D-1
M=D
@SP
A=M
D=M
@THAT
M=D // end pop pointer 1
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
@current-pos10029
D=A
@R13
M=D
@12
D=A
@push_constant_conserved_fn
0;JMP
(current-pos10029)
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