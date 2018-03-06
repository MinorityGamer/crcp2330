// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.


   //   How many pixels? 
   //		1-button not pressed ->white, button pressed-> darken screen
   //    if(if key input){
   //        write black to every pixel.
    //   }
     //  if not 
       //		write white to every pixel 

 //(BLACK)
 //M=-1
 //(WHITE)
 //M=0 
 //(END)

//...
  
@SCREEN 
D=A
@addr //holds the address of pixel
M=D //To (0,0)

(LOOP)
@KBD  //keyboard 
D=M 
@WHITE 
D;JEQ 
@BLACK 
0;JMP


(WHITE)
  @addr
  A=M 
  M=0 // white pixel
  @NEXT
  0;JMP

(BLACK)
  @addr
  //A=M 
  M=-1 // black pixel
  @NEXT
  0;JMP

(NEXT)
  @addr
  D=M+1
  M=D 
  @KBD
  D=A-D
  @START
  D;JEQ
  @LOOP
  0;JMP


