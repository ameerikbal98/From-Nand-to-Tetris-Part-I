

(LOOP)
@SCREEN
D=A
@addr
M=D
@i
M=0
@KBD
D=M
@LOOP
D;JEQ
(BLACKLOOP)
@addr
A=M
M=-1
@addr
M=M+1
@i
D=M+1
M=D
@8192
D=A-D
@BLACKLOOP
D;JNE

@SCREEN
D=A
@addr
M=D
@i
M=0

@KBD
D=M
@BLACKLOOP
D;JNE

(SCREENWHITE)

@addr
A=M
M=0
@addr
M=M+1
@i
D=M+1
M=D
@8192
D=A-D
@SCREENWHITE
D;JNE

@LOOP
0;JMP

(END)
@END
0;JMP