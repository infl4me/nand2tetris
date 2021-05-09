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
@KBD
D=A
@lastaddr
M=D-1
@pixelBit
M=0

(LISTEN_KBD)
  // init/reset addr
  @SCREEN
  D=A
  @addr
  M=D

  // if 0 set pixelBit to 0 else set to -1
  // then start filling the screen
  @KBD
  D=M
  @SETPIXELBIT0
  D;JEQ
  @SETPIXELBIT1
  0;JMP


(FILL_SCREEN)
  // if last address passed jump to keyboard listener
  @addr
  D=M
  @lastaddr
  D=D-M
  @LISTEN_KBD
  D;JGT

  @pixelBit
  D=M
  @addr
  A=M
  M=D

  @addr
  M=M+1

  @FILL_SCREEN
  0;JMP

(SETPIXELBIT1)
  @pixelBit
  M=-1
  @FILL_SCREEN
  0;JMP

(SETPIXELBIT0)
  @pixelBit
  M=0
  @FILL_SCREEN
  0;JMP



