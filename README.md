# 8-bit-CPU

Input will be represented as 8 : (7 down to 4) = instruction
(3 down to 0) = address
Instructions:
1- LDA <ADDR> (0000):
- This instruction loads a value from <ADDR> in RAM to a register.
- LDA 0100 will load the value at memory location 0100 to a register. It will be coded as 000001000 in the CPU.
2- STA<ADDR> (0001):
- This instruction stores the value from A register to <ADDR> in RAM.
3- ADD<ADDR> (0010):
- This instruction adds value at <ADDR> with contents of A register and stores the result in A register.
4-SUB<ADDR> (0011):
- This instruction subtracts value at <ADDR> with contents of A register and stores the result in A register.
5-JMP<ADDR> (0100):
- This instruction starts executing instruction in given <ADDR>
6-OUT<ADDR> (0101):
- This instruction outputs content of memory location given by <ADDR> on CPUs output port.
7-HLT (0110):
- This instruction Halts all the operations of our CPU.
Instruction Execution:
1- Fetch instruction
2- Increment program counter
3- Execute.
Common instructions:
- Fetch:
- Load program counter value into our MAR.
- Load contents of memory specified by MAR in the instruction register.
- Increment program Counter:
- We increment the program counter so that it points to the next instruction to be executed
Execute:
- LDA:
- Load address specified in instruction register in MAR.
- Load contents of memory of memory location specified by MAR into A register.
- STA:
- Load address specified in instruction register in MAR.
- Load contents of A register into memory location specified by MAR.
- ADD:
- Load address specified in instruction register in MAR.
- Load contents of memory into register B.
- Perform addition by enabling ALU
- Disable ALU
- Store the result of ALU into A register.
- JMP:
- Load address specified in instruction to program counter.
- HLT:
- Set the HLT signal to high
