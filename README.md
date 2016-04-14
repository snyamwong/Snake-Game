# COMP1200Project
The program is essentially a self run snake game, and once it dies it'll say gg

massem and uassem are the compilers for the RAM and ROM, both uses Perl so it's disgusting and I'm never going to look into it

basic_program.ram is the program to load into the RAM
(basic_program.s is well documented unlike the other stuff)
ucontrol.rom and udecision.rom are the programs to load into the ROM
(basic_microcode is the origin file)

I only implemented about 1/5 of the total instructions.

load microcpu.circ to run the program

The CPU must support at minimum: conditional jumps, arithmetic, logic, and loading and storing data to RAM. 
(all conditions are met)

Is this CPU a Harvard architecture or von Neumann architecture?
(Harvard, the cpu has a ROM and RAM)

How wide are the registers?
(16 bit, the whole cpu is 16 bit)
(There are also only 8 registers total)

