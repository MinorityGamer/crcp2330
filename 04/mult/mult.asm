// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)


// Put your code here.

@2    //goes to the third slot (0,1,2)
M=0	  //clears out the answer box

@0     //goes to the first slot
D=M    //if the slot is equal to zero
@END
D;JEQ	

@1     //goes to the second slot 
D=M    //if second slot is equal to zero 
@END
D;JEQ	


(LOOP) //loop de loop
@1	//at second slot 
D=M	

@2	//at third slot
M=D+M	//RAM[2] holding number + previous val

@3	//at fourth slot 
M=M-1	//get first number and - 1

D=M	
@LOOP	
D;JGT			 

(END)
@END
0;JMP	//Loop to keep it from going off