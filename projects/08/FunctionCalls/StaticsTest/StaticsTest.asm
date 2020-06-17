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
@retAddrLabel11773 // call Sys.init 0
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
(retAddrLabel11773) // end call Sys.init 0
(Class1.set)
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
@SP // pop static 0
D=M
D=D-1
M=D
@SP
A=M
D=M
@Class1.0
M=D // end pop static 0
@ARG
D=M
@1
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP // end push argument 1
M=M+1
@SP // pop static 1
D=M
D=D-1
M=D
@SP
A=M
D=M
@Class1.1
M=D // end pop static 1
@current-pos11782
D=A
@R13
M=D
@0
D=A
@push_constant_conserved_fn
0;JMP
(current-pos11782)
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
(Class1.get)
@Class1.0 // push static 0
D=M
@SP
A=M
M=D
@SP // end push static 0
M=M+1
@Class1.1 // push static 1
D=M
@SP
A=M
M=D
@SP // end push static 1
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
M=M-D // sub operand compute
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
@current-pos11783
D=A
@R13
M=D
@6
D=A
@push_constant_conserved_fn
0;JMP
(current-pos11783)
@current-pos11784
D=A
@R13
M=D
@8
D=A
@push_constant_conserved_fn
0;JMP
(current-pos11784)
@retAddrLabel11785 // call Class1.set 2
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
D=D-1
@ARG
M=D
@SP
D=M
@LCL
M=D
@Class1.set // goto Class1.set
0;JMP // end goto Class1.set
(retAddrLabel11785) // end call Class1.set 2
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
@current-pos11786
D=A
@R13
M=D
@23
D=A
@push_constant_conserved_fn
0;JMP
(current-pos11786)
@current-pos11787
D=A
@R13
M=D
@15
D=A
@push_constant_conserved_fn
0;JMP
(current-pos11787)
@retAddrLabel11788 // call Class2.set 2
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
D=D-1
@ARG
M=D
@SP
D=M
@LCL
M=D
@Class2.set // goto Class2.set
0;JMP // end goto Class2.set
(retAddrLabel11788) // end call Class2.set 2
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
@retAddrLabel11789 // call Class1.get 0
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
@Class1.get // goto Class1.get
0;JMP // end goto Class1.get
(retAddrLabel11789) // end call Class1.get 0
@retAddrLabel11790 // call Class2.get 0
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
@Class2.get // goto Class2.get
0;JMP // end goto Class2.get
(retAddrLabel11790) // end call Class2.get 0
(WHILE)
@WHILE // goto WHILE
0;JMP // end goto WHILE
(Class2.set)
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
@SP // pop static 0
D=M
D=D-1
M=D
@SP
A=M
D=M
@Class2.0
M=D // end pop static 0
@ARG
D=M
@1
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP // end push argument 1
M=M+1
@SP // pop static 1
D=M
D=D-1
M=D
@SP
A=M
D=M
@Class2.1
M=D // end pop static 1
@current-pos11791
D=A
@R13
M=D
@0
D=A
@push_constant_conserved_fn
0;JMP
(current-pos11791)
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
(Class2.get)
@Class2.0 // push static 0
D=M
@SP
A=M
M=D
@SP // end push static 0
M=M+1
@Class2.1 // push static 1
D=M
@SP
A=M
M=D
@SP // end push static 1
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
M=M-D // sub operand compute
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