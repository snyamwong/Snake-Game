# This program uses the instructions defined in the
# basic_microcode file. It adds the numbers from 100
# down to 1 and stores the result in memory location 256.
# (c) GPL3 Warren Toomey, 2012
#
main:	li	r0, 65535 # 
	li	r1, 65535		# 
	li	r2, 65535		# 
	li r3, 65535
	li r4, 65535 #65535
	li r5, 65535
	li r6, -1
	li r7, 2
	
loop1:	add r1, r1, r6
	add r3, r3, r6
	add r5, r5, r6
	mul	r6, r6, r7 
	add r2, r2, r6	
	add r0, r0, r6
	add r4, r4, r6
	add r5, r5, r6
	mul r6, r6, r7
	jnez r5, loop1
  	
	#GOAL
	li r0, 32768
	
	#clears out all the other register
	li r1, 0
	li r2, 0
	li r3, 0
	li r4, 0
	li r5, 1
	li r6, 2
	
	#maybe another loading screen here?
	
	#snake maybe implement loop here? 6 blocks long
	li r3, 2016
	li r3, 4032
	li r3, 8064
	li r3, 16128
	li r3, 32256
	li r3, 64512
	
	#inc disgusting pleb math that is extremely hard to keep track of 
	
	#move left
	li r7, 32768
	add r2, r2, r7
	
	li r7, 1024
	sub r3, r3, r7
	
	#move left (2)
	li r7, 32768
	add r1, r1, r7
	
	li r7, 2048
	sub r3, r3, r7
	
	#GOAL (snake should be 7 blocks long now)
	li r7, 64
	add r3, r3, r7 
	
	#move down on r0 
	li r7, 16384
	add r0, r0, r7
	
	#move left (3)
	li r7, 4096
	sub r3, r3, r7
	
	#move down on r0 and move up on r3(1)
	li r7, 8192
	add r0, r0, r7

	li r7, 8192
	sub r3, r3, r7
	
	#move down on r0 and move up on r3(2)
	li r7, 4096
	add r0, r0, r7
	
	#move up on r3
	li r7, 16384
	sub r3, r3, r7
	
	#move down on r0 and clear r3(3)
	li r7, 2048
	add r0, r0, r7

	li r7, 32768
	sub r3, r3, r7
	
	#move down on r0 and clear r2(4)
	li r7, 1024
	add r0, r0, r7
	
	li r7, 32768
	sub r2, r2, r7
	
	#move down on r0 and clear r1(5)
	li r7, 512
	add r0, r0, r7
	
	li r7, 32768
	sub r1, r1, r7
	
	#move down on ro(6)
	li r7, 256
	add r0, r0, r7
	
	li r7, 32768
	sub r0, r0, r7
	
	#move down on r0 (7)
	li r7, 128
	add r0, r0, r7
	
	li r7, 16384
	sub r0, r0, r7
	
	#move down on r0(8)
	li r7, 64
	add r0, r0, r7
	
	li r7, 8192
	sub r0, r0, r7
	
	#move down on r0 and move left on r1(9)
	li r7, 64
	add r1, r1, r7
	
	li r7, 4096
	sub r0, r0, r7
	
	#move down on r0 and move left on r2(10)
	li r7, 64
	add r2, r2, r7
	
	li r7, 2048
	sub r0, r0, r7
		
	#GOAL snake should be 8 blocks long right now
	li r7, 8192
	add r1, r1, r7
	
	#move up on r3 and move down on r0
	li r7, 128
	add r3, r3, r7
	
	li r7, 1024
	sub r0, r0, r7
	
	#move up on r3 and move down on r0 (1)
	li r7, 256
	add r3, r3, r7
	
	li r7, 512
	sub r0, r0, r7
	
	#move up on r3 and move down on r0 (2)
	li r7, 512
	add r3, r3, r7
	
	li r7, 256
	sub r0, r0, r7
	
	#move up on r3 and move down on r0(3)
	li r7, 1024
	add r3, r3, r7
	
	li r7, 128
	sub r0, r0, r7
	
	#move up on r3 and move down on r0(4)
	li r7, 2048
	add r3, r3, r7
	
	li r7, 64
	sub r0, r0, r7
	
	#move up on r3 and clear r1(5)
	li r7, 4096
	add r3, r3, r7
	
	li r7, 64
	sub r1, r1, r7
	
	#move up on r3 and clear r2(6)
	li r7, 8192
	add r3, r3, r7
	
	li r7, 64
	sub r2, r2, r7
	
	#move left on r2 and move up r3(7)
	li r7, 8192
	add r2, r2, r7
	
	li r7, 64
	sub r3, r3, r7
	
	#GOAL(snake should be 9 blocks now)
	li r4, 8
	
	#move down on r1 and move up r3
	li r7, 4096
	add r1, r1, r7
	
	li r7, 128
	sub r3, r3, r7
	
	#move down on r1 and move up r3 (1)
	li r7, 2048
	add r1, r1, r7
	
	li r7, 256
	sub r3, r3, r7
	
	#move down on r1 and move up r3 (2)
	li r7, 1024
	add r1, r1, r7
	
	li r7, 512
	sub r3, r3, r7
	
	#move down on r1 and move up r3 (3)
	li r7, 512
	add r1, r1, r7
	
	li r7, 1024
	sub r3, r3, r7
	
	#move down on r1 and move up r3 (4)
	li r7, 256
	add r1, r1, r7 
	
	li r7, 2048
	sub r3, r3, r7
	
	#move down on r1 and move up r3 (5)
	li r7, 128
	add r1, r1, r7
	
	li r7, 4096
	sub r3, r3, r7
	
	#move down on r1 and move up r3 (6)
	li r7, 64
	add r1, r1, r7
	
	li r7, 8192
	sub r3, r3, r7
	
	#move down on r1 and clear r2 (6)
	li r7, 32
	add r1, r1, r7
	
	li r7, 8192
	sub r2, r2, r7
	
	#move down on r1 (7)
	li r7, 16
	add r1, r1, r7
	
	li r7, 8192
	sub r1, r1, r7
	
	#move down on r1 (8)
	li r7, 8
	add r1, r1, r7
	
	li r7, 4096
	sub r1, r1, r7
	
	#move down on r1 and move right on r2 (9)
	li r7, 8
	add r2, r2, r7
	
	li r7, 2048
	sub r1, r1, r7
	
	#move down on r1 and move right on r3 (10)
	li r7, 8
	add r3, r3, r7
	
	li r7, 1024
	sub r1, r1, r7
	
	#GOAL (snake should be 9 blocks long now)
	li r7, 8192
	add r2, r2, r7
	
	#move up on r4 and move down on r1 
	li r7, 16
	add r4, r4, r7
	
	li r7, 512
	sub r1, r1, r7
	
	#move up on r4 and move down on r1 (1)
	li r7, 32
	add r4, r4, r7
	
	li r7, 256
	sub r1, r1, r7
	
	#move up on r4 and move down on r1 (2)
	li r7, 64
	add r4, r4, r7
	
	li r7, 128
	sub r1, r1, r7
	
	#move up on r4 and move down on r1 (3)
	li r7, 128
	add r4, r4, r7
	
	li r7, 64
	sub r1, r1, r7
	
	#move up on r4 and move on r1 (4)
	li r7, 256
	add r4, r4, r7
	
	li r7, 32
	sub r1, r1, r7
	
	#move up on r4 and move on r1 (5)
	li r7, 512
	add r4, r4, r7
	
	li r7, 16
	sub r1, r1, r7
	
	#move up on r4 and move on r1 (6)
	li r7, 1024
	add r4, r4, r7
	
	li r7, 8
	sub r1, r1, r7
	
	#move up on r4 and move right on r3 (7)
	li r7, 2048
	add r4, r4, r7
	
	li r7, 8
	sub r2, r2, r7
	
	#move up on r4 and move right on r3 (8)
	li r7, 4096
	add r4, r4, r7
	
	li r7, 8
	sub r3, r3, r7
	
	#move up on r4 (9)
	li r7, 8192
	add r4, r4, r7
	
	li r7, 8
	sub r4, r4, r7
	
	#move up on r4 (10)
	li r7, 8192
	add r3, r3, r7
	
	li r7, 16
	sub r4, r4, r7
	
	#GOAL(snake should be 10 blocks long now)
	li r1, 32
	
	#move left to r1 and move up on r4
	li r7, 8192
	add r1, r1, r7
	
	li r7, 32
	sub r4, r4, r7
	
	#move left to r1 and move up on r4 (1)
	li r7, 4096
	add r1, r1, r7
	
	li r7, 64
	sub r4, r4, r7
	
	#move left to r1 and move up on r4 (2)
	li r7, 2048
	add r1, r1, r7
	
	li r7, 128
	sub r4, r4, r7
	
	#move left to r1 and move up on r4 (3)
	li r7, 1024
	add r1, r1, r7
	
	li r7, 256
	sub r4, r4, r7
	
	#move left to r1 and move up on r4 (4)
	li r7, 512
	add r1, r1, r7
	
	li r7, 512
	sub r4, r4, r7
	
	#move left to r1 and move up on r4 (5)
	li r7, 256
	add r1, r1, r7
	
	li r7, 1024
	sub r4, r4, r7
	
	#move left to r1 and move up on r4 (6)
	li r7, 128
	add r1, r1, r7
	
	li r7, 2048
	sub r4, r4, r7
	
	#move left to r1 and move up on r4 (7)
	li r7, 64
	add r1, r1, r7
	
	li r7, 4096
	sub r4, r4, r7
	
	#GOAL (snake should be 11 blocks long, but should kill itself after this)
	li r7, 256
	add r3, r3, r7
	
	#move right to r2 and clear r4
	li r7, 32
	add r2, r2, r7
	
	li r7, 8192
	sub r4, r4, r7
	
	#move right to r3 and clear r3 (1)
	li r7, 32
	add r3, r3, r7
	
	li r7, 8192
	sub r3, r3, r7
	
	#move up to r3 and clear r2 (2)
	li r7, 64
	add r3, r3, r7
	
	li r7, 8192
	sub r2, r2, r7
	
	#move up to r3 and move r1 (3)
	li r7, 128
	add r3, r3, r7
	
	li r7, 8192
	sub r1, r1, r7
	
	#GOAL (snake should be 12 blocks long, it dies now)
	li r7, 8
	add r2, r2, r7
	
	#move from r3 to r2
	li r7, 256
	add r2, r2, r7
	
	li r7, 4096
	sub r1, r1, r7
	
	#snake is donezo, clears screen and outputs gg
	li r0, 0
	li r1, 0
	li r2, 0
	li r3, 0
	li r4, 0
	li r5, 1
	li r6, 0
	li r7, 0
	
	#gg
	li r1, 15420
	li r2, 9252
	li r3, 11308
	
	#infinite loop so r0 doesn't zero out because this cpu makes r0 empty idk why
loop: jnez r5, loop

	
	


	