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
// function Sys.init 0
(Sys.init)
// end function Sys.init 0
// push constant 4000
@current-pos20439
D=A
@R13
M=D
@4000
D=A
@push_constant_conserved_fn
0;JMP
(current-pos20439)
// end push constant 4000
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
// push constant 5000
@current-pos20440
D=A
@R13
M=D
@5000
D=A
@push_constant_conserved_fn
0;JMP
(current-pos20440)
// end push constant 5000
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
// call Sys.main 0
@retAddrLabel20441
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
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
(retAddrLabel20441)
// end call Sys.main 0
// pop temp 1
@SP
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
M=D
// end pop temp 1
// label LOOP
(LOOP)
// goto LOOP
@LOOP
0;JMP
// end goto LOOP
// function Sys.main 5
(Sys.main)
// push constant 0
@current-pos20442
D=A
@R13
M=D
@0
D=A
@push_constant_conserved_fn
0;JMP
(current-pos20442)
// end push constant 0
// push constant 0
@current-pos20442
D=A
@R13
M=D
@0
D=A
@push_constant_conserved_fn
0;JMP
(current-pos20442)
// end push constant 0
// push constant 0
@current-pos20442
D=A
@R13
M=D
@0
D=A
@push_constant_conserved_fn
0;JMP
(current-pos20442)
// end push constant 0
// push constant 0
@current-pos20442
D=A
@R13
M=D
@0
D=A
@push_constant_conserved_fn
0;JMP
(current-pos20442)
// end push constant 0
// push constant 0
@current-pos20442
D=A
@R13
M=D
@0
D=A
@push_constant_conserved_fn
0;JMP
(current-pos20442)
// end push constant 0
// end function Sys.main 5
// push constant 4001
@current-pos20443
D=A
@R13
M=D
@4001
D=A
@push_constant_conserved_fn
0;JMP
(current-pos20443)
// end push constant 4001
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
// push constant 5001
@current-pos20444
D=A
@R13
M=D
@5001
D=A
@push_constant_conserved_fn
0;JMP
(current-pos20444)
// end push constant 5001
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
// push constant 200
@current-pos20445
D=A
@R13
M=D
@200
D=A
@push_constant_conserved_fn
0;JMP
(current-pos20445)
// end push constant 200
// pop local 1
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
// end pop local 1
// push constant 40
@current-pos20446
D=A
@R13
M=D
@40
D=A
@push_constant_conserved_fn
0;JMP
(current-pos20446)
// end push constant 40
// pop local 2
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
// end pop local 2
// push constant 6
@current-pos20447
D=A
@R13
M=D
@6
D=A
@push_constant_conserved_fn
0;JMP
(current-pos20447)
// end push constant 6
// pop local 3
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
M=D
// end pop local 3
// push constant 123
@current-pos20448
D=A
@R13
M=D
@123
D=A
@push_constant_conserved_fn
0;JMP
(current-pos20448)
// end push constant 123
// call Sys.add12 1
@retAddrLabel20449
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
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
// goto Sys.add12
@Sys.add12
0;JMP
// end goto Sys.add12
(retAddrLabel20449)
// end call Sys.add12 1
// pop temp 0
@SP
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
M=D
// end pop temp 0
// push local 0
@LCL
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
// end push local 0
// push local 1
@LCL
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
// end push local 1
// push local 2
@LCL
D=M
@2
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
// end push local 2
// push local 3
@LCL
D=M
@3
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
// end push local 3
// push local 4
@LCL
D=M
@4
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
// end push local 4
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
// return
@LCL
D=M
@R13
M=D
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
@ARG
D=M
D=D+1
@SP
M=D
@R13
D=M
D=D-1
A=D
D=M
@THAT
M=D
@R13
D=M
D=D-1
D=D-1
A=D
D=M
@THIS
M=D
@R13
D=M
D=D-1
D=D-1
D=D-1
A=D
D=M
@ARG
M=D
@R13
D=M
D=D-1
D=D-1
D=D-1
D=D-1
A=D
D=M
@LCL
M=D
D=D-1
A=D
0;JMP
// end return
// function Sys.add12 0
(Sys.add12)
// end function Sys.add12 0
// push constant 4002
@current-pos20451
D=A
@R13
M=D
@4002
D=A
@push_constant_conserved_fn
0;JMP
(current-pos20451)
// end push constant 4002
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
// push constant 5002
@current-pos20452
D=A
@R13
M=D
@5002
D=A
@push_constant_conserved_fn
0;JMP
(current-pos20452)
// end push constant 5002
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
// push constant 12
@current-pos20453
D=A
@R13
M=D
@12
D=A
@push_constant_conserved_fn
0;JMP
(current-pos20453)
// end push constant 12
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
// return
@LCL
D=M
@R13
M=D
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
@ARG
D=M
D=D+1
@SP
M=D
@R13
D=M
D=D-1
A=D
D=M
@THAT
M=D
@R13
D=M
D=D-1
D=D-1
A=D
D=M
@THIS
M=D
@R13
D=M
D=D-1
D=D-1
D=D-1
A=D
D=M
@ARG
M=D
@R13
D=M
D=D-1
D=D-1
D=D-1
D=D-1
A=D
D=M
@LCL
M=D
D=D-1
A=D
0;JMP
// end return