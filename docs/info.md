<!---
This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.
-->

## How it works

TCPU-8 is an 8-bit single-cycle accumulator CPU.It consists of one working register, known as the accumulator, a 3-bit program counter and also has an 8 x8 program memory. All instructions are of 8-bits, one byte with bits [7:5] as the opcode and the rest are the operands.
Supported instructions: LOAD, ADD, SUB, STORE, JMP, JZ, XOR and HALT. The output register changes only when STORE
executes.

## How to test

1. Reset the design (rst_n low for at least 2 clock cycles, then high).
2. With run = 0 (uio[1]), put an instruction byte on ui[7:0] and raise prog_load (uio[0]) for one clock cycle.
   Repeat for 8 words. The address advances automatically.
3. Raise run (uio[1]) to start execution at address 0.
4. Read the result on uo[7:0]. Example: LOAD 5, ADD 3, STORE, HALT gives 8.

## External hardware

None.