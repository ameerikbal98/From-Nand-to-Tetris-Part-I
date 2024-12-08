//computes product of R0 and R1 then store it in R2

@0
D=M
@N1
M=D
@1
D=M
@N2
M=D
@PROD
M=0
@i
M=0


//checking if any of the number is zero
@N1
D=M
@ZERO
D;JEQ

@N2
D=M
@ZERO
D;JEQ

@EQUALITY
0;JMP

(ZERO)
@R2
M=0
@END
0;JMP



//checking which number is negative and which is positive

(EQUALITY)
@N1
D=M
@LESSTHAN1
D;JLT
@GREATERTHAN1
D;JGT
//if the number is less than 0
(LESSTHAN1)
@num1sign
M=1
@unum1
M=-D

//Jump to second number 
@SECONDNUM
0;JMP


//if the number is greater than 0
(GREATERTHAN1)
@num1sign
M=0
@unum1
M=D

(SECONDNUM)
@N2
D=M
@LESSTHAN2
D;JLT


@GREATERTHAN2
D;JGT

(LESSTHAN2)
@num2sign
M=1
@unum2
M=-D

@PRODUCT
0;JMP


(GREATERTHAN2)
@num2sign
M=0
@unum2
M=D





//Calculate the product assuming both are positive
(PRODUCT)
@unum1
D=M
@PROD
M=D+M
@i
M=M+1
D=M
@unum2
D=D-M
//D=D+1
@PRODUCT
D;JLT

@num1sign
D=M
@num2sign
D=D-M

@SAMESIGN
D;JEQ
@DIFFERENT
D;JNE

(SAMESIGN)
@PROD
D=M
@R2
M=D
@END
0;JMP


(DIFFERENT)
@PROD
D=M
D=-D
@R2
M=D



(END)
@END
0;JMP
