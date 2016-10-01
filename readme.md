
CPU design from ISA

ISA specification

1.There are 8 general-purpose registers, r0 to r7.
2.All the registers are 16-bit in size.
3.The memory address is 16-bit; memory width is 16 bit.
4.The instructions can be either 16-bit or 32-bit in size.
5.There are four status flags, zero (Z), carry (C), overflow (V) and sign (S) which are affected by the arithmetic and logical instructions and used by jump instructions.
6.Each instruction has at most two operands.

The addressing modes (for operand 2 only) are:
1.Immediate (with 16-bit operand)
2.Register
3.Base-Indexed addressing (with 16-bit displacement)
4.Base addressing (with 16-bit displacement)
5.(Memory) Indirect (with 16-bit displacement)
6.PC relative (with 16 bit displacement)

The instruction set is as follows:
1.Load and store: ld, st with a 16-bit displacement (depending upon the addressing mode).
2.The dst operand for the load instruction and the src operand for the store instruction is always in register mode.

1.Arithmetic and logical instructions: add, sub, and, or, mns, cmp using two's complement arithmetic
2.The dst operand for these instructions is always in register mode.




