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
// push constant 17
@current-pos13579
D=A
@R13
M=D
@17
D=A
@push_constant_conserved_fn
0;JMP
(current-pos13579)
// end push constant 17
// push constant 17
@current-pos13580
D=A
@R13
M=D
@17
D=A
@push_constant_conserved_fn
0;JMP
(current-pos13580)
// end push constant 17
// eq
@end.comp.fn13581 // save end-comp-label pointer in R13
D=A
@R13
M=D
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
@eq_fn // go to the eq_fn
0;JMP
(end.comp.fn13581) // 
// end eq
// push constant 17
@current-pos13582
D=A
@R13
M=D
@17
D=A
@push_constant_conserved_fn
0;JMP
(current-pos13582)
// end push constant 17
// push constant 16
@current-pos13583
D=A
@R13
M=D
@16
D=A
@push_constant_conserved_fn
0;JMP
(current-pos13583)
// end push constant 16
// eq
@end.comp.fn13584 // save end-comp-label pointer in R13
D=A
@R13
M=D
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
@eq_fn // go to the eq_fn
0;JMP
(end.comp.fn13584) // 
// end eq
// push constant 16
@current-pos13585
D=A
@R13
M=D
@16
D=A
@push_constant_conserved_fn
0;JMP
(current-pos13585)
// end push constant 16
// push constant 17
@current-pos13586
D=A
@R13
M=D
@17
D=A
@push_constant_conserved_fn
0;JMP
(current-pos13586)
// end push constant 17
// eq
@end.comp.fn13587 // save end-comp-label pointer in R13
D=A
@R13
M=D
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
@eq_fn // go to the eq_fn
0;JMP
(end.comp.fn13587) // 
// end eq
// push constant 892
@current-pos13588
D=A
@R13
M=D
@892
D=A
@push_constant_conserved_fn
0;JMP
(current-pos13588)
// end push constant 892
// push constant 891
@current-pos13589
D=A
@R13
M=D
@891
D=A
@push_constant_conserved_fn
0;JMP
(current-pos13589)
// end push constant 891
// lt
@end.comp.fn13590 // save end-comp-label pointer in R13
D=A
@R13
M=D
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
@lt_fn // go to the lt_fn
0;JMP
(end.comp.fn13590) // 
// end lt
// push constant 891
@current-pos13591
D=A
@R13
M=D
@891
D=A
@push_constant_conserved_fn
0;JMP
(current-pos13591)
// end push constant 891
// push constant 892
@current-pos13592
D=A
@R13
M=D
@892
D=A
@push_constant_conserved_fn
0;JMP
(current-pos13592)
// end push constant 892
// lt
@end.comp.fn13593 // save end-comp-label pointer in R13
D=A
@R13
M=D
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
@lt_fn // go to the lt_fn
0;JMP
(end.comp.fn13593) // 
// end lt
// push constant 891
@current-pos13594
D=A
@R13
M=D
@891
D=A
@push_constant_conserved_fn
0;JMP
(current-pos13594)
// end push constant 891
// push constant 891
@current-pos13595
D=A
@R13
M=D
@891
D=A
@push_constant_conserved_fn
0;JMP
(current-pos13595)
// end push constant 891
// lt
@end.comp.fn13596 // save end-comp-label pointer in R13
D=A
@R13
M=D
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
@lt_fn // go to the lt_fn
0;JMP
(end.comp.fn13596) // 
// end lt
// push constant 32767
@current-pos13597
D=A
@R13
M=D
@32767
D=A
@push_constant_conserved_fn
0;JMP
(current-pos13597)
// end push constant 32767
// push constant 32766
@current-pos13598
D=A
@R13
M=D
@32766
D=A
@push_constant_conserved_fn
0;JMP
(current-pos13598)
// end push constant 32766
// gt
@end.comp.fn13599 // save end-comp-label pointer in R13
D=A
@R13
M=D
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
@gt_fn // go to the gt_fn
0;JMP
(end.comp.fn13599) // 
// end gt
// push constant 32766
@current-pos13600
D=A
@R13
M=D
@32766
D=A
@push_constant_conserved_fn
0;JMP
(current-pos13600)
// end push constant 32766
// push constant 32767
@current-pos13601
D=A
@R13
M=D
@32767
D=A
@push_constant_conserved_fn
0;JMP
(current-pos13601)
// end push constant 32767
// gt
@end.comp.fn13602 // save end-comp-label pointer in R13
D=A
@R13
M=D
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
@gt_fn // go to the gt_fn
0;JMP
(end.comp.fn13602) // 
// end gt
// push constant 32766
@current-pos13603
D=A
@R13
M=D
@32766
D=A
@push_constant_conserved_fn
0;JMP
(current-pos13603)
// end push constant 32766
// push constant 32766
@current-pos13604
D=A
@R13
M=D
@32766
D=A
@push_constant_conserved_fn
0;JMP
(current-pos13604)
// end push constant 32766
// gt
@end.comp.fn13605 // save end-comp-label pointer in R13
D=A
@R13
M=D
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
@gt_fn // go to the gt_fn
0;JMP
(end.comp.fn13605) // 
// end gt
// push constant 57
@current-pos13606
D=A
@R13
M=D
@57
D=A
@push_constant_conserved_fn
0;JMP
(current-pos13606)
// end push constant 57
// push constant 31
@current-pos13607
D=A
@R13
M=D
@31
D=A
@push_constant_conserved_fn
0;JMP
(current-pos13607)
// end push constant 31
// push constant 53
@current-pos13608
D=A
@R13
M=D
@53
D=A
@push_constant_conserved_fn
0;JMP
(current-pos13608)
// end push constant 53
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
// push constant 112
@current-pos13609
D=A
@R13
M=D
@112
D=A
@push_constant_conserved_fn
0;JMP
(current-pos13609)
// end push constant 112
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
// neg
@SP // set D to SP - 1
D=M
D=D-1
A=D
D=M // end set D to SP-1
M=-D
// end neg
// and
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
M=D&M // and operand compute
D=M // store R14
@SP // store R14 in SP - 2
M=M-1
M=M-1
A=M
M=D
@SP // increment SP to top of stack
M=M+1
// end and
// push constant 82
@current-pos13610
D=A
@R13
M=D
@82
D=A
@push_constant_conserved_fn
0;JMP
(current-pos13610)
// end push constant 82
// or
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
M=D|M // or operand computer
D=M // store R14
@SP // store R14 in SP - 2
M=M-1
M=M-1
A=M
M=D
@SP // increment SP to top of stack
M=M+1
// end or
// not
@SP // set D to SP - 1
D=M
D=D-1
A=D
D=M // end set D to SP-1
M=!D
// end not