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
  
@8192
D=A
@inputs
M=D

@i 
M=0 

(LOOP)

// Get the color based on the keyboard.
@KBD
D=M
@bow
M=0
@SKIP
D;JEQ
@bow
M=-1
(SKIP)

// Get the memory address for the screen input.
@SCREEN
D=A
@i
D=D+M
@input
M=D

@i
M=M+1 
D=M
@inputs
D=D-M
@VALID
D;JNE
@i
M=0
(VALID)

// goes to black or whit
@bow
D=M
@WHITE
D;JEQ
@BLACK
D;JNE

(BLACK)

@input
D=M
A=D
M=-1    //black it out
@LOOP
0;JMP 

(WHITE)

@input
D=M
A=D
M=0     //white it out
@LOOP
0;JMP

