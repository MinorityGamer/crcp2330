//Program: Rectangle.asm 
// draws a filled rectangle onto the screen 
//for practice with input/output 

@R0 
D=M 
@n 
M=D //n = RAM[0] 

@i 
M=0 //i = 0 

@SCREEN 
D=A 
@address 
M=D //base address of the HACK screen 

(LOOP)
@i 
D=M 
@n 
D=D-M 
@END 
D;JGT //if i>n goto END 


@address 
A=M 
M=-1 //RAM[Address]=-1 (16 pxls)


@i 
M=M+1 
@32 
D=A
@address
M=D+M 
@LOOP 
0;JMP 

(END)
@END