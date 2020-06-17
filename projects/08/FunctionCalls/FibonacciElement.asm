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
// begin bootstrap-code
@256
D=A
@SP
M=D
// call Sys.main 0
@retAddrLabel10616
D=A
@SP
A=M
M=D
@SP
M=M+1
// push @LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
// end push @LCL
// push @ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
// end push @ARG
// push @THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// end push @THIS
// push @THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
// end push @THAT
// ARG = SP - 5 - nArgs
@SP
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
// goto Sys.main
@Sys.main
0;JMP
// end goto Sys.main
(retAddrLabel10616)
// end call Sys.main 0
// end bootstrap-code
// begin file: Main.vm
// end file: Main.vm
// begin file: Sys.vm
// end file: Sys.vm