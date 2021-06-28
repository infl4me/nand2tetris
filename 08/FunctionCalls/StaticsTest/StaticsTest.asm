@256
D=A
@SP
M=D // init SP to 256

@Sys.init$ret.5
D=A
@SP
A=M
M=D
@SP
M=M+1 // push return-address ()ROM

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

@5
D=A
@SP
D=M-D
@ARG
M=D // Reposition ARG

@SP
D=M
@LCL
M=D // Reposition LCL

@Sys.init
0;JMP // jump to calling function

(Sys.init$ret.5) // return label after function execution is done
(Class1.set)
@0
D=A
@ARG
D=D+M
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@Class1.0
M=D
@1
D=A
@ARG
D=D+M
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@Class1.1
M=D
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@R15
M=D // save frame address to R15

@5
D=A
@R15
A=M-D
D=M
@R14
M=D // put return address (frame - 5) to R14

@0
D=A
@ARG
D=D+M
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D // put last value to arg0

@ARG
D=M
@SP
M=D+1 // set SP to ARG+1

@1
D=A
@R15
A=M-D
D=M
@THAT
M=D
@2
D=A
@R15
A=M-D
D=M
@THIS
M=D
@3
D=A
@R15
A=M-D
D=M
@ARG
M=D
@4
D=A
@R15
A=M-D
D=M
@LCL
M=D // restore special registers

@R14
A=M
0;JMP // go to return address
(Class1.get)
@Class1.0
D=M
@SP
A=M
M=D
@SP
M=M+1
@Class1.1
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1
@LCL
D=M
@R15
M=D // save frame address to R15

@5
D=A
@R15
A=M-D
D=M
@R14
M=D // put return address (frame - 5) to R14

@0
D=A
@ARG
D=D+M
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D // put last value to arg0

@ARG
D=M
@SP
M=D+1 // set SP to ARG+1

@1
D=A
@R15
A=M-D
D=M
@THAT
M=D
@2
D=A
@R15
A=M-D
D=M
@THIS
M=D
@3
D=A
@R15
A=M-D
D=M
@ARG
M=D
@4
D=A
@R15
A=M-D
D=M
@LCL
M=D // restore special registers

@R14
A=M
0;JMP // go to return address
(Class2.set)
@0
D=A
@ARG
D=D+M
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@Class2.0
M=D
@1
D=A
@ARG
D=D+M
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@Class2.1
M=D
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@R15
M=D // save frame address to R15

@5
D=A
@R15
A=M-D
D=M
@R14
M=D // put return address (frame - 5) to R14

@0
D=A
@ARG
D=D+M
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D // put last value to arg0

@ARG
D=M
@SP
M=D+1 // set SP to ARG+1

@1
D=A
@R15
A=M-D
D=M
@THAT
M=D
@2
D=A
@R15
A=M-D
D=M
@THIS
M=D
@3
D=A
@R15
A=M-D
D=M
@ARG
M=D
@4
D=A
@R15
A=M-D
D=M
@LCL
M=D // restore special registers

@R14
A=M
0;JMP // go to return address
(Class2.get)
@Class2.0
D=M
@SP
A=M
M=D
@SP
M=M+1
@Class2.1
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1
@LCL
D=M
@R15
M=D // save frame address to R15

@5
D=A
@R15
A=M-D
D=M
@R14
M=D // put return address (frame - 5) to R14

@0
D=A
@ARG
D=D+M
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D // put last value to arg0

@ARG
D=M
@SP
M=D+1 // set SP to ARG+1

@1
D=A
@R15
A=M-D
D=M
@THAT
M=D
@2
D=A
@R15
A=M-D
D=M
@THIS
M=D
@3
D=A
@R15
A=M-D
D=M
@ARG
M=D
@4
D=A
@R15
A=M-D
D=M
@LCL
M=D // restore special registers

@R14
A=M
0;JMP // go to return address
(Sys.init)
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
@Class1.set$ret.1
D=A
@SP
A=M
M=D
@SP
M=M+1 // push return-address ()ROM

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

@7
D=A
@SP
D=M-D
@ARG
M=D // Reposition ARG

@SP
D=M
@LCL
M=D // Reposition LCL

@Class1.set
0;JMP // jump to calling function

(Class1.set$ret.1) // return label after function execution is done
@SP
M=M-1
A=M
D=M
@R5
M=D
@23
D=A
@SP
A=M
M=D
@SP
M=M+1
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
@Class2.set$ret.2
D=A
@SP
A=M
M=D
@SP
M=M+1 // push return-address ()ROM

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

@7
D=A
@SP
D=M-D
@ARG
M=D // Reposition ARG

@SP
D=M
@LCL
M=D // Reposition LCL

@Class2.set
0;JMP // jump to calling function

(Class2.set$ret.2) // return label after function execution is done
@SP
M=M-1
A=M
D=M
@R5
M=D
@Class1.get$ret.3
D=A
@SP
A=M
M=D
@SP
M=M+1 // push return-address ()ROM

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

@5
D=A
@SP
D=M-D
@ARG
M=D // Reposition ARG

@SP
D=M
@LCL
M=D // Reposition LCL

@Class1.get
0;JMP // jump to calling function

(Class1.get$ret.3) // return label after function execution is done
@Class2.get$ret.4
D=A
@SP
A=M
M=D
@SP
M=M+1 // push return-address ()ROM

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

@5
D=A
@SP
D=M-D
@ARG
M=D // Reposition ARG

@SP
D=M
@LCL
M=D // Reposition LCL

@Class2.get
0;JMP // jump to calling function

(Class2.get$ret.4) // return label after function execution is done
(WHILE)
@WHILE
0;JMP