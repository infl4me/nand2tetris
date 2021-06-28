@256
D=A
@SP
M=D // init SP to 256

@undefined.Sys.init$ret.4
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

(undefined.Sys.init$ret.4) // return label after function execution is done
(Main.fibonacci)
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
@2
D=A
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
D=M-D
@SET_TRUE1
D;JLT
@SP
A=M
M=0
@END1
0;JMP
(SET_TRUE1)
@SP
A=M
M=-1
(END1)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@IF_TRUE
D;JNE
@IF_FALSE
0;JMP
(IF_TRUE)
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
(IF_FALSE)
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
@2
D=A
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
@Main.Main.fibonacci$ret.1
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

@6
D=A
@SP
D=M-D
@ARG
M=D // Reposition ARG

@SP
D=M
@LCL
M=D // Reposition LCL

@Main.fibonacci
0;JMP // jump to calling function

(Main.Main.fibonacci$ret.1) // return label after function execution is done
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
@1
D=A
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
@Main.Main.fibonacci$ret.2
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

@6
D=A
@SP
D=M-D
@ARG
M=D // Reposition ARG

@SP
D=M
@LCL
M=D // Reposition LCL

@Main.fibonacci
0;JMP // jump to calling function

(Main.Main.fibonacci$ret.2) // return label after function execution is done
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M+D
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
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
@Sys.Main.fibonacci$ret.3
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

@6
D=A
@SP
D=M-D
@ARG
M=D // Reposition ARG

@SP
D=M
@LCL
M=D // Reposition LCL

@Main.fibonacci
0;JMP // jump to calling function

(Sys.Main.fibonacci$ret.3) // return label after function execution is done
(WHILE)
@WHILE
0;JMP