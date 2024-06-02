
rtarget:	file format elf64-x86-64

Disassembly of section .init:

0000000000400b88 <_init>:
  400b88: 48 83 ec 08                  	subq	$8, %rsp
  400b8c: 48 8b 05 65 44 20 00         	movq	2114661(%rip), %rax     # 0x604ff8 <write@@GLIBC_2.2.5+0x604ff8>
  400b93: 48 85 c0                     	testq	%rax, %rax
  400b96: 74 05                        	je	0x400b9d <_init+0x15>
  400b98: e8 13 02 00 00               	callq	0x400db0 <write@@GLIBC_2.2.5+0x400db0>
  400b9d: 48 83 c4 08                  	addq	$8, %rsp
  400ba1: c3                           	retq

Disassembly of section .plt:

0000000000400bb0 <.plt>:
  400bb0: ff 35 52 44 20 00            	pushq	2114642(%rip)           # 0x605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400bb6: ff 25 54 44 20 00            	jmpq	*2114644(%rip)          # 0x605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400bbc: 0f 1f 40 00                  	nopl	(%rax)

0000000000400bc0 <__errno_location@plt>:
  400bc0: ff 25 52 44 20 00            	jmpq	*2114642(%rip)          # 0x605018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400bc6: 68 00 00 00 00               	pushq	$0
  400bcb: e9 e0 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400bd0 <srandom@plt>:
  400bd0: ff 25 4a 44 20 00            	jmpq	*2114634(%rip)          # 0x605020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400bd6: 68 01 00 00 00               	pushq	$1
  400bdb: e9 d0 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400be0 <strncmp@plt>:
  400be0: ff 25 42 44 20 00            	jmpq	*2114626(%rip)          # 0x605028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400be6: 68 02 00 00 00               	pushq	$2
  400beb: e9 c0 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400bf0 <strcpy@plt>:
  400bf0: ff 25 3a 44 20 00            	jmpq	*2114618(%rip)          # 0x605030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400bf6: 68 03 00 00 00               	pushq	$3
  400bfb: e9 b0 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400c00 <puts@plt>:
  400c00: ff 25 32 44 20 00            	jmpq	*2114610(%rip)          # 0x605038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400c06: 68 04 00 00 00               	pushq	$4
  400c0b: e9 a0 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400c10 <write@plt>:
  400c10: ff 25 2a 44 20 00            	jmpq	*2114602(%rip)          # 0x605040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400c16: 68 05 00 00 00               	pushq	$5
  400c1b: e9 90 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400c20 <__stack_chk_fail@plt>:
  400c20: ff 25 22 44 20 00            	jmpq	*2114594(%rip)          # 0x605048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400c26: 68 06 00 00 00               	pushq	$6
  400c2b: e9 80 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400c30 <mmap@plt>:
  400c30: ff 25 1a 44 20 00            	jmpq	*2114586(%rip)          # 0x605050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400c36: 68 07 00 00 00               	pushq	$7
  400c3b: e9 70 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400c40 <memset@plt>:
  400c40: ff 25 12 44 20 00            	jmpq	*2114578(%rip)          # 0x605058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400c46: 68 08 00 00 00               	pushq	$8
  400c4b: e9 60 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400c50 <alarm@plt>:
  400c50: ff 25 0a 44 20 00            	jmpq	*2114570(%rip)          # 0x605060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400c56: 68 09 00 00 00               	pushq	$9
  400c5b: e9 50 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400c60 <close@plt>:
  400c60: ff 25 02 44 20 00            	jmpq	*2114562(%rip)          # 0x605068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400c66: 68 0a 00 00 00               	pushq	$10
  400c6b: e9 40 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400c70 <read@plt>:
  400c70: ff 25 fa 43 20 00            	jmpq	*2114554(%rip)          # 0x605070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400c76: 68 0b 00 00 00               	pushq	$11
  400c7b: e9 30 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400c80 <__libc_start_main@plt>:
  400c80: ff 25 f2 43 20 00            	jmpq	*2114546(%rip)          # 0x605078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400c86: 68 0c 00 00 00               	pushq	$12
  400c8b: e9 20 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400c90 <inet_addr@plt>:
  400c90: ff 25 ea 43 20 00            	jmpq	*2114538(%rip)          # 0x605080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400c96: 68 0d 00 00 00               	pushq	$13
  400c9b: e9 10 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400ca0 <signal@plt>:
  400ca0: ff 25 e2 43 20 00            	jmpq	*2114530(%rip)          # 0x605088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400ca6: 68 0e 00 00 00               	pushq	$14
  400cab: e9 00 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400cb0 <strtol@plt>:
  400cb0: ff 25 da 43 20 00            	jmpq	*2114522(%rip)          # 0x605090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400cb6: 68 0f 00 00 00               	pushq	$15
  400cbb: e9 f0 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400cc0 <memcpy@plt>:
  400cc0: ff 25 d2 43 20 00            	jmpq	*2114514(%rip)          # 0x605098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400cc6: 68 10 00 00 00               	pushq	$16
  400ccb: e9 e0 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400cd0 <time@plt>:
  400cd0: ff 25 ca 43 20 00            	jmpq	*2114506(%rip)          # 0x6050a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400cd6: 68 11 00 00 00               	pushq	$17
  400cdb: e9 d0 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400ce0 <random@plt>:
  400ce0: ff 25 c2 43 20 00            	jmpq	*2114498(%rip)          # 0x6050a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400ce6: 68 12 00 00 00               	pushq	$18
  400ceb: e9 c0 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400cf0 <_IO_getc@plt>:
  400cf0: ff 25 ba 43 20 00            	jmpq	*2114490(%rip)          # 0x6050b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400cf6: 68 13 00 00 00               	pushq	$19
  400cfb: e9 b0 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400d00 <__isoc99_sscanf@plt>:
  400d00: ff 25 b2 43 20 00            	jmpq	*2114482(%rip)          # 0x6050b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400d06: 68 14 00 00 00               	pushq	$20
  400d0b: e9 a0 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400d10 <munmap@plt>:
  400d10: ff 25 aa 43 20 00            	jmpq	*2114474(%rip)          # 0x6050c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400d16: 68 15 00 00 00               	pushq	$21
  400d1b: e9 90 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400d20 <__printf_chk@plt>:
  400d20: ff 25 a2 43 20 00            	jmpq	*2114466(%rip)          # 0x6050c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400d26: 68 16 00 00 00               	pushq	$22
  400d2b: e9 80 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400d30 <fopen@plt>:
  400d30: ff 25 9a 43 20 00            	jmpq	*2114458(%rip)          # 0x6050d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400d36: 68 17 00 00 00               	pushq	$23
  400d3b: e9 70 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400d40 <getopt@plt>:
  400d40: ff 25 92 43 20 00            	jmpq	*2114450(%rip)          # 0x6050d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400d46: 68 18 00 00 00               	pushq	$24
  400d4b: e9 60 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400d50 <strtoul@plt>:
  400d50: ff 25 8a 43 20 00            	jmpq	*2114442(%rip)          # 0x6050e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400d56: 68 19 00 00 00               	pushq	$25
  400d5b: e9 50 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400d60 <exit@plt>:
  400d60: ff 25 82 43 20 00            	jmpq	*2114434(%rip)          # 0x6050e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400d66: 68 1a 00 00 00               	pushq	$26
  400d6b: e9 40 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400d70 <connect@plt>:
  400d70: ff 25 7a 43 20 00            	jmpq	*2114426(%rip)          # 0x6050f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400d76: 68 1b 00 00 00               	pushq	$27
  400d7b: e9 30 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400d80 <__fprintf_chk@plt>:
  400d80: ff 25 72 43 20 00            	jmpq	*2114418(%rip)          # 0x6050f8 <_GLOBAL_OFFSET_TABLE_+0xf8>
  400d86: 68 1c 00 00 00               	pushq	$28
  400d8b: e9 20 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400d90 <__sprintf_chk@plt>:
  400d90: ff 25 6a 43 20 00            	jmpq	*2114410(%rip)          # 0x605100 <_GLOBAL_OFFSET_TABLE_+0x100>
  400d96: 68 1d 00 00 00               	pushq	$29
  400d9b: e9 10 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400da0 <socket@plt>:
  400da0: ff 25 62 43 20 00            	jmpq	*2114402(%rip)          # 0x605108 <_GLOBAL_OFFSET_TABLE_+0x108>
  400da6: 68 1e 00 00 00               	pushq	$30
  400dab: e9 00 fe ff ff               	jmp	0x400bb0 <.plt>

Disassembly of section .plt.got:

0000000000400db0 <.plt.got>:
  400db0: ff 25 42 42 20 00            	jmpq	*2114114(%rip)          # 0x604ff8 <write@@GLIBC_2.2.5+0x604ff8>
  400db6: 66 90                        	nop

Disassembly of section .text:

0000000000400dc0 <_start>:
  400dc0: 31 ed                        	xorl	%ebp, %ebp
  400dc2: 49 89 d1                     	movq	%rdx, %r9
  400dc5: 5e                           	popq	%rsi
  400dc6: 48 89 e2                     	movq	%rsp, %rdx
  400dc9: 48 83 e4 f0                  	andq	$-16, %rsp
  400dcd: 50                           	pushq	%rax
  400dce: 54                           	pushq	%rsp
  400dcf: 49 c7 c0 10 2d 40 00         	movq	$4205840, %r8           # imm = 0x402D10
  400dd6: 48 c7 c1 a0 2c 40 00         	movq	$4205728, %rcx          # imm = 0x402CA0
  400ddd: 48 c7 c7 3c 10 40 00         	movq	$4198460, %rdi          # imm = 0x40103C
  400de4: e8 97 fe ff ff               	callq	0x400c80 <__libc_start_main@plt>
  400de9: f4                           	hlt
  400dea: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)

0000000000400df0 <deregister_tm_clones>:
  400df0: b8 97 54 60 00               	movl	$6313111, %eax          # imm = 0x605497
  400df5: 55                           	pushq	%rbp
  400df6: 48 2d 90 54 60 00            	subq	$6313104, %rax          # imm = 0x605490
  400dfc: 48 83 f8 0e                  	cmpq	$14, %rax
  400e00: 48 89 e5                     	movq	%rsp, %rbp
  400e03: 76 1b                        	jbe	0x400e20 <deregister_tm_clones+0x30>
  400e05: b8 00 00 00 00               	movl	$0, %eax
  400e0a: 48 85 c0                     	testq	%rax, %rax
  400e0d: 74 11                        	je	0x400e20 <deregister_tm_clones+0x30>
  400e0f: 5d                           	popq	%rbp
  400e10: bf 90 54 60 00               	movl	$6313104, %edi          # imm = 0x605490
  400e15: ff e0                        	jmpq	*%rax
  400e17: 66 0f 1f 84 00 00 00 00 00   	nopw	(%rax,%rax)
  400e20: 5d                           	popq	%rbp
  400e21: c3                           	retq
  400e22: 0f 1f 40 00                  	nopl	(%rax)
  400e26: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000000400e30 <register_tm_clones>:
  400e30: be 90 54 60 00               	movl	$6313104, %esi          # imm = 0x605490
  400e35: 55                           	pushq	%rbp
  400e36: 48 81 ee 90 54 60 00         	subq	$6313104, %rsi          # imm = 0x605490
  400e3d: 48 c1 fe 03                  	sarq	$3, %rsi
  400e41: 48 89 e5                     	movq	%rsp, %rbp
  400e44: 48 89 f0                     	movq	%rsi, %rax
  400e47: 48 c1 e8 3f                  	shrq	$63, %rax
  400e4b: 48 01 c6                     	addq	%rax, %rsi
  400e4e: 48 d1 fe                     	sarq	%rsi
  400e51: 74 15                        	je	0x400e68 <register_tm_clones+0x38>
  400e53: b8 00 00 00 00               	movl	$0, %eax
  400e58: 48 85 c0                     	testq	%rax, %rax
  400e5b: 74 0b                        	je	0x400e68 <register_tm_clones+0x38>
  400e5d: 5d                           	popq	%rbp
  400e5e: bf 90 54 60 00               	movl	$6313104, %edi          # imm = 0x605490
  400e63: ff e0                        	jmpq	*%rax
  400e65: 0f 1f 00                     	nopl	(%rax)
  400e68: 5d                           	popq	%rbp
  400e69: c3                           	retq
  400e6a: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)

0000000000400e70 <__do_global_dtors_aux>:
  400e70: 80 3d 51 46 20 00 00         	cmpb	$0, 2115153(%rip)       # 0x6054c8 <completed.7594>
  400e77: 75 11                        	jne	0x400e8a <__do_global_dtors_aux+0x1a>
  400e79: 55                           	pushq	%rbp
  400e7a: 48 89 e5                     	movq	%rsp, %rbp
  400e7d: e8 6e ff ff ff               	callq	0x400df0 <deregister_tm_clones>
  400e82: 5d                           	popq	%rbp
  400e83: c6 05 3e 46 20 00 01         	movb	$1, 2115134(%rip)       # 0x6054c8 <completed.7594>
  400e8a: f3 c3                        	rep		retq
  400e8c: 0f 1f 40 00                  	nopl	(%rax)

0000000000400e90 <frame_dummy>:
  400e90: bf 20 4e 60 00               	movl	$6311456, %edi          # imm = 0x604E20
  400e95: 48 83 3f 00                  	cmpq	$0, (%rdi)
  400e99: 75 05                        	jne	0x400ea0 <frame_dummy+0x10>
  400e9b: eb 93                        	jmp	0x400e30 <register_tm_clones>
  400e9d: 0f 1f 00                     	nopl	(%rax)
  400ea0: b8 00 00 00 00               	movl	$0, %eax
  400ea5: 48 85 c0                     	testq	%rax, %rax
  400ea8: 74 f1                        	je	0x400e9b <frame_dummy+0xb>
  400eaa: 55                           	pushq	%rbp
  400eab: 48 89 e5                     	movq	%rsp, %rbp
  400eae: ff d0                        	callq	*%rax
  400eb0: 5d                           	popq	%rbp
  400eb1: e9 7a ff ff ff               	jmp	0x400e30 <register_tm_clones>

0000000000400eb6 <usage>:
  400eb6: 48 83 ec 08                  	subq	$8, %rsp
  400eba: 48 89 fa                     	movq	%rdi, %rdx
  400ebd: 83 3d 44 46 20 00 00         	cmpl	$0, 2115140(%rip)       # 0x605508 <is_checker>
  400ec4: 74 3e                        	je	0x400f04 <usage+0x4e>
  400ec6: be 28 2d 40 00               	movl	$4205864, %esi          # imm = 0x402D28
  400ecb: bf 01 00 00 00               	movl	$1, %edi
  400ed0: b8 00 00 00 00               	movl	$0, %eax
  400ed5: e8 46 fe ff ff               	callq	0x400d20 <__printf_chk@plt>
  400eda: bf 60 2d 40 00               	movl	$4205920, %edi          # imm = 0x402D60
  400edf: e8 1c fd ff ff               	callq	0x400c00 <puts@plt>
  400ee4: bf 60 2e 40 00               	movl	$4206176, %edi          # imm = 0x402E60
  400ee9: e8 12 fd ff ff               	callq	0x400c00 <puts@plt>
  400eee: bf 88 2d 40 00               	movl	$4205960, %edi          # imm = 0x402D88
  400ef3: e8 08 fd ff ff               	callq	0x400c00 <puts@plt>
  400ef8: bf 7a 2e 40 00               	movl	$4206202, %edi          # imm = 0x402E7A
  400efd: e8 fe fc ff ff               	callq	0x400c00 <puts@plt>
  400f02: eb 32                        	jmp	0x400f36 <usage+0x80>
  400f04: be 96 2e 40 00               	movl	$4206230, %esi          # imm = 0x402E96
  400f09: bf 01 00 00 00               	movl	$1, %edi
  400f0e: b8 00 00 00 00               	movl	$0, %eax
  400f13: e8 08 fe ff ff               	callq	0x400d20 <__printf_chk@plt>
  400f18: bf b0 2d 40 00               	movl	$4206000, %edi          # imm = 0x402DB0
  400f1d: e8 de fc ff ff               	callq	0x400c00 <puts@plt>
  400f22: bf d8 2d 40 00               	movl	$4206040, %edi          # imm = 0x402DD8
  400f27: e8 d4 fc ff ff               	callq	0x400c00 <puts@plt>
  400f2c: bf b4 2e 40 00               	movl	$4206260, %edi          # imm = 0x402EB4
  400f31: e8 ca fc ff ff               	callq	0x400c00 <puts@plt>
  400f36: bf 00 00 00 00               	movl	$0, %edi
  400f3b: e8 20 fe ff ff               	callq	0x400d60 <exit@plt>

0000000000400f40 <initialize_target>:
  400f40: 55                           	pushq	%rbp
  400f41: 53                           	pushq	%rbx
  400f42: 48 81 ec 18 20 00 00         	subq	$8216, %rsp             # imm = 0x2018
  400f49: 89 f5                        	movl	%esi, %ebp
  400f4b: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
  400f54: 48 89 84 24 08 20 00 00      	movq	%rax, 8200(%rsp)
  400f5c: 31 c0                        	xorl	%eax, %eax
  400f5e: 89 3d 94 45 20 00            	movl	%edi, 2114964(%rip)     # 0x6054f8 <check_level>
  400f64: 8b 3d de 41 20 00            	movl	2114014(%rip), %edi     # 0x605148 <target_id>
  400f6a: e8 0e 1d 00 00               	callq	0x402c7d <gencookie>
  400f6f: 89 05 8f 45 20 00            	movl	%eax, 2114959(%rip)     # 0x605504 <cookie>
  400f75: 89 c7                        	movl	%eax, %edi
  400f77: e8 01 1d 00 00               	callq	0x402c7d <gencookie>
  400f7c: 89 05 7e 45 20 00            	movl	%eax, 2114942(%rip)     # 0x605500 <authkey>
  400f82: 8b 05 c0 41 20 00            	movl	2113984(%rip), %eax     # 0x605148 <target_id>
  400f88: 8d 78 01                     	leal	1(%rax), %edi
  400f8b: e8 40 fc ff ff               	callq	0x400bd0 <srandom@plt>
  400f90: e8 4b fd ff ff               	callq	0x400ce0 <random@plt>
  400f95: 89 c7                        	movl	%eax, %edi
  400f97: e8 7a 02 00 00               	callq	0x401216 <scramble>
  400f9c: 89 c3                        	movl	%eax, %ebx
  400f9e: 85 ed                        	testl	%ebp, %ebp
  400fa0: 74 18                        	je	0x400fba <initialize_target+0x7a>
  400fa2: bf 00 00 00 00               	movl	$0, %edi
  400fa7: e8 24 fd ff ff               	callq	0x400cd0 <time@plt>
  400fac: 89 c7                        	movl	%eax, %edi
  400fae: e8 1d fc ff ff               	callq	0x400bd0 <srandom@plt>
  400fb3: e8 28 fd ff ff               	callq	0x400ce0 <random@plt>
  400fb8: eb 05                        	jmp	0x400fbf <initialize_target+0x7f>
  400fba: b8 00 00 00 00               	movl	$0, %eax
  400fbf: 01 c3                        	addl	%eax, %ebx
  400fc1: 0f b7 db                     	movzwl	%bx, %ebx
  400fc4: 8d 04 dd 00 01 00 00         	leal	256(,%rbx,8), %eax
  400fcb: 89 c0                        	movl	%eax, %eax
  400fcd: 48 89 05 ac 44 20 00         	movq	%rax, 2114732(%rip)     # 0x605480 <buf_offset>
  400fd4: c6 05 4d 51 20 00 72         	movb	$114, 2117965(%rip)     # 0x606128 <target_prefix>
  400fdb: 83 3d a6 44 20 00 00         	cmpl	$0, 2114726(%rip)       # 0x605488 <notify>
  400fe2: 74 36                        	je	0x40101a <initialize_target+0xda>
  400fe4: 83 3d 1d 45 20 00 00         	cmpl	$0, 2114845(%rip)       # 0x605508 <is_checker>
  400feb: 75 2d                        	jne	0x40101a <initialize_target+0xda>
  400fed: 48 89 e7                     	movq	%rsp, %rdi
  400ff0: e8 81 1a 00 00               	callq	0x402a76 <init_driver>
  400ff5: 85 c0                        	testl	%eax, %eax
  400ff7: 79 21                        	jns	0x40101a <initialize_target+0xda>
  400ff9: 48 89 e2                     	movq	%rsp, %rdx
  400ffc: be 08 2e 40 00               	movl	$4206088, %esi          # imm = 0x402E08
  401001: bf 01 00 00 00               	movl	$1, %edi
  401006: b8 00 00 00 00               	movl	$0, %eax
  40100b: e8 10 fd ff ff               	callq	0x400d20 <__printf_chk@plt>
  401010: bf 08 00 00 00               	movl	$8, %edi
  401015: e8 46 fd ff ff               	callq	0x400d60 <exit@plt>
  40101a: 48 8b 84 24 08 20 00 00      	movq	8200(%rsp), %rax
  401022: 64 48 33 04 25 28 00 00 00   	xorq	%fs:40, %rax
  40102b: 74 05                        	je	0x401032 <initialize_target+0xf2>
  40102d: e8 ee fb ff ff               	callq	0x400c20 <__stack_chk_fail@plt>
  401032: 48 81 c4 18 20 00 00         	addq	$8216, %rsp             # imm = 0x2018
  401039: 5b                           	popq	%rbx
  40103a: 5d                           	popq	%rbp
  40103b: c3                           	retq

000000000040103c <main>:
  40103c: 41 56                        	pushq	%r14
  40103e: 41 55                        	pushq	%r13
  401040: 41 54                        	pushq	%r12
  401042: 55                           	pushq	%rbp
  401043: 53                           	pushq	%rbx
  401044: 41 89 fc                     	movl	%edi, %r12d
  401047: 48 89 f3                     	movq	%rsi, %rbx
  40104a: be 3e 1e 40 00               	movl	$4202046, %esi          # imm = 0x401E3E
  40104f: bf 0b 00 00 00               	movl	$11, %edi
  401054: e8 47 fc ff ff               	callq	0x400ca0 <signal@plt>
  401059: be f0 1d 40 00               	movl	$4201968, %esi          # imm = 0x401DF0
  40105e: bf 07 00 00 00               	movl	$7, %edi
  401063: e8 38 fc ff ff               	callq	0x400ca0 <signal@plt>
  401068: be 8c 1e 40 00               	movl	$4202124, %esi          # imm = 0x401E8C
  40106d: bf 04 00 00 00               	movl	$4, %edi
  401072: e8 29 fc ff ff               	callq	0x400ca0 <signal@plt>
  401077: 83 3d 8a 44 20 00 00         	cmpl	$0, 2114698(%rip)       # 0x605508 <is_checker>
  40107e: 74 20                        	je	0x4010a0 <main+0x64>
  401080: be da 1e 40 00               	movl	$4202202, %esi          # imm = 0x401EDA
  401085: bf 0e 00 00 00               	movl	$14, %edi
  40108a: e8 11 fc ff ff               	callq	0x400ca0 <signal@plt>
  40108f: bf 05 00 00 00               	movl	$5, %edi
  401094: e8 b7 fb ff ff               	callq	0x400c50 <alarm@plt>
  401099: bd d2 2e 40 00               	movl	$4206290, %ebp          # imm = 0x402ED2
  40109e: eb 05                        	jmp	0x4010a5 <main+0x69>
  4010a0: bd cd 2e 40 00               	movl	$4206285, %ebp          # imm = 0x402ECD
  4010a5: 48 8b 05 f4 43 20 00         	movq	2114548(%rip), %rax     # 0x6054a0 <stdin@@GLIBC_2.2.5>
  4010ac: 48 89 05 3d 44 20 00         	movq	%rax, 2114621(%rip)     # 0x6054f0 <infile>
  4010b3: 41 bd 00 00 00 00            	movl	$0, %r13d
  4010b9: 41 be 00 00 00 00            	movl	$0, %r14d
  4010bf: e9 c6 00 00 00               	jmp	0x40118a <main+0x14e>
  4010c4: 83 e8 61                     	subl	$97, %eax
  4010c7: 3c 10                        	cmpb	$16, %al
  4010c9: 0f 87 9c 00 00 00            	ja	0x40116b <main+0x12f>
  4010cf: 0f b6 c0                     	movzbl	%al, %eax
  4010d2: ff 24 c5 18 2f 40 00         	jmpq	*4206360(,%rax,8)
  4010d9: 48 8b 3b                     	movq	(%rbx), %rdi
  4010dc: e8 d5 fd ff ff               	callq	0x400eb6 <usage>
  4010e1: be 9d 31 40 00               	movl	$4207005, %esi          # imm = 0x40319D
  4010e6: 48 8b 3d bb 43 20 00         	movq	2114491(%rip), %rdi     # 0x6054a8 <optarg@@GLIBC_2.2.5>
  4010ed: e8 3e fc ff ff               	callq	0x400d30 <fopen@plt>
  4010f2: 48 89 05 f7 43 20 00         	movq	%rax, 2114551(%rip)     # 0x6054f0 <infile>
  4010f9: 48 85 c0                     	testq	%rax, %rax
  4010fc: 0f 85 88 00 00 00            	jne	0x40118a <main+0x14e>
  401102: 48 8b 0d 9f 43 20 00         	movq	2114463(%rip), %rcx     # 0x6054a8 <optarg@@GLIBC_2.2.5>
  401109: ba da 2e 40 00               	movl	$4206298, %edx          # imm = 0x402EDA
  40110e: be 01 00 00 00               	movl	$1, %esi
  401113: 48 8b 3d a6 43 20 00         	movq	2114470(%rip), %rdi     # 0x6054c0 <stderr@@GLIBC_2.2.5>
  40111a: e8 61 fc ff ff               	callq	0x400d80 <__fprintf_chk@plt>
  40111f: b8 01 00 00 00               	movl	$1, %eax
  401124: e9 e4 00 00 00               	jmp	0x40120d <main+0x1d1>
  401129: ba 10 00 00 00               	movl	$16, %edx
  40112e: be 00 00 00 00               	movl	$0, %esi
  401133: 48 8b 3d 6e 43 20 00         	movq	2114414(%rip), %rdi     # 0x6054a8 <optarg@@GLIBC_2.2.5>
  40113a: e8 11 fc ff ff               	callq	0x400d50 <strtoul@plt>
  40113f: 41 89 c6                     	movl	%eax, %r14d
  401142: eb 46                        	jmp	0x40118a <main+0x14e>
  401144: ba 0a 00 00 00               	movl	$10, %edx
  401149: be 00 00 00 00               	movl	$0, %esi
  40114e: 48 8b 3d 53 43 20 00         	movq	2114387(%rip), %rdi     # 0x6054a8 <optarg@@GLIBC_2.2.5>
  401155: e8 56 fb ff ff               	callq	0x400cb0 <strtol@plt>
  40115a: 41 89 c5                     	movl	%eax, %r13d
  40115d: eb 2b                        	jmp	0x40118a <main+0x14e>
  40115f: c7 05 1f 43 20 00 00 00 00 00	movl	$0, 2114335(%rip)       # 0x605488 <notify>
  401169: eb 1f                        	jmp	0x40118a <main+0x14e>
  40116b: 0f be d2                     	movsbl	%dl, %edx
  40116e: be f7 2e 40 00               	movl	$4206327, %esi          # imm = 0x402EF7
  401173: bf 01 00 00 00               	movl	$1, %edi
  401178: b8 00 00 00 00               	movl	$0, %eax
  40117d: e8 9e fb ff ff               	callq	0x400d20 <__printf_chk@plt>
  401182: 48 8b 3b                     	movq	(%rbx), %rdi
  401185: e8 2c fd ff ff               	callq	0x400eb6 <usage>
  40118a: 48 89 ea                     	movq	%rbp, %rdx
  40118d: 48 89 de                     	movq	%rbx, %rsi
  401190: 44 89 e7                     	movl	%r12d, %edi
  401193: e8 a8 fb ff ff               	callq	0x400d40 <getopt@plt>
  401198: 89 c2                        	movl	%eax, %edx
  40119a: 3c ff                        	cmpb	$-1, %al
  40119c: 0f 85 22 ff ff ff            	jne	0x4010c4 <main+0x88>
  4011a2: be 01 00 00 00               	movl	$1, %esi
  4011a7: 44 89 ef                     	movl	%r13d, %edi
  4011aa: e8 91 fd ff ff               	callq	0x400f40 <initialize_target>
  4011af: 83 3d 52 43 20 00 00         	cmpl	$0, 2114386(%rip)       # 0x605508 <is_checker>
  4011b6: 74 2a                        	je	0x4011e2 <main+0x1a6>
  4011b8: 44 3b 35 41 43 20 00         	cmpl	2114369(%rip), %r14d    # 0x605500 <authkey>
  4011bf: 74 21                        	je	0x4011e2 <main+0x1a6>
  4011c1: 44 89 f2                     	movl	%r14d, %edx
  4011c4: be 30 2e 40 00               	movl	$4206128, %esi          # imm = 0x402E30
  4011c9: bf 01 00 00 00               	movl	$1, %edi
  4011ce: b8 00 00 00 00               	movl	$0, %eax
  4011d3: e8 48 fb ff ff               	callq	0x400d20 <__printf_chk@plt>
  4011d8: b8 00 00 00 00               	movl	$0, %eax
  4011dd: e8 aa 08 00 00               	callq	0x401a8c <check_fail>
  4011e2: 8b 15 1c 43 20 00            	movl	2114332(%rip), %edx     # 0x605504 <cookie>
  4011e8: be 0a 2f 40 00               	movl	$4206346, %esi          # imm = 0x402F0A
  4011ed: bf 01 00 00 00               	movl	$1, %edi
  4011f2: b8 00 00 00 00               	movl	$0, %eax
  4011f7: e8 24 fb ff ff               	callq	0x400d20 <__printf_chk@plt>
  4011fc: 48 8b 3d 7d 42 20 00         	movq	2114173(%rip), %rdi     # 0x605480 <buf_offset>
  401203: e8 25 0d 00 00               	callq	0x401f2d <launch>
  401208: b8 00 00 00 00               	movl	$0, %eax
  40120d: 5b                           	popq	%rbx
  40120e: 5d                           	popq	%rbp
  40120f: 41 5c                        	popq	%r12
  401211: 41 5d                        	popq	%r13
  401213: 41 5e                        	popq	%r14
  401215: c3                           	retq

0000000000401216 <scramble>:
  401216: 48 83 ec 38                  	subq	$56, %rsp
  40121a: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
  401223: 48 89 44 24 28               	movq	%rax, 40(%rsp)
  401228: 31 c0                        	xorl	%eax, %eax
  40122a: eb 10                        	jmp	0x40123c <scramble+0x26>
  40122c: 69 d0 8f 1f 00 00            	imull	$8079, %eax, %edx       # imm = 0x1F8F
  401232: 01 fa                        	addl	%edi, %edx
  401234: 89 c1                        	movl	%eax, %ecx
  401236: 89 14 8c                     	movl	%edx, (%rsp,%rcx,4)
  401239: 83 c0 01                     	addl	$1, %eax
  40123c: 83 f8 09                     	cmpl	$9, %eax
  40123f: 76 eb                        	jbe	0x40122c <scramble+0x16>
  401241: 8b 44 24 20                  	movl	32(%rsp), %eax
  401245: 69 c0 f9 b4 00 00            	imull	$46329, %eax, %eax      # imm = 0xB4F9
  40124b: 89 44 24 20                  	movl	%eax, 32(%rsp)
  40124f: 8b 44 24 24                  	movl	36(%rsp), %eax
  401253: 69 c0 83 de 00 00            	imull	$56963, %eax, %eax      # imm = 0xDE83
  401259: 89 44 24 24                  	movl	%eax, 36(%rsp)
  40125d: 8b 44 24 04                  	movl	4(%rsp), %eax
  401261: 69 c0 ae 0b 00 00            	imull	$2990, %eax, %eax       # imm = 0xBAE
  401267: 89 44 24 04                  	movl	%eax, 4(%rsp)
  40126b: 8b 44 24 08                  	movl	8(%rsp), %eax
  40126f: 69 c0 59 b1 00 00            	imull	$45401, %eax, %eax      # imm = 0xB159
  401275: 89 44 24 08                  	movl	%eax, 8(%rsp)
  401279: 8b 44 24 24                  	movl	36(%rsp), %eax
  40127d: 69 c0 cb d1 00 00            	imull	$53707, %eax, %eax      # imm = 0xD1CB
  401283: 89 44 24 24                  	movl	%eax, 36(%rsp)
  401287: 8b 44 24 0c                  	movl	12(%rsp), %eax
  40128b: 69 c0 38 0f 00 00            	imull	$3896, %eax, %eax       # imm = 0xF38
  401291: 89 44 24 0c                  	movl	%eax, 12(%rsp)
  401295: 8b 44 24 10                  	movl	16(%rsp), %eax
  401299: 69 c0 66 af 00 00            	imull	$44902, %eax, %eax      # imm = 0xAF66
  40129f: 89 44 24 10                  	movl	%eax, 16(%rsp)
  4012a3: 8b 44 24 04                  	movl	4(%rsp), %eax
  4012a7: 69 c0 aa cd 00 00            	imull	$52650, %eax, %eax      # imm = 0xCDAA
  4012ad: 89 44 24 04                  	movl	%eax, 4(%rsp)
  4012b1: 8b 44 24 14                  	movl	20(%rsp), %eax
  4012b5: 69 c0 64 97 00 00            	imull	$38756, %eax, %eax      # imm = 0x9764
  4012bb: 89 44 24 14                  	movl	%eax, 20(%rsp)
  4012bf: 8b 44 24 1c                  	movl	28(%rsp), %eax
  4012c3: 69 c0 24 dc 00 00            	imull	$56356, %eax, %eax      # imm = 0xDC24
  4012c9: 89 44 24 1c                  	movl	%eax, 28(%rsp)
  4012cd: 8b 44 24 20                  	movl	32(%rsp), %eax
  4012d1: 69 c0 d1 15 00 00            	imull	$5585, %eax, %eax       # imm = 0x15D1
  4012d7: 89 44 24 20                  	movl	%eax, 32(%rsp)
  4012db: 8b 44 24 04                  	movl	4(%rsp), %eax
  4012df: 69 c0 bd 37 00 00            	imull	$14269, %eax, %eax      # imm = 0x37BD
  4012e5: 89 44 24 04                  	movl	%eax, 4(%rsp)
  4012e9: 8b 44 24 10                  	movl	16(%rsp), %eax
  4012ed: 69 c0 bb 1e 00 00            	imull	$7867, %eax, %eax       # imm = 0x1EBB
  4012f3: 89 44 24 10                  	movl	%eax, 16(%rsp)
  4012f7: 8b 44 24 1c                  	movl	28(%rsp), %eax
  4012fb: 69 c0 9f 14 00 00            	imull	$5279, %eax, %eax       # imm = 0x149F
  401301: 89 44 24 1c                  	movl	%eax, 28(%rsp)
  401305: 8b 44 24 0c                  	movl	12(%rsp), %eax
  401309: 69 c0 e2 93 00 00            	imull	$37858, %eax, %eax      # imm = 0x93E2
  40130f: 89 44 24 0c                  	movl	%eax, 12(%rsp)
  401313: 8b 44 24 14                  	movl	20(%rsp), %eax
  401317: 69 c0 be 03 00 00            	imull	$958, %eax, %eax        # imm = 0x3BE
  40131d: 89 44 24 14                  	movl	%eax, 20(%rsp)
  401321: 8b 44 24 20                  	movl	32(%rsp), %eax
  401325: 69 c0 34 23 00 00            	imull	$9012, %eax, %eax       # imm = 0x2334
  40132b: 89 44 24 20                  	movl	%eax, 32(%rsp)
  40132f: 8b 44 24 20                  	movl	32(%rsp), %eax
  401333: 69 c0 4c 0d 00 00            	imull	$3404, %eax, %eax       # imm = 0xD4C
  401339: 89 44 24 20                  	movl	%eax, 32(%rsp)
  40133d: 8b 44 24 04                  	movl	4(%rsp), %eax
  401341: 69 c0 51 c8 00 00            	imull	$51281, %eax, %eax      # imm = 0xC851
  401347: 89 44 24 04                  	movl	%eax, 4(%rsp)
  40134b: 8b 04 24                     	movl	(%rsp), %eax
  40134e: 69 c0 8a 0d 00 00            	imull	$3466, %eax, %eax       # imm = 0xD8A
  401354: 89 04 24                     	movl	%eax, (%rsp)
  401357: 8b 44 24 18                  	movl	24(%rsp), %eax
  40135b: 69 c0 1c 63 00 00            	imull	$25372, %eax, %eax      # imm = 0x631C
  401361: 89 44 24 18                  	movl	%eax, 24(%rsp)
  401365: 8b 44 24 08                  	movl	8(%rsp), %eax
  401369: 69 c0 47 1a 00 00            	imull	$6727, %eax, %eax       # imm = 0x1A47
  40136f: 89 44 24 08                  	movl	%eax, 8(%rsp)
  401373: 8b 44 24 1c                  	movl	28(%rsp), %eax
  401377: 69 c0 6e 7c 00 00            	imull	$31854, %eax, %eax      # imm = 0x7C6E
  40137d: 89 44 24 1c                  	movl	%eax, 28(%rsp)
  401381: 8b 44 24 04                  	movl	4(%rsp), %eax
  401385: 69 c0 95 84 00 00            	imull	$33941, %eax, %eax      # imm = 0x8495
  40138b: 89 44 24 04                  	movl	%eax, 4(%rsp)
  40138f: 8b 44 24 14                  	movl	20(%rsp), %eax
  401393: 69 c0 8c ba 00 00            	imull	$47756, %eax, %eax      # imm = 0xBA8C
  401399: 89 44 24 14                  	movl	%eax, 20(%rsp)
  40139d: 8b 44 24 04                  	movl	4(%rsp), %eax
  4013a1: 69 c0 dc 22 00 00            	imull	$8924, %eax, %eax       # imm = 0x22DC
  4013a7: 89 44 24 04                  	movl	%eax, 4(%rsp)
  4013ab: 8b 44 24 20                  	movl	32(%rsp), %eax
  4013af: 69 c0 b8 94 00 00            	imull	$38072, %eax, %eax      # imm = 0x94B8
  4013b5: 89 44 24 20                  	movl	%eax, 32(%rsp)
  4013b9: 8b 44 24 14                  	movl	20(%rsp), %eax
  4013bd: 69 c0 34 bb 00 00            	imull	$47924, %eax, %eax      # imm = 0xBB34
  4013c3: 89 44 24 14                  	movl	%eax, 20(%rsp)
  4013c7: 8b 44 24 10                  	movl	16(%rsp), %eax
  4013cb: 69 c0 a6 22 00 00            	imull	$8870, %eax, %eax       # imm = 0x22A6
  4013d1: 89 44 24 10                  	movl	%eax, 16(%rsp)
  4013d5: 8b 44 24 08                  	movl	8(%rsp), %eax
  4013d9: 69 c0 a2 97 00 00            	imull	$38818, %eax, %eax      # imm = 0x97A2
  4013df: 89 44 24 08                  	movl	%eax, 8(%rsp)
  4013e3: 8b 44 24 14                  	movl	20(%rsp), %eax
  4013e7: 69 c0 fb 5e 00 00            	imull	$24315, %eax, %eax      # imm = 0x5EFB
  4013ed: 89 44 24 14                  	movl	%eax, 20(%rsp)
  4013f1: 8b 44 24 24                  	movl	36(%rsp), %eax
  4013f5: 69 c0 63 ff 00 00            	imull	$65379, %eax, %eax      # imm = 0xFF63
  4013fb: 89 44 24 24                  	movl	%eax, 36(%rsp)
  4013ff: 8b 44 24 0c                  	movl	12(%rsp), %eax
  401403: 69 c0 a3 7d 00 00            	imull	$32163, %eax, %eax      # imm = 0x7DA3
  401409: 89 44 24 0c                  	movl	%eax, 12(%rsp)
  40140d: 8b 44 24 18                  	movl	24(%rsp), %eax
  401411: 69 c0 11 b1 00 00            	imull	$45329, %eax, %eax      # imm = 0xB111
  401417: 89 44 24 18                  	movl	%eax, 24(%rsp)
  40141b: 8b 44 24 08                  	movl	8(%rsp), %eax
  40141f: 69 c0 54 cb 00 00            	imull	$52052, %eax, %eax      # imm = 0xCB54
  401425: 89 44 24 08                  	movl	%eax, 8(%rsp)
  401429: 8b 44 24 18                  	movl	24(%rsp), %eax
  40142d: 69 c0 10 e0 00 00            	imull	$57360, %eax, %eax      # imm = 0xE010
  401433: 89 44 24 18                  	movl	%eax, 24(%rsp)
  401437: 8b 44 24 0c                  	movl	12(%rsp), %eax
  40143b: 69 c0 5e db 00 00            	imull	$56158, %eax, %eax      # imm = 0xDB5E
  401441: 89 44 24 0c                  	movl	%eax, 12(%rsp)
  401445: 8b 44 24 04                  	movl	4(%rsp), %eax
  401449: 69 c0 f2 40 00 00            	imull	$16626, %eax, %eax      # imm = 0x40F2
  40144f: 89 44 24 04                  	movl	%eax, 4(%rsp)
  401453: 8b 44 24 14                  	movl	20(%rsp), %eax
  401457: 69 c0 48 e2 00 00            	imull	$57928, %eax, %eax      # imm = 0xE248
  40145d: 89 44 24 14                  	movl	%eax, 20(%rsp)
  401461: 8b 44 24 10                  	movl	16(%rsp), %eax
  401465: 69 c0 a0 6b 00 00            	imull	$27552, %eax, %eax      # imm = 0x6BA0
  40146b: 89 44 24 10                  	movl	%eax, 16(%rsp)
  40146f: 8b 44 24 10                  	movl	16(%rsp), %eax
  401473: 69 c0 41 26 00 00            	imull	$9793, %eax, %eax       # imm = 0x2641
  401479: 89 44 24 10                  	movl	%eax, 16(%rsp)
  40147d: 8b 44 24 24                  	movl	36(%rsp), %eax
  401481: 69 c0 31 6d 00 00            	imull	$27953, %eax, %eax      # imm = 0x6D31
  401487: 89 44 24 24                  	movl	%eax, 36(%rsp)
  40148b: 8b 44 24 0c                  	movl	12(%rsp), %eax
  40148f: 69 c0 16 e9 00 00            	imull	$59670, %eax, %eax      # imm = 0xE916
  401495: 89 44 24 0c                  	movl	%eax, 12(%rsp)
  401499: 8b 44 24 20                  	movl	32(%rsp), %eax
  40149d: 69 c0 6c 6e 00 00            	imull	$28268, %eax, %eax      # imm = 0x6E6C
  4014a3: 89 44 24 20                  	movl	%eax, 32(%rsp)
  4014a7: 8b 44 24 1c                  	movl	28(%rsp), %eax
  4014ab: 69 c0 39 f8 00 00            	imull	$63545, %eax, %eax      # imm = 0xF839
  4014b1: 89 44 24 1c                  	movl	%eax, 28(%rsp)
  4014b5: 8b 44 24 14                  	movl	20(%rsp), %eax
  4014b9: 69 c0 44 c2 00 00            	imull	$49732, %eax, %eax      # imm = 0xC244
  4014bf: 89 44 24 14                  	movl	%eax, 20(%rsp)
  4014c3: 8b 44 24 24                  	movl	36(%rsp), %eax
  4014c7: 69 c0 70 a1 00 00            	imull	$41328, %eax, %eax      # imm = 0xA170
  4014cd: 89 44 24 24                  	movl	%eax, 36(%rsp)
  4014d1: 8b 44 24 24                  	movl	36(%rsp), %eax
  4014d5: 69 c0 64 d9 00 00            	imull	$55652, %eax, %eax      # imm = 0xD964
  4014db: 89 44 24 24                  	movl	%eax, 36(%rsp)
  4014df: 8b 44 24 18                  	movl	24(%rsp), %eax
  4014e3: 69 c0 56 ce 00 00            	imull	$52822, %eax, %eax      # imm = 0xCE56
  4014e9: 89 44 24 18                  	movl	%eax, 24(%rsp)
  4014ed: 8b 44 24 20                  	movl	32(%rsp), %eax
  4014f1: 69 c0 07 65 00 00            	imull	$25863, %eax, %eax      # imm = 0x6507
  4014f7: 89 44 24 20                  	movl	%eax, 32(%rsp)
  4014fb: 8b 44 24 14                  	movl	20(%rsp), %eax
  4014ff: 69 c0 12 49 00 00            	imull	$18706, %eax, %eax      # imm = 0x4912
  401505: 89 44 24 14                  	movl	%eax, 20(%rsp)
  401509: 8b 44 24 20                  	movl	32(%rsp), %eax
  40150d: 69 c0 1a c8 00 00            	imull	$51226, %eax, %eax      # imm = 0xC81A
  401513: 89 44 24 20                  	movl	%eax, 32(%rsp)
  401517: 8b 44 24 10                  	movl	16(%rsp), %eax
  40151b: 69 c0 6e 3f 00 00            	imull	$16238, %eax, %eax      # imm = 0x3F6E
  401521: 89 44 24 10                  	movl	%eax, 16(%rsp)
  401525: 8b 44 24 08                  	movl	8(%rsp), %eax
  401529: 69 c0 3d 7c 00 00            	imull	$31805, %eax, %eax      # imm = 0x7C3D
  40152f: 89 44 24 08                  	movl	%eax, 8(%rsp)
  401533: 8b 44 24 14                  	movl	20(%rsp), %eax
  401537: 69 c0 94 ce 00 00            	imull	$52884, %eax, %eax      # imm = 0xCE94
  40153d: 89 44 24 14                  	movl	%eax, 20(%rsp)
  401541: 8b 44 24 0c                  	movl	12(%rsp), %eax
  401545: 69 c0 8a be 00 00            	imull	$48778, %eax, %eax      # imm = 0xBE8A
  40154b: 89 44 24 0c                  	movl	%eax, 12(%rsp)
  40154f: 8b 44 24 1c                  	movl	28(%rsp), %eax
  401553: 69 c0 5a 76 00 00            	imull	$30298, %eax, %eax      # imm = 0x765A
  401559: 89 44 24 1c                  	movl	%eax, 28(%rsp)
  40155d: 8b 44 24 20                  	movl	32(%rsp), %eax
  401561: 69 c0 ce af 00 00            	imull	$45006, %eax, %eax      # imm = 0xAFCE
  401567: 89 44 24 20                  	movl	%eax, 32(%rsp)
  40156b: 8b 44 24 18                  	movl	24(%rsp), %eax
  40156f: 69 c0 20 54 00 00            	imull	$21536, %eax, %eax      # imm = 0x5420
  401575: 89 44 24 18                  	movl	%eax, 24(%rsp)
  401579: 8b 44 24 20                  	movl	32(%rsp), %eax
  40157d: 69 c0 2d 6b 00 00            	imull	$27437, %eax, %eax      # imm = 0x6B2D
  401583: 89 44 24 20                  	movl	%eax, 32(%rsp)
  401587: 8b 44 24 04                  	movl	4(%rsp), %eax
  40158b: 69 c0 49 24 00 00            	imull	$9289, %eax, %eax       # imm = 0x2449
  401591: 89 44 24 04                  	movl	%eax, 4(%rsp)
  401595: 8b 44 24 24                  	movl	36(%rsp), %eax
  401599: 69 c0 8f a3 00 00            	imull	$41871, %eax, %eax      # imm = 0xA38F
  40159f: 89 44 24 24                  	movl	%eax, 36(%rsp)
  4015a3: 8b 44 24 04                  	movl	4(%rsp), %eax
  4015a7: 69 c0 19 ef 00 00            	imull	$61209, %eax, %eax      # imm = 0xEF19
  4015ad: 89 44 24 04                  	movl	%eax, 4(%rsp)
  4015b1: 8b 44 24 14                  	movl	20(%rsp), %eax
  4015b5: 69 c0 cc e4 00 00            	imull	$58572, %eax, %eax      # imm = 0xE4CC
  4015bb: 89 44 24 14                  	movl	%eax, 20(%rsp)
  4015bf: 8b 44 24 14                  	movl	20(%rsp), %eax
  4015c3: 69 c0 69 07 00 00            	imull	$1897, %eax, %eax       # imm = 0x769
  4015c9: 89 44 24 14                  	movl	%eax, 20(%rsp)
  4015cd: 8b 44 24 1c                  	movl	28(%rsp), %eax
  4015d1: 69 c0 1a 57 00 00            	imull	$22298, %eax, %eax      # imm = 0x571A
  4015d7: 89 44 24 1c                  	movl	%eax, 28(%rsp)
  4015db: 8b 04 24                     	movl	(%rsp), %eax
  4015de: 69 c0 ea 8e 00 00            	imull	$36586, %eax, %eax      # imm = 0x8EEA
  4015e4: 89 04 24                     	movl	%eax, (%rsp)
  4015e7: 8b 44 24 08                  	movl	8(%rsp), %eax
  4015eb: 69 c0 ec 74 00 00            	imull	$29932, %eax, %eax      # imm = 0x74EC
  4015f1: 89 44 24 08                  	movl	%eax, 8(%rsp)
  4015f5: 8b 44 24 24                  	movl	36(%rsp), %eax
  4015f9: 69 c0 41 28 00 00            	imull	$10305, %eax, %eax      # imm = 0x2841
  4015ff: 89 44 24 24                  	movl	%eax, 36(%rsp)
  401603: 8b 44 24 1c                  	movl	28(%rsp), %eax
  401607: 69 c0 0e f0 00 00            	imull	$61454, %eax, %eax      # imm = 0xF00E
  40160d: 89 44 24 1c                  	movl	%eax, 28(%rsp)
  401611: 8b 44 24 10                  	movl	16(%rsp), %eax
  401615: 69 c0 07 d9 00 00            	imull	$55559, %eax, %eax      # imm = 0xD907
  40161b: 89 44 24 10                  	movl	%eax, 16(%rsp)
  40161f: 8b 44 24 24                  	movl	36(%rsp), %eax
  401623: 69 c0 aa eb 00 00            	imull	$60330, %eax, %eax      # imm = 0xEBAA
  401629: 89 44 24 24                  	movl	%eax, 36(%rsp)
  40162d: 8b 44 24 10                  	movl	16(%rsp), %eax
  401631: 69 c0 53 da 00 00            	imull	$55891, %eax, %eax      # imm = 0xDA53
  401637: 89 44 24 10                  	movl	%eax, 16(%rsp)
  40163b: 8b 44 24 08                  	movl	8(%rsp), %eax
  40163f: 69 c0 d1 ae 00 00            	imull	$44753, %eax, %eax      # imm = 0xAED1
  401645: 89 44 24 08                  	movl	%eax, 8(%rsp)
  401649: 8b 44 24 18                  	movl	24(%rsp), %eax
  40164d: 69 c0 b2 b9 00 00            	imull	$47538, %eax, %eax      # imm = 0xB9B2
  401653: 89 44 24 18                  	movl	%eax, 24(%rsp)
  401657: 8b 44 24 20                  	movl	32(%rsp), %eax
  40165b: 69 c0 ce 7a 00 00            	imull	$31438, %eax, %eax      # imm = 0x7ACE
  401661: 89 44 24 20                  	movl	%eax, 32(%rsp)
  401665: 8b 44 24 1c                  	movl	28(%rsp), %eax
  401669: 69 c0 70 47 00 00            	imull	$18288, %eax, %eax      # imm = 0x4770
  40166f: 89 44 24 1c                  	movl	%eax, 28(%rsp)
  401673: 8b 44 24 04                  	movl	4(%rsp), %eax
  401677: 69 c0 b5 a3 00 00            	imull	$41909, %eax, %eax      # imm = 0xA3B5
  40167d: 89 44 24 04                  	movl	%eax, 4(%rsp)
  401681: 8b 44 24 18                  	movl	24(%rsp), %eax
  401685: 69 c0 50 9b 00 00            	imull	$39760, %eax, %eax      # imm = 0x9B50
  40168b: 89 44 24 18                  	movl	%eax, 24(%rsp)
  40168f: 8b 04 24                     	movl	(%rsp), %eax
  401692: 69 c0 f8 f3 00 00            	imull	$62456, %eax, %eax      # imm = 0xF3F8
  401698: 89 04 24                     	movl	%eax, (%rsp)
  40169b: 8b 44 24 18                  	movl	24(%rsp), %eax
  40169f: 69 c0 55 d2 00 00            	imull	$53845, %eax, %eax      # imm = 0xD255
  4016a5: 89 44 24 18                  	movl	%eax, 24(%rsp)
  4016a9: 8b 44 24 10                  	movl	16(%rsp), %eax
  4016ad: 69 c0 35 f3 00 00            	imull	$62261, %eax, %eax      # imm = 0xF335
  4016b3: 89 44 24 10                  	movl	%eax, 16(%rsp)
  4016b7: 8b 44 24 1c                  	movl	28(%rsp), %eax
  4016bb: 69 c0 47 6a 00 00            	imull	$27207, %eax, %eax      # imm = 0x6A47
  4016c1: 89 44 24 1c                  	movl	%eax, 28(%rsp)
  4016c5: 8b 44 24 10                  	movl	16(%rsp), %eax
  4016c9: 69 c0 98 2f 00 00            	imull	$12184, %eax, %eax      # imm = 0x2F98
  4016cf: 89 44 24 10                  	movl	%eax, 16(%rsp)
  4016d3: 8b 44 24 14                  	movl	20(%rsp), %eax
  4016d7: 69 c0 4b 59 00 00            	imull	$22859, %eax, %eax      # imm = 0x594B
  4016dd: 89 44 24 14                  	movl	%eax, 20(%rsp)
  4016e1: ba 00 00 00 00               	movl	$0, %edx
  4016e6: b8 00 00 00 00               	movl	$0, %eax
  4016eb: eb 0a                        	jmp	0x4016f7 <scramble+0x4e1>
  4016ed: 89 d1                        	movl	%edx, %ecx
  4016ef: 8b 0c 8c                     	movl	(%rsp,%rcx,4), %ecx
  4016f2: 01 c8                        	addl	%ecx, %eax
  4016f4: 83 c2 01                     	addl	$1, %edx
  4016f7: 83 fa 09                     	cmpl	$9, %edx
  4016fa: 76 f1                        	jbe	0x4016ed <scramble+0x4d7>
  4016fc: 48 8b 74 24 28               	movq	40(%rsp), %rsi
  401701: 64 48 33 34 25 28 00 00 00   	xorq	%fs:40, %rsi
  40170a: 74 05                        	je	0x401711 <scramble+0x4fb>
  40170c: e8 0f f5 ff ff               	callq	0x400c20 <__stack_chk_fail@plt>
  401711: 48 83 c4 38                  	addq	$56, %rsp
  401715: c3                           	retq

0000000000401716 <getbuf>:
  401716: 48 83 ec 28                  	subq	$40, %rsp
  40171a: 48 89 e7                     	movq	%rsp, %rdi
  40171d: e8 9f 03 00 00               	callq	0x401ac1 <Gets>
  401722: b8 01 00 00 00               	movl	$1, %eax
  401727: 48 83 c4 28                  	addq	$40, %rsp
  40172b: c3                           	retq

000000000040172c <touch1>:
  40172c: 48 83 ec 08                  	subq	$8, %rsp
  401730: c7 05 c2 3d 20 00 01 00 00 00	movl	$1, 2112962(%rip)       # 0x6054fc <vlevel>
  40173a: bf f3 2f 40 00               	movl	$4206579, %edi          # imm = 0x402FF3
  40173f: e8 bc f4 ff ff               	callq	0x400c00 <puts@plt>
  401744: bf 01 00 00 00               	movl	$1, %edi
  401749: e8 b8 05 00 00               	callq	0x401d06 <validate>
  40174e: bf 00 00 00 00               	movl	$0, %edi
  401753: e8 08 f6 ff ff               	callq	0x400d60 <exit@plt>

0000000000401758 <touch2>:
  401758: 48 83 ec 08                  	subq	$8, %rsp
  40175c: 89 fa                        	movl	%edi, %edx
  40175e: c7 05 94 3d 20 00 02 00 00 00	movl	$2, 2112916(%rip)       # 0x6054fc <vlevel>
  401768: 39 3d 96 3d 20 00            	cmpl	%edi, 2112918(%rip)     # 0x605504 <cookie>
  40176e: 75 20                        	jne	0x401790 <touch2+0x38>
  401770: be 18 30 40 00               	movl	$4206616, %esi          # imm = 0x403018
  401775: bf 01 00 00 00               	movl	$1, %edi
  40177a: b8 00 00 00 00               	movl	$0, %eax
  40177f: e8 9c f5 ff ff               	callq	0x400d20 <__printf_chk@plt>
  401784: bf 02 00 00 00               	movl	$2, %edi
  401789: e8 78 05 00 00               	callq	0x401d06 <validate>
  40178e: eb 1e                        	jmp	0x4017ae <touch2+0x56>
  401790: be 40 30 40 00               	movl	$4206656, %esi          # imm = 0x403040
  401795: bf 01 00 00 00               	movl	$1, %edi
  40179a: b8 00 00 00 00               	movl	$0, %eax
  40179f: e8 7c f5 ff ff               	callq	0x400d20 <__printf_chk@plt>
  4017a4: bf 02 00 00 00               	movl	$2, %edi
  4017a9: e8 1a 06 00 00               	callq	0x401dc8 <fail>
  4017ae: bf 00 00 00 00               	movl	$0, %edi
  4017b3: e8 a8 f5 ff ff               	callq	0x400d60 <exit@plt>

00000000004017b8 <hexmatch>:
  4017b8: 41 54                        	pushq	%r12
  4017ba: 55                           	pushq	%rbp
  4017bb: 53                           	pushq	%rbx
  4017bc: 48 83 c4 80                  	addq	$-128, %rsp
  4017c0: 89 fd                        	movl	%edi, %ebp
  4017c2: 48 89 f3                     	movq	%rsi, %rbx
  4017c5: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
  4017ce: 48 89 44 24 78               	movq	%rax, 120(%rsp)
  4017d3: 31 c0                        	xorl	%eax, %eax
  4017d5: e8 06 f5 ff ff               	callq	0x400ce0 <random@plt>
  4017da: 48 89 c1                     	movq	%rax, %rcx
  4017dd: 48 ba 0b d7 a3 70 3d 0a d7 a3	movabsq	$-6640827866535438581, %rdx # imm = 0xA3D70A3D70A3D70B
  4017e7: 48 f7 ea                     	imulq	%rdx
  4017ea: 48 01 ca                     	addq	%rcx, %rdx
  4017ed: 48 c1 fa 06                  	sarq	$6, %rdx
  4017f1: 48 89 c8                     	movq	%rcx, %rax
  4017f4: 48 c1 f8 3f                  	sarq	$63, %rax
  4017f8: 48 29 c2                     	subq	%rax, %rdx
  4017fb: 48 8d 04 92                  	leaq	(%rdx,%rdx,4), %rax
  4017ff: 48 8d 14 80                  	leaq	(%rax,%rax,4), %rdx
  401803: 48 8d 04 95 00 00 00 00      	leaq	(,%rdx,4), %rax
  40180b: 48 29 c1                     	subq	%rax, %rcx
  40180e: 4c 8d 24 0c                  	leaq	(%rsp,%rcx), %r12
  401812: 41 89 e8                     	movl	%ebp, %r8d
  401815: b9 10 30 40 00               	movl	$4206608, %ecx          # imm = 0x403010
  40181a: 48 c7 c2 ff ff ff ff         	movq	$-1, %rdx
  401821: be 01 00 00 00               	movl	$1, %esi
  401826: 4c 89 e7                     	movq	%r12, %rdi
  401829: b8 00 00 00 00               	movl	$0, %eax
  40182e: e8 5d f5 ff ff               	callq	0x400d90 <__sprintf_chk@plt>
  401833: ba 09 00 00 00               	movl	$9, %edx
  401838: 4c 89 e6                     	movq	%r12, %rsi
  40183b: 48 89 df                     	movq	%rbx, %rdi
  40183e: e8 9d f3 ff ff               	callq	0x400be0 <strncmp@plt>
  401843: 85 c0                        	testl	%eax, %eax
  401845: 0f 94 c0                     	sete	%al
  401848: 48 8b 5c 24 78               	movq	120(%rsp), %rbx
  40184d: 64 48 33 1c 25 28 00 00 00   	xorq	%fs:40, %rbx
  401856: 74 05                        	je	0x40185d <hexmatch+0xa5>
  401858: e8 c3 f3 ff ff               	callq	0x400c20 <__stack_chk_fail@plt>
  40185d: 0f b6 c0                     	movzbl	%al, %eax
  401860: 48 83 ec 80                  	subq	$-128, %rsp
  401864: 5b                           	popq	%rbx
  401865: 5d                           	popq	%rbp
  401866: 41 5c                        	popq	%r12
  401868: c3                           	retq

0000000000401869 <touch3>:
  401869: 53                           	pushq	%rbx
  40186a: 48 89 fb                     	movq	%rdi, %rbx
  40186d: c7 05 85 3c 20 00 03 00 00 00	movl	$3, 2112645(%rip)       # 0x6054fc <vlevel>
  401877: 48 89 fe                     	movq	%rdi, %rsi
  40187a: 8b 3d 84 3c 20 00            	movl	2112644(%rip), %edi     # 0x605504 <cookie>
  401880: e8 33 ff ff ff               	callq	0x4017b8 <hexmatch>
  401885: 85 c0                        	testl	%eax, %eax
  401887: 74 23                        	je	0x4018ac <touch3+0x43>
  401889: 48 89 da                     	movq	%rbx, %rdx
  40188c: be 68 30 40 00               	movl	$4206696, %esi          # imm = 0x403068
  401891: bf 01 00 00 00               	movl	$1, %edi
  401896: b8 00 00 00 00               	movl	$0, %eax
  40189b: e8 80 f4 ff ff               	callq	0x400d20 <__printf_chk@plt>
  4018a0: bf 03 00 00 00               	movl	$3, %edi
  4018a5: e8 5c 04 00 00               	callq	0x401d06 <validate>
  4018aa: eb 21                        	jmp	0x4018cd <touch3+0x64>
  4018ac: 48 89 da                     	movq	%rbx, %rdx
  4018af: be 90 30 40 00               	movl	$4206736, %esi          # imm = 0x403090
  4018b4: bf 01 00 00 00               	movl	$1, %edi
  4018b9: b8 00 00 00 00               	movl	$0, %eax
  4018be: e8 5d f4 ff ff               	callq	0x400d20 <__printf_chk@plt>
  4018c3: bf 03 00 00 00               	movl	$3, %edi
  4018c8: e8 fb 04 00 00               	callq	0x401dc8 <fail>
  4018cd: bf 00 00 00 00               	movl	$0, %edi
  4018d2: e8 89 f4 ff ff               	callq	0x400d60 <exit@plt>

00000000004018d7 <test>:
  4018d7: 48 83 ec 08                  	subq	$8, %rsp
  4018db: b8 00 00 00 00               	movl	$0, %eax
  4018e0: e8 31 fe ff ff               	callq	0x401716 <getbuf>
  4018e5: 89 c2                        	movl	%eax, %edx
  4018e7: be b8 30 40 00               	movl	$4206776, %esi          # imm = 0x4030B8
  4018ec: bf 01 00 00 00               	movl	$1, %edi
  4018f1: b8 00 00 00 00               	movl	$0, %eax
  4018f6: e8 25 f4 ff ff               	callq	0x400d20 <__printf_chk@plt>
  4018fb: 48 83 c4 08                  	addq	$8, %rsp
  4018ff: c3                           	retq

0000000000401900 <start_farm>:
  401900: b8 01 00 00 00               	movl	$1, %eax
  401905: c3                           	retq

0000000000401906 <addval_424>:
  401906: 8d 87 a7 50 90 c3            	leal	-1013952345(%rdi), %eax
  40190c: c3                           	retq

000000000040190d <getval_130>:
  40190d: b8 d8 c3 76 0f               	movl	$259441624, %eax        # imm = 0xF76C3D8
  401912: c3                           	retq

0000000000401913 <addval_232>:
  401913: 8d 87 48 89 c7 90            	leal	-1865971384(%rdi), %eax
  401919: c3                           	retq

000000000040191a <getval_104>:
  40191a: b8 48 89 c7 c3               	movl	$3284633928, %eax       # imm = 0xC3C78948
  40191f: c3                           	retq

0000000000401920 <addval_489>:
  401920: 8d 87 db 48 81 c7            	leal	-947828517(%rdi), %eax
  401926: c3                           	retq

0000000000401927 <setval_484>:
  401927: c7 07 58 90 90 c3            	movl	$3281031256, (%rdi)     # imm = 0xC3909058
  40192d: c3                           	retq

000000000040192e <addval_375>:
  40192e: 8d 87 58 90 90 c3            	leal	-1013936040(%rdi), %eax
  401934: c3                           	retq

0000000000401935 <addval_499>:
  401935: 8d 87 4a 89 c7 c3            	leal	-1010333366(%rdi), %eax
  40193b: c3                           	retq

000000000040193c <mid_farm>:
  40193c: b8 01 00 00 00               	movl	$1, %eax
  401941: c3                           	retq

0000000000401942 <add_xy>:
  401942: 48 8d 04 37                  	leaq	(%rdi,%rsi), %rax
  401946: c3                           	retq

0000000000401947 <getval_265>:
  401947: b8 5d 89 d6 90               	movl	$2429978973, %eax       # imm = 0x90D6895D
  40194c: c3                           	retq

000000000040194d <getval_350>:
  40194d: b8 89 c1 c4 d2               	movl	$3536109961, %eax       # imm = 0xD2C4C189
  401952: c3                           	retq

0000000000401953 <setval_200>:
  401953: c7 07 48 89 e0 c1            	movl	$3252717896, (%rdi)     # imm = 0xC1E08948
  401959: c3                           	retq

000000000040195a <setval_339>:
  40195a: c7 07 89 ca 18 c9            	movl	$3373845129, (%rdi)     # imm = 0xC918CA89
  401960: c3                           	retq

0000000000401961 <setval_390>:
  401961: c7 07 81 d6 08 db            	movl	$3674789505, (%rdi)     # imm = 0xDB08D681
  401967: c3                           	retq

0000000000401968 <getval_108>:
  401968: b8 48 89 e0 c2               	movl	$3269495112, %eax       # imm = 0xC2E08948
  40196d: c3                           	retq

000000000040196e <getval_332>:
  40196e: b8 48 89 e0 c3               	movl	$3286272328, %eax       # imm = 0xC3E08948
  401973: c3                           	retq

0000000000401974 <addval_235>:
  401974: 8d 87 ca e3 89 c1            	leal	-1047927862(%rdi), %eax
  40197a: c3                           	retq

000000000040197b <addval_154>:
  40197b: 8d 87 89 d6 18 c0            	leal	-1072114039(%rdi), %eax
  401981: c3                           	retq

0000000000401982 <addval_374>:
  401982: 8d 87 8b d6 08 c0            	leal	-1073162613(%rdi), %eax
  401988: c3                           	retq

0000000000401989 <getval_465>:
  401989: b8 89 c1 18 d2               	movl	$3524837769, %eax       # imm = 0xD218C189
  40198e: c3                           	retq

000000000040198f <setval_300>:
  40198f: c7 07 89 c1 c2 de            	movl	$3737305481, (%rdi)     # imm = 0xDEC2C189
  401995: c3                           	retq

0000000000401996 <addval_389>:
  401996: 8d 87 8d d6 84 d2            	leal	-763046259(%rdi), %eax
  40199c: c3                           	retq

000000000040199d <addval_352>:
  40199d: 8d 87 89 ca c3 73            	leal	1942211209(%rdi), %eax
  4019a3: c3                           	retq

00000000004019a4 <setval_233>:
  4019a4: c7 07 48 89 e0 c7            	movl	$3353381192, (%rdi)     # imm = 0xC7E08948
  4019aa: c3                           	retq

00000000004019ab <setval_471>:
  4019ab: c7 07 09 ca 08 d2            	movl	$3523791369, (%rdi)     # imm = 0xD208CA09
  4019b1: c3                           	retq

00000000004019b2 <addval_393>:
  4019b2: 8d 87 89 d6 78 c9            	leal	-914827639(%rdi), %eax
  4019b8: c3                           	retq

00000000004019b9 <setval_417>:
  4019b9: c7 07 48 89 e0 c7            	movl	$3353381192, (%rdi)     # imm = 0xC7E08948
  4019bf: c3                           	retq

00000000004019c0 <getval_451>:
  4019c0: b8 89 ca 90 c3               	movl	$3281046153, %eax       # imm = 0xC390CA89
  4019c5: c3                           	retq

00000000004019c6 <setval_480>:
  4019c6: c7 07 89 c1 30 db            	movl	$3677405577, (%rdi)     # imm = 0xDB30C189
  4019cc: c3                           	retq

00000000004019cd <addval_242>:
  4019cd: 8d 87 89 ca 28 d2            	leal	-769078647(%rdi), %eax
  4019d3: c3                           	retq

00000000004019d4 <getval_475>:
  4019d4: b8 99 ca 08 d2               	movl	$3523791513, %eax       # imm = 0xD208CA99
  4019d9: c3                           	retq

00000000004019da <getval_435>:
  4019da: b8 09 ca 38 c9               	movl	$3375942153, %eax       # imm = 0xC938CA09
  4019df: c3                           	retq

00000000004019e0 <setval_256>:
  4019e0: c7 07 12 4c 89 e0            	movl	$3767094290, (%rdi)     # imm = 0xE0894C12
  4019e6: c3                           	retq

00000000004019e7 <setval_481>:
  4019e7: c7 07 f8 89 ca 91            	movl	$2445969912, (%rdi)     # imm = 0x91CA89F8
  4019ed: c3                           	retq

00000000004019ee <getval_228>:
  4019ee: b8 88 48 99 e0               	movl	$3768141960, %eax       # imm = 0xE0994888
  4019f3: c3                           	retq

00000000004019f4 <addval_149>:
  4019f4: 8d 87 89 c1 48 d2            	leal	-766983799(%rdi), %eax
  4019fa: c3                           	retq

00000000004019fb <addval_397>:
  4019fb: 8d 87 11 81 c1 c3            	leal	-1010728687(%rdi), %eax
  401a01: c3                           	retq

0000000000401a02 <setval_421>:
  401a02: c7 07 55 e0 a9 d6            	movl	$3601457237, (%rdi)     # imm = 0xD6A9E055
  401a08: c3                           	retq

0000000000401a09 <getval_196>:
  401a09: b8 89 d6 84 c9               	movl	$3380926089, %eax       # imm = 0xC984D689
  401a0e: c3                           	retq

0000000000401a0f <getval_174>:
  401a0f: b8 14 89 c1 c3               	movl	$3284240660, %eax       # imm = 0xC3C18914
  401a14: c3                           	retq

0000000000401a15 <getval_262>:
  401a15: b8 48 89 e0 c3               	movl	$3286272328, %eax       # imm = 0xC3E08948
  401a1a: c3                           	retq

0000000000401a1b <end_farm>:
  401a1b: b8 01 00 00 00               	movl	$1, %eax
  401a20: c3                           	retq

0000000000401a21 <save_char>:
  401a21: 8b 05 fd 46 20 00            	movl	2115325(%rip), %eax     # 0x606124 <gets_cnt>
  401a27: 3d ff 03 00 00               	cmpl	$1023, %eax             # imm = 0x3FF
  401a2c: 7f 49                        	jg	0x401a77 <save_char+0x56>
  401a2e: 8d 14 40                     	leal	(%rax,%rax,2), %edx
  401a31: 89 f9                        	movl	%edi, %ecx
  401a33: c0 e9 04                     	shrb	$4, %cl
  401a36: 83 e1 0f                     	andl	$15, %ecx
  401a39: 0f b6 b1 e0 33 40 00         	movzbl	4207584(%rcx), %esi
  401a40: 48 63 ca                     	movslq	%edx, %rcx
  401a43: 40 88 b1 20 55 60 00         	movb	%sil, 6313248(%rcx)
  401a4a: 8d 4a 01                     	leal	1(%rdx), %ecx
  401a4d: 83 e7 0f                     	andl	$15, %edi
  401a50: 0f b6 b7 e0 33 40 00         	movzbl	4207584(%rdi), %esi
  401a57: 48 63 c9                     	movslq	%ecx, %rcx
  401a5a: 40 88 b1 20 55 60 00         	movb	%sil, 6313248(%rcx)
  401a61: 83 c2 02                     	addl	$2, %edx
  401a64: 48 63 d2                     	movslq	%edx, %rdx
  401a67: c6 82 20 55 60 00 20         	movb	$32, 6313248(%rdx)
  401a6e: 83 c0 01                     	addl	$1, %eax
  401a71: 89 05 ad 46 20 00            	movl	%eax, 2115245(%rip)     # 0x606124 <gets_cnt>
  401a77: f3 c3                        	rep		retq

0000000000401a79 <save_term>:
  401a79: 8b 05 a5 46 20 00            	movl	2115237(%rip), %eax     # 0x606124 <gets_cnt>
  401a7f: 8d 04 40                     	leal	(%rax,%rax,2), %eax
  401a82: 48 98                        	cltq
  401a84: c6 80 20 55 60 00 00         	movb	$0, 6313248(%rax)
  401a8b: c3                           	retq

0000000000401a8c <check_fail>:
  401a8c: 48 83 ec 08                  	subq	$8, %rsp
  401a90: 0f be 15 91 46 20 00         	movsbl	2115217(%rip), %edx     # 0x606128 <target_prefix>
  401a97: 41 b8 20 55 60 00            	movl	$6313248, %r8d          # imm = 0x605520
  401a9d: 8b 0d 55 3a 20 00            	movl	2112085(%rip), %ecx     # 0x6054f8 <check_level>
  401aa3: be db 30 40 00               	movl	$4206811, %esi          # imm = 0x4030DB
  401aa8: bf 01 00 00 00               	movl	$1, %edi
  401aad: b8 00 00 00 00               	movl	$0, %eax
  401ab2: e8 69 f2 ff ff               	callq	0x400d20 <__printf_chk@plt>
  401ab7: bf 01 00 00 00               	movl	$1, %edi
  401abc: e8 9f f2 ff ff               	callq	0x400d60 <exit@plt>

0000000000401ac1 <Gets>:
  401ac1: 41 54                        	pushq	%r12
  401ac3: 55                           	pushq	%rbp
  401ac4: 53                           	pushq	%rbx
  401ac5: 49 89 fc                     	movq	%rdi, %r12
  401ac8: c7 05 52 46 20 00 00 00 00 00	movl	$0, 2115154(%rip)       # 0x606124 <gets_cnt>
  401ad2: 48 89 fb                     	movq	%rdi, %rbx
  401ad5: eb 11                        	jmp	0x401ae8 <Gets+0x27>
  401ad7: 48 8d 6b 01                  	leaq	1(%rbx), %rbp
  401adb: 88 03                        	movb	%al, (%rbx)
  401add: 0f b6 f8                     	movzbl	%al, %edi
  401ae0: e8 3c ff ff ff               	callq	0x401a21 <save_char>
  401ae5: 48 89 eb                     	movq	%rbp, %rbx
  401ae8: 48 8b 3d 01 3a 20 00         	movq	2112001(%rip), %rdi     # 0x6054f0 <infile>
  401aef: e8 fc f1 ff ff               	callq	0x400cf0 <_IO_getc@plt>
  401af4: 83 f8 ff                     	cmpl	$-1, %eax
  401af7: 74 05                        	je	0x401afe <Gets+0x3d>
  401af9: 83 f8 0a                     	cmpl	$10, %eax
  401afc: 75 d9                        	jne	0x401ad7 <Gets+0x16>
  401afe: c6 03 00                     	movb	$0, (%rbx)
  401b01: b8 00 00 00 00               	movl	$0, %eax
  401b06: e8 6e ff ff ff               	callq	0x401a79 <save_term>
  401b0b: 4c 89 e0                     	movq	%r12, %rax
  401b0e: 5b                           	popq	%rbx
  401b0f: 5d                           	popq	%rbp
  401b10: 41 5c                        	popq	%r12
  401b12: c3                           	retq

0000000000401b13 <notify_server>:
  401b13: 53                           	pushq	%rbx
  401b14: 48 81 ec 10 40 00 00         	subq	$16400, %rsp            # imm = 0x4010
  401b1b: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
  401b24: 48 89 84 24 08 40 00 00      	movq	%rax, 16392(%rsp)
  401b2c: 31 c0                        	xorl	%eax, %eax
  401b2e: 83 3d d3 39 20 00 00         	cmpl	$0, 2111955(%rip)       # 0x605508 <is_checker>
  401b35: 0f 85 aa 01 00 00            	jne	0x401ce5 <notify_server+0x1d2>
  401b3b: 89 fb                        	movl	%edi, %ebx
  401b3d: 8b 05 e1 45 20 00            	movl	2115041(%rip), %eax     # 0x606124 <gets_cnt>
  401b43: 83 c0 64                     	addl	$100, %eax
  401b46: 3d 00 20 00 00               	cmpl	$8192, %eax             # imm = 0x2000
  401b4b: 7e 1e                        	jle	0x401b6b <notify_server+0x58>
  401b4d: be 10 32 40 00               	movl	$4207120, %esi          # imm = 0x403210
  401b52: bf 01 00 00 00               	movl	$1, %edi
  401b57: b8 00 00 00 00               	movl	$0, %eax
  401b5c: e8 bf f1 ff ff               	callq	0x400d20 <__printf_chk@plt>
  401b61: bf 01 00 00 00               	movl	$1, %edi
  401b66: e8 f5 f1 ff ff               	callq	0x400d60 <exit@plt>
  401b6b: 0f be 05 b6 45 20 00         	movsbl	2114998(%rip), %eax     # 0x606128 <target_prefix>
  401b72: 83 3d 0f 39 20 00 00         	cmpl	$0, 2111759(%rip)       # 0x605488 <notify>
  401b79: 74 08                        	je	0x401b83 <notify_server+0x70>
  401b7b: 8b 15 7f 39 20 00            	movl	2111871(%rip), %edx     # 0x605500 <authkey>
  401b81: eb 05                        	jmp	0x401b88 <notify_server+0x75>
  401b83: ba ff ff ff ff               	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
  401b88: 85 db                        	testl	%ebx, %ebx
  401b8a: 74 08                        	je	0x401b94 <notify_server+0x81>
  401b8c: 41 b9 f1 30 40 00            	movl	$4206833, %r9d          # imm = 0x4030F1
  401b92: eb 06                        	jmp	0x401b9a <notify_server+0x87>
  401b94: 41 b9 f6 30 40 00            	movl	$4206838, %r9d          # imm = 0x4030F6
  401b9a: 68 20 55 60 00               	pushq	$6313248                # imm = 0x605520
  401b9f: 56                           	pushq	%rsi
  401ba0: 50                           	pushq	%rax
  401ba1: 52                           	pushq	%rdx
  401ba2: 44 8b 05 9f 35 20 00         	movl	2110879(%rip), %r8d     # 0x605148 <target_id>
  401ba9: b9 fb 30 40 00               	movl	$4206843, %ecx          # imm = 0x4030FB
  401bae: ba 00 20 00 00               	movl	$8192, %edx             # imm = 0x2000
  401bb3: be 01 00 00 00               	movl	$1, %esi
  401bb8: 48 8d 7c 24 20               	leaq	32(%rsp), %rdi
  401bbd: b8 00 00 00 00               	movl	$0, %eax
  401bc2: e8 c9 f1 ff ff               	callq	0x400d90 <__sprintf_chk@plt>
  401bc7: 48 83 c4 20                  	addq	$32, %rsp
  401bcb: 83 3d b6 38 20 00 00         	cmpl	$0, 2111670(%rip)       # 0x605488 <notify>
  401bd2: 0f 84 81 00 00 00            	je	0x401c59 <notify_server+0x146>
  401bd8: 85 db                        	testl	%ebx, %ebx
  401bda: 74 6e                        	je	0x401c4a <notify_server+0x137>
  401bdc: 4c 8d 8c 24 00 20 00 00      	leaq	8192(%rsp), %r9
  401be4: 41 b8 00 00 00 00            	movl	$0, %r8d
  401bea: 48 89 e1                     	movq	%rsp, %rcx
  401bed: 48 8b 15 5c 35 20 00         	movq	2110812(%rip), %rdx     # 0x605150 <lab>
  401bf4: 48 8b 35 5d 35 20 00         	movq	2110813(%rip), %rsi     # 0x605158 <course>
  401bfb: 48 8b 3d 3e 35 20 00         	movq	2110782(%rip), %rdi     # 0x605140 <user_id>
  401c02: e8 d3 0f 00 00               	callq	0x402bda <driver_post>
  401c07: 85 c0                        	testl	%eax, %eax
  401c09: 79 26                        	jns	0x401c31 <notify_server+0x11e>
  401c0b: 48 8d 94 24 00 20 00 00      	leaq	8192(%rsp), %rdx
  401c13: be 17 31 40 00               	movl	$4206871, %esi          # imm = 0x403117
  401c18: bf 01 00 00 00               	movl	$1, %edi
  401c1d: b8 00 00 00 00               	movl	$0, %eax
  401c22: e8 f9 f0 ff ff               	callq	0x400d20 <__printf_chk@plt>
  401c27: bf 01 00 00 00               	movl	$1, %edi
  401c2c: e8 2f f1 ff ff               	callq	0x400d60 <exit@plt>
  401c31: bf 40 32 40 00               	movl	$4207168, %edi          # imm = 0x403240
  401c36: e8 c5 ef ff ff               	callq	0x400c00 <puts@plt>
  401c3b: bf 23 31 40 00               	movl	$4206883, %edi          # imm = 0x403123
  401c40: e8 bb ef ff ff               	callq	0x400c00 <puts@plt>
  401c45: e9 9b 00 00 00               	jmp	0x401ce5 <notify_server+0x1d2>
  401c4a: bf 2d 31 40 00               	movl	$4206893, %edi          # imm = 0x40312D
  401c4f: e8 ac ef ff ff               	callq	0x400c00 <puts@plt>
  401c54: e9 8c 00 00 00               	jmp	0x401ce5 <notify_server+0x1d2>
  401c59: 85 db                        	testl	%ebx, %ebx
  401c5b: 74 07                        	je	0x401c64 <notify_server+0x151>
  401c5d: ba f1 30 40 00               	movl	$4206833, %edx          # imm = 0x4030F1
  401c62: eb 05                        	jmp	0x401c69 <notify_server+0x156>
  401c64: ba f6 30 40 00               	movl	$4206838, %edx          # imm = 0x4030F6
  401c69: be 78 32 40 00               	movl	$4207224, %esi          # imm = 0x403278
  401c6e: bf 01 00 00 00               	movl	$1, %edi
  401c73: b8 00 00 00 00               	movl	$0, %eax
  401c78: e8 a3 f0 ff ff               	callq	0x400d20 <__printf_chk@plt>
  401c7d: 48 8b 15 bc 34 20 00         	movq	2110652(%rip), %rdx     # 0x605140 <user_id>
  401c84: be 34 31 40 00               	movl	$4206900, %esi          # imm = 0x403134
  401c89: bf 01 00 00 00               	movl	$1, %edi
  401c8e: b8 00 00 00 00               	movl	$0, %eax
  401c93: e8 88 f0 ff ff               	callq	0x400d20 <__printf_chk@plt>
  401c98: 48 8b 15 b9 34 20 00         	movq	2110649(%rip), %rdx     # 0x605158 <course>
  401c9f: be 41 31 40 00               	movl	$4206913, %esi          # imm = 0x403141
  401ca4: bf 01 00 00 00               	movl	$1, %edi
  401ca9: b8 00 00 00 00               	movl	$0, %eax
  401cae: e8 6d f0 ff ff               	callq	0x400d20 <__printf_chk@plt>
  401cb3: 48 8b 15 96 34 20 00         	movq	2110614(%rip), %rdx     # 0x605150 <lab>
  401cba: be 4d 31 40 00               	movl	$4206925, %esi          # imm = 0x40314D
  401cbf: bf 01 00 00 00               	movl	$1, %edi
  401cc4: b8 00 00 00 00               	movl	$0, %eax
  401cc9: e8 52 f0 ff ff               	callq	0x400d20 <__printf_chk@plt>
  401cce: 48 89 e2                     	movq	%rsp, %rdx
  401cd1: be 56 31 40 00               	movl	$4206934, %esi          # imm = 0x403156
  401cd6: bf 01 00 00 00               	movl	$1, %edi
  401cdb: b8 00 00 00 00               	movl	$0, %eax
  401ce0: e8 3b f0 ff ff               	callq	0x400d20 <__printf_chk@plt>
  401ce5: 48 8b 84 24 08 40 00 00      	movq	16392(%rsp), %rax
  401ced: 64 48 33 04 25 28 00 00 00   	xorq	%fs:40, %rax
  401cf6: 74 05                        	je	0x401cfd <notify_server+0x1ea>
  401cf8: e8 23 ef ff ff               	callq	0x400c20 <__stack_chk_fail@plt>
  401cfd: 48 81 c4 10 40 00 00         	addq	$16400, %rsp            # imm = 0x4010
  401d04: 5b                           	popq	%rbx
  401d05: c3                           	retq

0000000000401d06 <validate>:
  401d06: 53                           	pushq	%rbx
  401d07: 89 fb                        	movl	%edi, %ebx
  401d09: 83 3d f8 37 20 00 00         	cmpl	$0, 2111480(%rip)       # 0x605508 <is_checker>
  401d10: 74 6b                        	je	0x401d7d <validate+0x77>
  401d12: 39 3d e4 37 20 00            	cmpl	%edi, 2111460(%rip)     # 0x6054fc <vlevel>
  401d18: 74 14                        	je	0x401d2e <validate+0x28>
  401d1a: bf 62 31 40 00               	movl	$4206946, %edi          # imm = 0x403162
  401d1f: e8 dc ee ff ff               	callq	0x400c00 <puts@plt>
  401d24: b8 00 00 00 00               	movl	$0, %eax
  401d29: e8 5e fd ff ff               	callq	0x401a8c <check_fail>
  401d2e: 8b 15 c4 37 20 00            	movl	2111428(%rip), %edx     # 0x6054f8 <check_level>
  401d34: 39 d7                        	cmpl	%edx, %edi
  401d36: 74 20                        	je	0x401d58 <validate+0x52>
  401d38: 89 f9                        	movl	%edi, %ecx
  401d3a: be a0 32 40 00               	movl	$4207264, %esi          # imm = 0x4032A0
  401d3f: bf 01 00 00 00               	movl	$1, %edi
  401d44: b8 00 00 00 00               	movl	$0, %eax
  401d49: e8 d2 ef ff ff               	callq	0x400d20 <__printf_chk@plt>
  401d4e: b8 00 00 00 00               	movl	$0, %eax
  401d53: e8 34 fd ff ff               	callq	0x401a8c <check_fail>
  401d58: 0f be 15 c9 43 20 00         	movsbl	2114505(%rip), %edx     # 0x606128 <target_prefix>
  401d5f: 41 b8 20 55 60 00            	movl	$6313248, %r8d          # imm = 0x605520
  401d65: 89 f9                        	movl	%edi, %ecx
  401d67: be 80 31 40 00               	movl	$4206976, %esi          # imm = 0x403180
  401d6c: bf 01 00 00 00               	movl	$1, %edi
  401d71: b8 00 00 00 00               	movl	$0, %eax
  401d76: e8 a5 ef ff ff               	callq	0x400d20 <__printf_chk@plt>
  401d7b: eb 49                        	jmp	0x401dc6 <validate+0xc0>
  401d7d: 3b 3d 79 37 20 00            	cmpl	2111353(%rip), %edi     # 0x6054fc <vlevel>
  401d83: 74 18                        	je	0x401d9d <validate+0x97>
  401d85: bf 62 31 40 00               	movl	$4206946, %edi          # imm = 0x403162
  401d8a: e8 71 ee ff ff               	callq	0x400c00 <puts@plt>
  401d8f: 89 de                        	movl	%ebx, %esi
  401d91: bf 00 00 00 00               	movl	$0, %edi
  401d96: e8 78 fd ff ff               	callq	0x401b13 <notify_server>
  401d9b: eb 29                        	jmp	0x401dc6 <validate+0xc0>
  401d9d: 0f be 0d 84 43 20 00         	movsbl	2114436(%rip), %ecx     # 0x606128 <target_prefix>
  401da4: 89 fa                        	movl	%edi, %edx
  401da6: be c8 32 40 00               	movl	$4207304, %esi          # imm = 0x4032C8
  401dab: bf 01 00 00 00               	movl	$1, %edi
  401db0: b8 00 00 00 00               	movl	$0, %eax
  401db5: e8 66 ef ff ff               	callq	0x400d20 <__printf_chk@plt>
  401dba: 89 de                        	movl	%ebx, %esi
  401dbc: bf 01 00 00 00               	movl	$1, %edi
  401dc1: e8 4d fd ff ff               	callq	0x401b13 <notify_server>
  401dc6: 5b                           	popq	%rbx
  401dc7: c3                           	retq

0000000000401dc8 <fail>:
  401dc8: 48 83 ec 08                  	subq	$8, %rsp
  401dcc: 83 3d 35 37 20 00 00         	cmpl	$0, 2111285(%rip)       # 0x605508 <is_checker>
  401dd3: 74 0a                        	je	0x401ddf <fail+0x17>
  401dd5: b8 00 00 00 00               	movl	$0, %eax
  401dda: e8 ad fc ff ff               	callq	0x401a8c <check_fail>
  401ddf: 89 fe                        	movl	%edi, %esi
  401de1: bf 00 00 00 00               	movl	$0, %edi
  401de6: e8 28 fd ff ff               	callq	0x401b13 <notify_server>
  401deb: 48 83 c4 08                  	addq	$8, %rsp
  401def: c3                           	retq

0000000000401df0 <bushandler>:
  401df0: 48 83 ec 08                  	subq	$8, %rsp
  401df4: 83 3d 0d 37 20 00 00         	cmpl	$0, 2111245(%rip)       # 0x605508 <is_checker>
  401dfb: 74 14                        	je	0x401e11 <bushandler+0x21>
  401dfd: bf 95 31 40 00               	movl	$4206997, %edi          # imm = 0x403195
  401e02: e8 f9 ed ff ff               	callq	0x400c00 <puts@plt>
  401e07: b8 00 00 00 00               	movl	$0, %eax
  401e0c: e8 7b fc ff ff               	callq	0x401a8c <check_fail>
  401e11: bf 00 33 40 00               	movl	$4207360, %edi          # imm = 0x403300
  401e16: e8 e5 ed ff ff               	callq	0x400c00 <puts@plt>
  401e1b: bf 9f 31 40 00               	movl	$4207007, %edi          # imm = 0x40319F
  401e20: e8 db ed ff ff               	callq	0x400c00 <puts@plt>
  401e25: be 00 00 00 00               	movl	$0, %esi
  401e2a: bf 00 00 00 00               	movl	$0, %edi
  401e2f: e8 df fc ff ff               	callq	0x401b13 <notify_server>
  401e34: bf 01 00 00 00               	movl	$1, %edi
  401e39: e8 22 ef ff ff               	callq	0x400d60 <exit@plt>

0000000000401e3e <seghandler>:
  401e3e: 48 83 ec 08                  	subq	$8, %rsp
  401e42: 83 3d bf 36 20 00 00         	cmpl	$0, 2111167(%rip)       # 0x605508 <is_checker>
  401e49: 74 14                        	je	0x401e5f <seghandler+0x21>
  401e4b: bf b5 31 40 00               	movl	$4207029, %edi          # imm = 0x4031B5
  401e50: e8 ab ed ff ff               	callq	0x400c00 <puts@plt>
  401e55: b8 00 00 00 00               	movl	$0, %eax
  401e5a: e8 2d fc ff ff               	callq	0x401a8c <check_fail>
  401e5f: bf 20 33 40 00               	movl	$4207392, %edi          # imm = 0x403320
  401e64: e8 97 ed ff ff               	callq	0x400c00 <puts@plt>
  401e69: bf 9f 31 40 00               	movl	$4207007, %edi          # imm = 0x40319F
  401e6e: e8 8d ed ff ff               	callq	0x400c00 <puts@plt>
  401e73: be 00 00 00 00               	movl	$0, %esi
  401e78: bf 00 00 00 00               	movl	$0, %edi
  401e7d: e8 91 fc ff ff               	callq	0x401b13 <notify_server>
  401e82: bf 01 00 00 00               	movl	$1, %edi
  401e87: e8 d4 ee ff ff               	callq	0x400d60 <exit@plt>

0000000000401e8c <illegalhandler>:
  401e8c: 48 83 ec 08                  	subq	$8, %rsp
  401e90: 83 3d 71 36 20 00 00         	cmpl	$0, 2111089(%rip)       # 0x605508 <is_checker>
  401e97: 74 14                        	je	0x401ead <illegalhandler+0x21>
  401e99: bf c8 31 40 00               	movl	$4207048, %edi          # imm = 0x4031C8
  401e9e: e8 5d ed ff ff               	callq	0x400c00 <puts@plt>
  401ea3: b8 00 00 00 00               	movl	$0, %eax
  401ea8: e8 df fb ff ff               	callq	0x401a8c <check_fail>
  401ead: bf 48 33 40 00               	movl	$4207432, %edi          # imm = 0x403348
  401eb2: e8 49 ed ff ff               	callq	0x400c00 <puts@plt>
  401eb7: bf 9f 31 40 00               	movl	$4207007, %edi          # imm = 0x40319F
  401ebc: e8 3f ed ff ff               	callq	0x400c00 <puts@plt>
  401ec1: be 00 00 00 00               	movl	$0, %esi
  401ec6: bf 00 00 00 00               	movl	$0, %edi
  401ecb: e8 43 fc ff ff               	callq	0x401b13 <notify_server>
  401ed0: bf 01 00 00 00               	movl	$1, %edi
  401ed5: e8 86 ee ff ff               	callq	0x400d60 <exit@plt>

0000000000401eda <sigalrmhandler>:
  401eda: 48 83 ec 08                  	subq	$8, %rsp
  401ede: 83 3d 23 36 20 00 00         	cmpl	$0, 2111011(%rip)       # 0x605508 <is_checker>
  401ee5: 74 14                        	je	0x401efb <sigalrmhandler+0x21>
  401ee7: bf dc 31 40 00               	movl	$4207068, %edi          # imm = 0x4031DC
  401eec: e8 0f ed ff ff               	callq	0x400c00 <puts@plt>
  401ef1: b8 00 00 00 00               	movl	$0, %eax
  401ef6: e8 91 fb ff ff               	callq	0x401a8c <check_fail>
  401efb: ba 05 00 00 00               	movl	$5, %edx
  401f00: be 78 33 40 00               	movl	$4207480, %esi          # imm = 0x403378
  401f05: bf 01 00 00 00               	movl	$1, %edi
  401f0a: b8 00 00 00 00               	movl	$0, %eax
  401f0f: e8 0c ee ff ff               	callq	0x400d20 <__printf_chk@plt>
  401f14: be 00 00 00 00               	movl	$0, %esi
  401f19: bf 00 00 00 00               	movl	$0, %edi
  401f1e: e8 f0 fb ff ff               	callq	0x401b13 <notify_server>
  401f23: bf 01 00 00 00               	movl	$1, %edi
  401f28: e8 33 ee ff ff               	callq	0x400d60 <exit@plt>

0000000000401f2d <launch>:
  401f2d: 55                           	pushq	%rbp
  401f2e: 48 89 e5                     	movq	%rsp, %rbp
  401f31: 48 83 ec 10                  	subq	$16, %rsp
  401f35: 48 89 fa                     	movq	%rdi, %rdx
  401f38: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
  401f41: 48 89 45 f8                  	movq	%rax, -8(%rbp)
  401f45: 31 c0                        	xorl	%eax, %eax
  401f47: 48 8d 47 1e                  	leaq	30(%rdi), %rax
  401f4b: 48 83 e0 f0                  	andq	$-16, %rax
  401f4f: 48 29 c4                     	subq	%rax, %rsp
  401f52: 48 8d 7c 24 0f               	leaq	15(%rsp), %rdi
  401f57: 48 83 e7 f0                  	andq	$-16, %rdi
  401f5b: be f4 00 00 00               	movl	$244, %esi
  401f60: e8 db ec ff ff               	callq	0x400c40 <memset@plt>
  401f65: 48 8b 05 34 35 20 00         	movq	2110772(%rip), %rax     # 0x6054a0 <stdin@@GLIBC_2.2.5>
  401f6c: 48 39 05 7d 35 20 00         	cmpq	%rax, 2110845(%rip)     # 0x6054f0 <infile>
  401f73: 75 14                        	jne	0x401f89 <launch+0x5c>
  401f75: be e4 31 40 00               	movl	$4207076, %esi          # imm = 0x4031E4
  401f7a: bf 01 00 00 00               	movl	$1, %edi
  401f7f: b8 00 00 00 00               	movl	$0, %eax
  401f84: e8 97 ed ff ff               	callq	0x400d20 <__printf_chk@plt>
  401f89: c7 05 69 35 20 00 00 00 00 00	movl	$0, 2110825(%rip)       # 0x6054fc <vlevel>
  401f93: b8 00 00 00 00               	movl	$0, %eax
  401f98: e8 3a f9 ff ff               	callq	0x4018d7 <test>
  401f9d: 83 3d 64 35 20 00 00         	cmpl	$0, 2110820(%rip)       # 0x605508 <is_checker>
  401fa4: 74 14                        	je	0x401fba <launch+0x8d>
  401fa6: bf f1 31 40 00               	movl	$4207089, %edi          # imm = 0x4031F1
  401fab: e8 50 ec ff ff               	callq	0x400c00 <puts@plt>
  401fb0: b8 00 00 00 00               	movl	$0, %eax
  401fb5: e8 d2 fa ff ff               	callq	0x401a8c <check_fail>
  401fba: bf fc 31 40 00               	movl	$4207100, %edi          # imm = 0x4031FC
  401fbf: e8 3c ec ff ff               	callq	0x400c00 <puts@plt>
  401fc4: 48 8b 45 f8                  	movq	-8(%rbp), %rax
  401fc8: 64 48 33 04 25 28 00 00 00   	xorq	%fs:40, %rax
  401fd1: 74 05                        	je	0x401fd8 <launch+0xab>
  401fd3: e8 48 ec ff ff               	callq	0x400c20 <__stack_chk_fail@plt>
  401fd8: c9                           	leave
  401fd9: c3                           	retq

0000000000401fda <stable_launch>:
  401fda: 53                           	pushq	%rbx
  401fdb: 48 89 3d 06 35 20 00         	movq	%rdi, 2110726(%rip)     # 0x6054e8 <global_offset>
  401fe2: 41 b9 00 00 00 00            	movl	$0, %r9d
  401fe8: 41 b8 00 00 00 00            	movl	$0, %r8d
  401fee: b9 32 01 00 00               	movl	$306, %ecx              # imm = 0x132
  401ff3: ba 07 00 00 00               	movl	$7, %edx
  401ff8: be 00 00 10 00               	movl	$1048576, %esi          # imm = 0x100000
  401ffd: bf 00 60 58 55               	movl	$1431855104, %edi       # imm = 0x55586000
  402002: e8 29 ec ff ff               	callq	0x400c30 <mmap@plt>
  402007: 48 89 c3                     	movq	%rax, %rbx
  40200a: 48 3d 00 60 58 55            	cmpq	$1431855104, %rax       # imm = 0x55586000
  402010: 74 37                        	je	0x402049 <stable_launch+0x6f>
  402012: be 00 00 10 00               	movl	$1048576, %esi          # imm = 0x100000
  402017: 48 89 c7                     	movq	%rax, %rdi
  40201a: e8 f1 ec ff ff               	callq	0x400d10 <munmap@plt>
  40201f: b9 00 60 58 55               	movl	$1431855104, %ecx       # imm = 0x55586000
  402024: ba b0 33 40 00               	movl	$4207536, %edx          # imm = 0x4033B0
  402029: be 01 00 00 00               	movl	$1, %esi
  40202e: 48 8b 3d 8b 34 20 00         	movq	2110603(%rip), %rdi     # 0x6054c0 <stderr@@GLIBC_2.2.5>
  402035: b8 00 00 00 00               	movl	$0, %eax
  40203a: e8 41 ed ff ff               	callq	0x400d80 <__fprintf_chk@plt>
  40203f: bf 01 00 00 00               	movl	$1, %edi
  402044: e8 17 ed ff ff               	callq	0x400d60 <exit@plt>
  402049: 48 8d 90 f8 ff 0f 00         	leaq	1048568(%rax), %rdx
  402050: 48 89 15 d9 40 20 00         	movq	%rdx, 2113753(%rip)     # 0x606130 <stack_top>
  402057: 48 89 e0                     	movq	%rsp, %rax
  40205a: 48 89 d4                     	movq	%rdx, %rsp
  40205d: 48 89 c2                     	movq	%rax, %rdx
  402060: 48 89 15 79 34 20 00         	movq	%rdx, 2110585(%rip)     # 0x6054e0 <global_save_stack>
  402067: 48 8b 3d 7a 34 20 00         	movq	2110586(%rip), %rdi     # 0x6054e8 <global_offset>
  40206e: e8 ba fe ff ff               	callq	0x401f2d <launch>
  402073: 48 8b 05 66 34 20 00         	movq	2110566(%rip), %rax     # 0x6054e0 <global_save_stack>
  40207a: 48 89 c4                     	movq	%rax, %rsp
  40207d: be 00 00 10 00               	movl	$1048576, %esi          # imm = 0x100000
  402082: 48 89 df                     	movq	%rbx, %rdi
  402085: e8 86 ec ff ff               	callq	0x400d10 <munmap@plt>
  40208a: 5b                           	popq	%rbx
  40208b: c3                           	retq

000000000040208c <rio_readinitb>:
  40208c: 89 37                        	movl	%esi, (%rdi)
  40208e: c7 47 04 00 00 00 00         	movl	$0, 4(%rdi)
  402095: 48 8d 47 10                  	leaq	16(%rdi), %rax
  402099: 48 89 47 08                  	movq	%rax, 8(%rdi)
  40209d: c3                           	retq

000000000040209e <sigalrm_handler>:
  40209e: 48 83 ec 08                  	subq	$8, %rsp
  4020a2: b9 00 00 00 00               	movl	$0, %ecx
  4020a7: ba f0 33 40 00               	movl	$4207600, %edx          # imm = 0x4033F0
  4020ac: be 01 00 00 00               	movl	$1, %esi
  4020b1: 48 8b 3d 08 34 20 00         	movq	2110472(%rip), %rdi     # 0x6054c0 <stderr@@GLIBC_2.2.5>
  4020b8: b8 00 00 00 00               	movl	$0, %eax
  4020bd: e8 be ec ff ff               	callq	0x400d80 <__fprintf_chk@plt>
  4020c2: bf 01 00 00 00               	movl	$1, %edi
  4020c7: e8 94 ec ff ff               	callq	0x400d60 <exit@plt>

00000000004020cc <rio_writen>:
  4020cc: 41 55                        	pushq	%r13
  4020ce: 41 54                        	pushq	%r12
  4020d0: 55                           	pushq	%rbp
  4020d1: 53                           	pushq	%rbx
  4020d2: 48 83 ec 08                  	subq	$8, %rsp
  4020d6: 41 89 fc                     	movl	%edi, %r12d
  4020d9: 48 89 f5                     	movq	%rsi, %rbp
  4020dc: 49 89 d5                     	movq	%rdx, %r13
  4020df: 48 89 d3                     	movq	%rdx, %rbx
  4020e2: eb 28                        	jmp	0x40210c <rio_writen+0x40>
  4020e4: 48 89 da                     	movq	%rbx, %rdx
  4020e7: 48 89 ee                     	movq	%rbp, %rsi
  4020ea: 44 89 e7                     	movl	%r12d, %edi
  4020ed: e8 1e eb ff ff               	callq	0x400c10 <write@plt>
  4020f2: 48 85 c0                     	testq	%rax, %rax
  4020f5: 7f 0f                        	jg	0x402106 <rio_writen+0x3a>
  4020f7: e8 c4 ea ff ff               	callq	0x400bc0 <__errno_location@plt>
  4020fc: 83 38 04                     	cmpl	$4, (%rax)
  4020ff: 75 15                        	jne	0x402116 <rio_writen+0x4a>
  402101: b8 00 00 00 00               	movl	$0, %eax
  402106: 48 29 c3                     	subq	%rax, %rbx
  402109: 48 01 c5                     	addq	%rax, %rbp
  40210c: 48 85 db                     	testq	%rbx, %rbx
  40210f: 75 d3                        	jne	0x4020e4 <rio_writen+0x18>
  402111: 4c 89 e8                     	movq	%r13, %rax
  402114: eb 07                        	jmp	0x40211d <rio_writen+0x51>
  402116: 48 c7 c0 ff ff ff ff         	movq	$-1, %rax
  40211d: 48 83 c4 08                  	addq	$8, %rsp
  402121: 5b                           	popq	%rbx
  402122: 5d                           	popq	%rbp
  402123: 41 5c                        	popq	%r12
  402125: 41 5d                        	popq	%r13
  402127: c3                           	retq

0000000000402128 <rio_read>:
  402128: 41 55                        	pushq	%r13
  40212a: 41 54                        	pushq	%r12
  40212c: 55                           	pushq	%rbp
  40212d: 53                           	pushq	%rbx
  40212e: 48 83 ec 08                  	subq	$8, %rsp
  402132: 48 89 fb                     	movq	%rdi, %rbx
  402135: 49 89 f5                     	movq	%rsi, %r13
  402138: 49 89 d4                     	movq	%rdx, %r12
  40213b: eb 2e                        	jmp	0x40216b <rio_read+0x43>
  40213d: 48 8d 6b 10                  	leaq	16(%rbx), %rbp
  402141: 8b 3b                        	movl	(%rbx), %edi
  402143: ba 00 20 00 00               	movl	$8192, %edx             # imm = 0x2000
  402148: 48 89 ee                     	movq	%rbp, %rsi
  40214b: e8 20 eb ff ff               	callq	0x400c70 <read@plt>
  402150: 89 43 04                     	movl	%eax, 4(%rbx)
  402153: 85 c0                        	testl	%eax, %eax
  402155: 79 0c                        	jns	0x402163 <rio_read+0x3b>
  402157: e8 64 ea ff ff               	callq	0x400bc0 <__errno_location@plt>
  40215c: 83 38 04                     	cmpl	$4, (%rax)
  40215f: 74 0a                        	je	0x40216b <rio_read+0x43>
  402161: eb 37                        	jmp	0x40219a <rio_read+0x72>
  402163: 85 c0                        	testl	%eax, %eax
  402165: 74 3c                        	je	0x4021a3 <rio_read+0x7b>
  402167: 48 89 6b 08                  	movq	%rbp, 8(%rbx)
  40216b: 8b 6b 04                     	movl	4(%rbx), %ebp
  40216e: 85 ed                        	testl	%ebp, %ebp
  402170: 7e cb                        	jle	0x40213d <rio_read+0x15>
  402172: 89 e8                        	movl	%ebp, %eax
  402174: 49 39 c4                     	cmpq	%rax, %r12
  402177: 77 03                        	ja	0x40217c <rio_read+0x54>
  402179: 44 89 e5                     	movl	%r12d, %ebp
  40217c: 4c 63 e5                     	movslq	%ebp, %r12
  40217f: 48 8b 73 08                  	movq	8(%rbx), %rsi
  402183: 4c 89 e2                     	movq	%r12, %rdx
  402186: 4c 89 ef                     	movq	%r13, %rdi
  402189: e8 32 eb ff ff               	callq	0x400cc0 <memcpy@plt>
  40218e: 4c 01 63 08                  	addq	%r12, 8(%rbx)
  402192: 29 6b 04                     	subl	%ebp, 4(%rbx)
  402195: 4c 89 e0                     	movq	%r12, %rax
  402198: eb 0e                        	jmp	0x4021a8 <rio_read+0x80>
  40219a: 48 c7 c0 ff ff ff ff         	movq	$-1, %rax
  4021a1: eb 05                        	jmp	0x4021a8 <rio_read+0x80>
  4021a3: b8 00 00 00 00               	movl	$0, %eax
  4021a8: 48 83 c4 08                  	addq	$8, %rsp
  4021ac: 5b                           	popq	%rbx
  4021ad: 5d                           	popq	%rbp
  4021ae: 41 5c                        	popq	%r12
  4021b0: 41 5d                        	popq	%r13
  4021b2: c3                           	retq

00000000004021b3 <rio_readlineb>:
  4021b3: 41 55                        	pushq	%r13
  4021b5: 41 54                        	pushq	%r12
  4021b7: 55                           	pushq	%rbp
  4021b8: 53                           	pushq	%rbx
  4021b9: 48 83 ec 18                  	subq	$24, %rsp
  4021bd: 49 89 fd                     	movq	%rdi, %r13
  4021c0: 48 89 f5                     	movq	%rsi, %rbp
  4021c3: 49 89 d4                     	movq	%rdx, %r12
  4021c6: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
  4021cf: 48 89 44 24 08               	movq	%rax, 8(%rsp)
  4021d4: 31 c0                        	xorl	%eax, %eax
  4021d6: bb 01 00 00 00               	movl	$1, %ebx
  4021db: eb 3f                        	jmp	0x40221c <rio_readlineb+0x69>
  4021dd: ba 01 00 00 00               	movl	$1, %edx
  4021e2: 48 8d 74 24 07               	leaq	7(%rsp), %rsi
  4021e7: 4c 89 ef                     	movq	%r13, %rdi
  4021ea: e8 39 ff ff ff               	callq	0x402128 <rio_read>
  4021ef: 83 f8 01                     	cmpl	$1, %eax
  4021f2: 75 15                        	jne	0x402209 <rio_readlineb+0x56>
  4021f4: 48 8d 45 01                  	leaq	1(%rbp), %rax
  4021f8: 0f b6 54 24 07               	movzbl	7(%rsp), %edx
  4021fd: 88 55 00                     	movb	%dl, (%rbp)
  402200: 80 7c 24 07 0a               	cmpb	$10, 7(%rsp)
  402205: 75 0e                        	jne	0x402215 <rio_readlineb+0x62>
  402207: eb 1a                        	jmp	0x402223 <rio_readlineb+0x70>
  402209: 85 c0                        	testl	%eax, %eax
  40220b: 75 22                        	jne	0x40222f <rio_readlineb+0x7c>
  40220d: 48 83 fb 01                  	cmpq	$1, %rbx
  402211: 75 13                        	jne	0x402226 <rio_readlineb+0x73>
  402213: eb 23                        	jmp	0x402238 <rio_readlineb+0x85>
  402215: 48 83 c3 01                  	addq	$1, %rbx
  402219: 48 89 c5                     	movq	%rax, %rbp
  40221c: 4c 39 e3                     	cmpq	%r12, %rbx
  40221f: 72 bc                        	jb	0x4021dd <rio_readlineb+0x2a>
  402221: eb 03                        	jmp	0x402226 <rio_readlineb+0x73>
  402223: 48 89 c5                     	movq	%rax, %rbp
  402226: c6 45 00 00                  	movb	$0, (%rbp)
  40222a: 48 89 d8                     	movq	%rbx, %rax
  40222d: eb 0e                        	jmp	0x40223d <rio_readlineb+0x8a>
  40222f: 48 c7 c0 ff ff ff ff         	movq	$-1, %rax
  402236: eb 05                        	jmp	0x40223d <rio_readlineb+0x8a>
  402238: b8 00 00 00 00               	movl	$0, %eax
  40223d: 48 8b 4c 24 08               	movq	8(%rsp), %rcx
  402242: 64 48 33 0c 25 28 00 00 00   	xorq	%fs:40, %rcx
  40224b: 74 05                        	je	0x402252 <rio_readlineb+0x9f>
  40224d: e8 ce e9 ff ff               	callq	0x400c20 <__stack_chk_fail@plt>
  402252: 48 83 c4 18                  	addq	$24, %rsp
  402256: 5b                           	popq	%rbx
  402257: 5d                           	popq	%rbp
  402258: 41 5c                        	popq	%r12
  40225a: 41 5d                        	popq	%r13
  40225c: c3                           	retq

000000000040225d <urlencode>:
  40225d: 41 54                        	pushq	%r12
  40225f: 55                           	pushq	%rbp
  402260: 53                           	pushq	%rbx
  402261: 48 83 ec 10                  	subq	$16, %rsp
  402265: 48 89 fb                     	movq	%rdi, %rbx
  402268: 48 89 f5                     	movq	%rsi, %rbp
  40226b: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
  402274: 48 89 44 24 08               	movq	%rax, 8(%rsp)
  402279: 31 c0                        	xorl	%eax, %eax
  40227b: 48 c7 c1 ff ff ff ff         	movq	$-1, %rcx
  402282: f2 ae                        	repne		scasb	%es:(%rdi), %al
  402284: 48 f7 d1                     	notq	%rcx
  402287: 8d 41 ff                     	leal	-1(%rcx), %eax
  40228a: e9 aa 00 00 00               	jmp	0x402339 <urlencode+0xdc>
  40228f: 44 0f b6 03                  	movzbl	(%rbx), %r8d
  402293: 41 80 f8 2a                  	cmpb	$42, %r8b
  402297: 0f 94 c2                     	sete	%dl
  40229a: 41 80 f8 2d                  	cmpb	$45, %r8b
  40229e: 0f 94 c0                     	sete	%al
  4022a1: 08 c2                        	orb	%al, %dl
  4022a3: 75 24                        	jne	0x4022c9 <urlencode+0x6c>
  4022a5: 41 80 f8 2e                  	cmpb	$46, %r8b
  4022a9: 74 1e                        	je	0x4022c9 <urlencode+0x6c>
  4022ab: 41 80 f8 5f                  	cmpb	$95, %r8b
  4022af: 74 18                        	je	0x4022c9 <urlencode+0x6c>
  4022b1: 41 8d 40 d0                  	leal	-48(%r8), %eax
  4022b5: 3c 09                        	cmpb	$9, %al
  4022b7: 76 10                        	jbe	0x4022c9 <urlencode+0x6c>
  4022b9: 41 8d 40 bf                  	leal	-65(%r8), %eax
  4022bd: 3c 19                        	cmpb	$25, %al
  4022bf: 76 08                        	jbe	0x4022c9 <urlencode+0x6c>
  4022c1: 41 8d 40 9f                  	leal	-97(%r8), %eax
  4022c5: 3c 19                        	cmpb	$25, %al
  4022c7: 77 0a                        	ja	0x4022d3 <urlencode+0x76>
  4022c9: 44 88 45 00                  	movb	%r8b, (%rbp)
  4022cd: 48 8d 6d 01                  	leaq	1(%rbp), %rbp
  4022d1: eb 5f                        	jmp	0x402332 <urlencode+0xd5>
  4022d3: 41 80 f8 20                  	cmpb	$32, %r8b
  4022d7: 75 0a                        	jne	0x4022e3 <urlencode+0x86>
  4022d9: c6 45 00 2b                  	movb	$43, (%rbp)
  4022dd: 48 8d 6d 01                  	leaq	1(%rbp), %rbp
  4022e1: eb 4f                        	jmp	0x402332 <urlencode+0xd5>
  4022e3: 41 8d 40 e0                  	leal	-32(%r8), %eax
  4022e7: 3c 5f                        	cmpb	$95, %al
  4022e9: 0f 96 c2                     	setbe	%dl
  4022ec: 41 80 f8 09                  	cmpb	$9, %r8b
  4022f0: 0f 94 c0                     	sete	%al
  4022f3: 08 c2                        	orb	%al, %dl
  4022f5: 74 50                        	je	0x402347 <urlencode+0xea>
  4022f7: 45 0f b6 c0                  	movzbl	%r8b, %r8d
  4022fb: b9 88 34 40 00               	movl	$4207752, %ecx          # imm = 0x403488
  402300: ba 08 00 00 00               	movl	$8, %edx
  402305: be 01 00 00 00               	movl	$1, %esi
  40230a: 48 89 e7                     	movq	%rsp, %rdi
  40230d: b8 00 00 00 00               	movl	$0, %eax
  402312: e8 79 ea ff ff               	callq	0x400d90 <__sprintf_chk@plt>
  402317: 0f b6 04 24                  	movzbl	(%rsp), %eax
  40231b: 88 45 00                     	movb	%al, (%rbp)
  40231e: 0f b6 44 24 01               	movzbl	1(%rsp), %eax
  402323: 88 45 01                     	movb	%al, 1(%rbp)
  402326: 0f b6 44 24 02               	movzbl	2(%rsp), %eax
  40232b: 88 45 02                     	movb	%al, 2(%rbp)
  40232e: 48 8d 6d 03                  	leaq	3(%rbp), %rbp
  402332: 48 83 c3 01                  	addq	$1, %rbx
  402336: 44 89 e0                     	movl	%r12d, %eax
  402339: 44 8d 60 ff                  	leal	-1(%rax), %r12d
  40233d: 85 c0                        	testl	%eax, %eax
  40233f: 0f 85 4a ff ff ff            	jne	0x40228f <urlencode+0x32>
  402345: eb 05                        	jmp	0x40234c <urlencode+0xef>
  402347: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
  40234c: 48 8b 74 24 08               	movq	8(%rsp), %rsi
  402351: 64 48 33 34 25 28 00 00 00   	xorq	%fs:40, %rsi
  40235a: 74 05                        	je	0x402361 <urlencode+0x104>
  40235c: e8 bf e8 ff ff               	callq	0x400c20 <__stack_chk_fail@plt>
  402361: 48 83 c4 10                  	addq	$16, %rsp
  402365: 5b                           	popq	%rbx
  402366: 5d                           	popq	%rbp
  402367: 41 5c                        	popq	%r12
  402369: c3                           	retq

000000000040236a <submitr>:
  40236a: 41 57                        	pushq	%r15
  40236c: 41 56                        	pushq	%r14
  40236e: 41 55                        	pushq	%r13
  402370: 41 54                        	pushq	%r12
  402372: 55                           	pushq	%rbp
  402373: 53                           	pushq	%rbx
  402374: 48 81 ec 58 a0 00 00         	subq	$41048, %rsp            # imm = 0xA058
  40237b: 49 89 ff                     	movq	%rdi, %r15
  40237e: 89 74 24 04                  	movl	%esi, 4(%rsp)
  402382: 49 89 d6                     	movq	%rdx, %r14
  402385: 49 89 cd                     	movq	%rcx, %r13
  402388: 4c 89 44 24 08               	movq	%r8, 8(%rsp)
  40238d: 4d 89 cc                     	movq	%r9, %r12
  402390: 48 8b 9c 24 90 a0 00 00      	movq	41104(%rsp), %rbx
  402398: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
  4023a1: 48 89 84 24 48 a0 00 00      	movq	%rax, 41032(%rsp)
  4023a9: 31 c0                        	xorl	%eax, %eax
  4023ab: c7 44 24 1c 00 00 00 00      	movl	$0, 28(%rsp)
  4023b3: ba 00 00 00 00               	movl	$0, %edx
  4023b8: be 01 00 00 00               	movl	$1, %esi
  4023bd: bf 02 00 00 00               	movl	$2, %edi
  4023c2: e8 d9 e9 ff ff               	callq	0x400da0 <socket@plt>
  4023c7: 85 c0                        	testl	%eax, %eax
  4023c9: 79 4e                        	jns	0x402419 <submitr+0xaf>
  4023cb: 48 b8 45 72 72 6f 72 3a 20 43	movabsq	$4836930262966366789, %rax # imm = 0x43203A726F727245
  4023d5: 48 89 03                     	movq	%rax, (%rbx)
  4023d8: 48 b8 6c 69 65 6e 74 20 75 6e	movabsq	$7959303600887654764, %rax # imm = 0x6E7520746E65696C
  4023e2: 48 89 43 08                  	movq	%rax, 8(%rbx)
  4023e6: 48 b8 61 62 6c 65 20 74 6f 20	movabsq	$2337214414117954145, %rax # imm = 0x206F7420656C6261
  4023f0: 48 89 43 10                  	movq	%rax, 16(%rbx)
  4023f4: 48 b8 63 72 65 61 74 65 20 73	movabsq	$8295742064141103715, %rax # imm = 0x7320657461657263
  4023fe: 48 89 43 18                  	movq	%rax, 24(%rbx)
  402402: c7 43 20 6f 63 6b 65         	movl	$1701536623, 32(%rbx)   # imm = 0x656B636F
  402409: 66 c7 43 24 74 00            	movw	$116, 36(%rbx)
  40240f: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
  402414: e9 0a 06 00 00               	jmp	0x402a23 <submitr+0x6b9>
  402419: 89 c5                        	movl	%eax, %ebp
  40241b: 66 c7 44 24 20 02 00         	movw	$2, 32(%rsp)
  402422: bf 8f 34 40 00               	movl	$4207759, %edi          # imm = 0x40348F
  402427: b8 00 00 00 00               	movl	$0, %eax
  40242c: e8 5f e8 ff ff               	callq	0x400c90 <inet_addr@plt>
  402431: 89 44 24 24                  	movl	%eax, 36(%rsp)
  402435: 0f b7 44 24 04               	movzwl	4(%rsp), %eax
  40243a: 66 c1 c8 08                  	rorw	$8, %ax
  40243e: 66 89 44 24 22               	movw	%ax, 34(%rsp)
  402443: ba 10 00 00 00               	movl	$16, %edx
  402448: 48 8d 74 24 20               	leaq	32(%rsp), %rsi
  40244d: 89 ef                        	movl	%ebp, %edi
  40244f: e8 1c e9 ff ff               	callq	0x400d70 <connect@plt>
  402454: 85 c0                        	testl	%eax, %eax
  402456: 79 59                        	jns	0x4024b1 <submitr+0x147>
  402458: 48 b8 45 72 72 6f 72 3a 20 55	movabsq	$6133966955649069637, %rax # imm = 0x55203A726F727245
  402462: 48 89 03                     	movq	%rax, (%rbx)
  402465: 48 b8 6e 61 62 6c 65 20 74 6f	movabsq	$8031079655490609518, %rax # imm = 0x6F7420656C62616E
  40246f: 48 89 43 08                  	movq	%rax, 8(%rbx)
  402473: 48 b8 20 63 6f 6e 6e 65 63 74	movabsq	$8386658456067597088, %rax # imm = 0x7463656E6E6F6320
  40247d: 48 89 43 10                  	movq	%rax, 16(%rbx)
  402481: 48 b8 20 74 6f 20 74 68 65 20	movabsq	$2334386829831140384, %rax # imm = 0x20656874206F7420
  40248b: 48 89 43 18                  	movq	%rax, 24(%rbx)
  40248f: c7 43 20 73 65 72 76         	movl	$1987208563, 32(%rbx)   # imm = 0x76726573
  402496: 66 c7 43 24 65 72            	movw	$29285, 36(%rbx)        # imm = 0x7265
  40249c: c6 43 26 00                  	movb	$0, 38(%rbx)
  4024a0: 89 ef                        	movl	%ebp, %edi
  4024a2: e8 b9 e7 ff ff               	callq	0x400c60 <close@plt>
  4024a7: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
  4024ac: e9 72 05 00 00               	jmp	0x402a23 <submitr+0x6b9>
  4024b1: 48 c7 c6 ff ff ff ff         	movq	$-1, %rsi
  4024b8: b8 00 00 00 00               	movl	$0, %eax
  4024bd: 48 89 f1                     	movq	%rsi, %rcx
  4024c0: 4c 89 e7                     	movq	%r12, %rdi
  4024c3: f2 ae                        	repne		scasb	%es:(%rdi), %al
  4024c5: 48 f7 d1                     	notq	%rcx
  4024c8: 48 89 ca                     	movq	%rcx, %rdx
  4024cb: 48 89 f1                     	movq	%rsi, %rcx
  4024ce: 4c 89 f7                     	movq	%r14, %rdi
  4024d1: f2 ae                        	repne		scasb	%es:(%rdi), %al
  4024d3: 48 f7 d1                     	notq	%rcx
  4024d6: 49 89 c8                     	movq	%rcx, %r8
  4024d9: 48 89 f1                     	movq	%rsi, %rcx
  4024dc: 4c 89 ef                     	movq	%r13, %rdi
  4024df: f2 ae                        	repne		scasb	%es:(%rdi), %al
  4024e1: 48 f7 d1                     	notq	%rcx
  4024e4: 4d 8d 44 08 fe               	leaq	-2(%r8,%rcx), %r8
  4024e9: 48 89 f1                     	movq	%rsi, %rcx
  4024ec: 48 8b 7c 24 08               	movq	8(%rsp), %rdi
  4024f1: f2 ae                        	repne		scasb	%es:(%rdi), %al
  4024f3: 48 89 c8                     	movq	%rcx, %rax
  4024f6: 48 f7 d0                     	notq	%rax
  4024f9: 49 8d 4c 00 ff               	leaq	-1(%r8,%rax), %rcx
  4024fe: 48 8d 44 52 fd               	leaq	-3(%rdx,%rdx,2), %rax
  402503: 48 8d 84 01 80 00 00 00      	leaq	128(%rcx,%rax), %rax
  40250b: 48 3d 00 20 00 00            	cmpq	$8192, %rax             # imm = 0x2000
  402511: 76 72                        	jbe	0x402585 <submitr+0x21b>
  402513: 48 b8 45 72 72 6f 72 3a 20 52	movabsq	$5917794173535285829, %rax # imm = 0x52203A726F727245
  40251d: 48 89 03                     	movq	%rax, (%rbx)
  402520: 48 b8 65 73 75 6c 74 20 73 74	movabsq	$8391086215129297765, %rax # imm = 0x747320746C757365
  40252a: 48 89 43 08                  	movq	%rax, 8(%rbx)
  40252e: 48 b8 72 69 6e 67 20 74 6f 6f	movabsq	$8029764343147948402, %rax # imm = 0x6F6F7420676E6972
  402538: 48 89 43 10                  	movq	%rax, 16(%rbx)
  40253c: 48 b8 20 6c 61 72 67 65 2e 20	movabsq	$2318902353117408288, %rax # imm = 0x202E656772616C20
  402546: 48 89 43 18                  	movq	%rax, 24(%rbx)
  40254a: 48 b8 49 6e 63 72 65 61 73 65	movabsq	$7310293708491157065, %rax # imm = 0x6573616572636E49
  402554: 48 89 43 20                  	movq	%rax, 32(%rbx)
  402558: 48 b8 20 53 55 42 4d 49 54 52	movabsq	$5932447205327983392, %rax # imm = 0x5254494D42555320
  402562: 48 89 43 28                  	movq	%rax, 40(%rbx)
  402566: 48 b8 5f 4d 41 58 42 55 46 00	movabsq	$19796991806623071, %rax # imm = 0x46554258414D5F
  402570: 48 89 43 30                  	movq	%rax, 48(%rbx)
  402574: 89 ef                        	movl	%ebp, %edi
  402576: e8 e5 e6 ff ff               	callq	0x400c60 <close@plt>
  40257b: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
  402580: e9 9e 04 00 00               	jmp	0x402a23 <submitr+0x6b9>
  402585: 48 8d b4 24 40 40 00 00      	leaq	16448(%rsp), %rsi
  40258d: b9 00 04 00 00               	movl	$1024, %ecx             # imm = 0x400
  402592: b8 00 00 00 00               	movl	$0, %eax
  402597: 48 89 f7                     	movq	%rsi, %rdi
  40259a: f3 48 ab                     	rep		stosq	%rax, %es:(%rdi)
  40259d: 4c 89 e7                     	movq	%r12, %rdi
  4025a0: e8 b8 fc ff ff               	callq	0x40225d <urlencode>
  4025a5: 85 c0                        	testl	%eax, %eax
  4025a7: 0f 89 8a 00 00 00            	jns	0x402637 <submitr+0x2cd>
  4025ad: 48 b8 45 72 72 6f 72 3a 20 52	movabsq	$5917794173535285829, %rax # imm = 0x52203A726F727245
  4025b7: 48 89 03                     	movq	%rax, (%rbx)
  4025ba: 48 b8 65 73 75 6c 74 20 73 74	movabsq	$8391086215129297765, %rax # imm = 0x747320746C757365
  4025c4: 48 89 43 08                  	movq	%rax, 8(%rbx)
  4025c8: 48 b8 72 69 6e 67 20 63 6f 6e	movabsq	$7957688057412348274, %rax # imm = 0x6E6F6320676E6972
  4025d2: 48 89 43 10                  	movq	%rax, 16(%rbx)
  4025d6: 48 b8 74 61 69 6e 73 20 61 6e	movabsq	$7953674097058734452, %rax # imm = 0x6E6120736E696174
  4025e0: 48 89 43 18                  	movq	%rax, 24(%rbx)
  4025e4: 48 b8 20 69 6c 6c 65 67 61 6c	movabsq	$7809636914145552672, %rax # imm = 0x6C6167656C6C6920
  4025ee: 48 89 43 20                  	movq	%rax, 32(%rbx)
  4025f2: 48 b8 20 6f 72 20 75 6e 70 72	movabsq	$8246212367049977632, %rax # imm = 0x72706E7520726F20
  4025fc: 48 89 43 28                  	movq	%rax, 40(%rbx)
  402600: 48 b8 69 6e 74 61 62 6c 65 20	movabsq	$2334391151659085417, %rax # imm = 0x20656C6261746E69
  40260a: 48 89 43 30                  	movq	%rax, 48(%rbx)
  40260e: 48 b8 63 68 61 72 61 63 74 65	movabsq	$7310577365311121507, %rax # imm = 0x6574636172616863
  402618: 48 89 43 38                  	movq	%rax, 56(%rbx)
  40261c: 66 c7 43 40 72 2e            	movw	$11890, 64(%rbx)        # imm = 0x2E72
  402622: c6 43 42 00                  	movb	$0, 66(%rbx)
  402626: 89 ef                        	movl	%ebp, %edi
  402628: e8 33 e6 ff ff               	callq	0x400c60 <close@plt>
  40262d: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
  402632: e9 ec 03 00 00               	jmp	0x402a23 <submitr+0x6b9>
  402637: 4c 8d a4 24 40 20 00 00      	leaq	8256(%rsp), %r12
  40263f: 41 57                        	pushq	%r15
  402641: 48 8d 84 24 48 40 00 00      	leaq	16456(%rsp), %rax
  402649: 50                           	pushq	%rax
  40264a: 4d 89 f1                     	movq	%r14, %r9
  40264d: 4d 89 e8                     	movq	%r13, %r8
  402650: b9 18 34 40 00               	movl	$4207640, %ecx          # imm = 0x403418
  402655: ba 00 20 00 00               	movl	$8192, %edx             # imm = 0x2000
  40265a: be 01 00 00 00               	movl	$1, %esi
  40265f: 4c 89 e7                     	movq	%r12, %rdi
  402662: b8 00 00 00 00               	movl	$0, %eax
  402667: e8 24 e7 ff ff               	callq	0x400d90 <__sprintf_chk@plt>
  40266c: b8 00 00 00 00               	movl	$0, %eax
  402671: 48 c7 c1 ff ff ff ff         	movq	$-1, %rcx
  402678: 4c 89 e7                     	movq	%r12, %rdi
  40267b: f2 ae                        	repne		scasb	%es:(%rdi), %al
  40267d: 48 f7 d1                     	notq	%rcx
  402680: 48 8d 51 ff                  	leaq	-1(%rcx), %rdx
  402684: 4c 89 e6                     	movq	%r12, %rsi
  402687: 89 ef                        	movl	%ebp, %edi
  402689: e8 3e fa ff ff               	callq	0x4020cc <rio_writen>
  40268e: 48 83 c4 10                  	addq	$16, %rsp
  402692: 48 85 c0                     	testq	%rax, %rax
  402695: 79 6e                        	jns	0x402705 <submitr+0x39b>
  402697: 48 b8 45 72 72 6f 72 3a 20 43	movabsq	$4836930262966366789, %rax # imm = 0x43203A726F727245
  4026a1: 48 89 03                     	movq	%rax, (%rbx)
  4026a4: 48 b8 6c 69 65 6e 74 20 75 6e	movabsq	$7959303600887654764, %rax # imm = 0x6E7520746E65696C
  4026ae: 48 89 43 08                  	movq	%rax, 8(%rbx)
  4026b2: 48 b8 61 62 6c 65 20 74 6f 20	movabsq	$2337214414117954145, %rax # imm = 0x206F7420656C6261
  4026bc: 48 89 43 10                  	movq	%rax, 16(%rbx)
  4026c0: 48 b8 77 72 69 74 65 20 74 6f	movabsq	$8031079655625290359, %rax # imm = 0x6F74206574697277
  4026ca: 48 89 43 18                  	movq	%rax, 24(%rbx)
  4026ce: 48 b8 20 74 68 65 20 72 65 73	movabsq	$8315177770475353120, %rax # imm = 0x7365722065687420
  4026d8: 48 89 43 20                  	movq	%rax, 32(%rbx)
  4026dc: 48 b8 75 6c 74 20 73 65 72 76	movabsq	$8534995788960656501, %rax # imm = 0x7672657320746C75
  4026e6: 48 89 43 28                  	movq	%rax, 40(%rbx)
  4026ea: 66 c7 43 30 65 72            	movw	$29285, 48(%rbx)        # imm = 0x7265
  4026f0: c6 43 32 00                  	movb	$0, 50(%rbx)
  4026f4: 89 ef                        	movl	%ebp, %edi
  4026f6: e8 65 e5 ff ff               	callq	0x400c60 <close@plt>
  4026fb: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
  402700: e9 1e 03 00 00               	jmp	0x402a23 <submitr+0x6b9>
  402705: 89 ee                        	movl	%ebp, %esi
  402707: 48 8d 7c 24 30               	leaq	48(%rsp), %rdi
  40270c: e8 7b f9 ff ff               	callq	0x40208c <rio_readinitb>
  402711: ba 00 20 00 00               	movl	$8192, %edx             # imm = 0x2000
  402716: 48 8d b4 24 40 20 00 00      	leaq	8256(%rsp), %rsi
  40271e: 48 8d 7c 24 30               	leaq	48(%rsp), %rdi
  402723: e8 8b fa ff ff               	callq	0x4021b3 <rio_readlineb>
  402728: 48 85 c0                     	testq	%rax, %rax
  40272b: 7f 7d                        	jg	0x4027aa <submitr+0x440>
  40272d: 48 b8 45 72 72 6f 72 3a 20 43	movabsq	$4836930262966366789, %rax # imm = 0x43203A726F727245
  402737: 48 89 03                     	movq	%rax, (%rbx)
  40273a: 48 b8 6c 69 65 6e 74 20 75 6e	movabsq	$7959303600887654764, %rax # imm = 0x6E7520746E65696C
  402744: 48 89 43 08                  	movq	%rax, 8(%rbx)
  402748: 48 b8 61 62 6c 65 20 74 6f 20	movabsq	$2337214414117954145, %rax # imm = 0x206F7420656C6261
  402752: 48 89 43 10                  	movq	%rax, 16(%rbx)
  402756: 48 b8 72 65 61 64 20 66 69 72	movabsq	$8244232882187494770, %rax # imm = 0x7269662064616572
  402760: 48 89 43 18                  	movq	%rax, 24(%rbx)
  402764: 48 b8 73 74 20 68 65 61 64 65	movabsq	$7306071583668335731, %rax # imm = 0x6564616568207473
  40276e: 48 89 43 20                  	movq	%rax, 32(%rbx)
  402772: 48 b8 72 20 66 72 6f 6d 20 72	movabsq	$8223693245006618738, %rax # imm = 0x72206D6F72662072
  40277c: 48 89 43 28                  	movq	%rax, 40(%rbx)
  402780: 48 b8 65 73 75 6c 74 20 73 65	movabsq	$7310222304560378725, %rax # imm = 0x657320746C757365
  40278a: 48 89 43 30                  	movq	%rax, 48(%rbx)
  40278e: c7 43 38 72 76 65 72         	movl	$1919252082, 56(%rbx)   # imm = 0x72657672
  402795: c6 43 3c 00                  	movb	$0, 60(%rbx)
  402799: 89 ef                        	movl	%ebp, %edi
  40279b: e8 c0 e4 ff ff               	callq	0x400c60 <close@plt>
  4027a0: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
  4027a5: e9 79 02 00 00               	jmp	0x402a23 <submitr+0x6b9>
  4027aa: 4c 8d 84 24 40 80 00 00      	leaq	32832(%rsp), %r8
  4027b2: 48 8d 4c 24 1c               	leaq	28(%rsp), %rcx
  4027b7: 48 8d 94 24 40 60 00 00      	leaq	24640(%rsp), %rdx
  4027bf: be 9e 34 40 00               	movl	$4207774, %esi          # imm = 0x40349E
  4027c4: 48 8d bc 24 40 20 00 00      	leaq	8256(%rsp), %rdi
  4027cc: b8 00 00 00 00               	movl	$0, %eax
  4027d1: e8 2a e5 ff ff               	callq	0x400d00 <__isoc99_sscanf@plt>
  4027d6: e9 95 00 00 00               	jmp	0x402870 <submitr+0x506>
  4027db: ba 00 20 00 00               	movl	$8192, %edx             # imm = 0x2000
  4027e0: 48 8d b4 24 40 20 00 00      	leaq	8256(%rsp), %rsi
  4027e8: 48 8d 7c 24 30               	leaq	48(%rsp), %rdi
  4027ed: e8 c1 f9 ff ff               	callq	0x4021b3 <rio_readlineb>
  4027f2: 48 85 c0                     	testq	%rax, %rax
  4027f5: 7f 79                        	jg	0x402870 <submitr+0x506>
  4027f7: 48 b8 45 72 72 6f 72 3a 20 43	movabsq	$4836930262966366789, %rax # imm = 0x43203A726F727245
  402801: 48 89 03                     	movq	%rax, (%rbx)
  402804: 48 b8 6c 69 65 6e 74 20 75 6e	movabsq	$7959303600887654764, %rax # imm = 0x6E7520746E65696C
  40280e: 48 89 43 08                  	movq	%rax, 8(%rbx)
  402812: 48 b8 61 62 6c 65 20 74 6f 20	movabsq	$2337214414117954145, %rax # imm = 0x206F7420656C6261
  40281c: 48 89 43 10                  	movq	%rax, 16(%rbx)
  402820: 48 b8 72 65 61 64 20 68 65 61	movabsq	$7018130082659132786, %rax # imm = 0x6165682064616572
  40282a: 48 89 43 18                  	movq	%rax, 24(%rbx)
  40282e: 48 b8 64 65 72 73 20 66 72 6f	movabsq	$8030593375116879204, %rax # imm = 0x6F72662073726564
  402838: 48 89 43 20                  	movq	%rax, 32(%rbx)
  40283c: 48 b8 6d 20 74 68 65 20 72 65	movabsq	$7309940765091962989, %rax # imm = 0x657220656874206D
  402846: 48 89 43 28                  	movq	%rax, 40(%rbx)
  40284a: 48 b8 73 75 6c 74 20 73 65 72	movabsq	$8243121276200973683, %rax # imm = 0x72657320746C7573
  402854: 48 89 43 30                  	movq	%rax, 48(%rbx)
  402858: c7 43 38 76 65 72 00         	movl	$7497078, 56(%rbx)      # imm = 0x726576
  40285f: 89 ef                        	movl	%ebp, %edi
  402861: e8 fa e3 ff ff               	callq	0x400c60 <close@plt>
  402866: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
  40286b: e9 b3 01 00 00               	jmp	0x402a23 <submitr+0x6b9>
  402870: 0f b6 94 24 40 20 00 00      	movzbl	8256(%rsp), %edx
  402878: b8 0d 00 00 00               	movl	$13, %eax
  40287d: 29 d0                        	subl	%edx, %eax
  40287f: 75 1b                        	jne	0x40289c <submitr+0x532>
  402881: 0f b6 94 24 41 20 00 00      	movzbl	8257(%rsp), %edx
  402889: b8 0a 00 00 00               	movl	$10, %eax
  40288e: 29 d0                        	subl	%edx, %eax
  402890: 75 0a                        	jne	0x40289c <submitr+0x532>
  402892: 0f b6 84 24 42 20 00 00      	movzbl	8258(%rsp), %eax
  40289a: f7 d8                        	negl	%eax
  40289c: 85 c0                        	testl	%eax, %eax
  40289e: 0f 85 37 ff ff ff            	jne	0x4027db <submitr+0x471>
  4028a4: ba 00 20 00 00               	movl	$8192, %edx             # imm = 0x2000
  4028a9: 48 8d b4 24 40 20 00 00      	leaq	8256(%rsp), %rsi
  4028b1: 48 8d 7c 24 30               	leaq	48(%rsp), %rdi
  4028b6: e8 f8 f8 ff ff               	callq	0x4021b3 <rio_readlineb>
  4028bb: 48 85 c0                     	testq	%rax, %rax
  4028be: 0f 8f 83 00 00 00            	jg	0x402947 <submitr+0x5dd>
  4028c4: 48 b8 45 72 72 6f 72 3a 20 43	movabsq	$4836930262966366789, %rax # imm = 0x43203A726F727245
  4028ce: 48 89 03                     	movq	%rax, (%rbx)
  4028d1: 48 b8 6c 69 65 6e 74 20 75 6e	movabsq	$7959303600887654764, %rax # imm = 0x6E7520746E65696C
  4028db: 48 89 43 08                  	movq	%rax, 8(%rbx)
  4028df: 48 b8 61 62 6c 65 20 74 6f 20	movabsq	$2337214414117954145, %rax # imm = 0x206F7420656C6261
  4028e9: 48 89 43 10                  	movq	%rax, 16(%rbx)
  4028ed: 48 b8 72 65 61 64 20 73 74 61	movabsq	$7022364301937698162, %rax # imm = 0x6174732064616572
  4028f7: 48 89 43 18                  	movq	%rax, 24(%rbx)
  4028fb: 48 b8 74 75 73 20 6d 65 73 73	movabsq	$8319104456053716340, %rax # imm = 0x7373656D20737574
  402905: 48 89 43 20                  	movq	%rax, 32(%rbx)
  402909: 48 b8 61 67 65 20 66 72 6f 6d	movabsq	$7885647255504775009, %rax # imm = 0x6D6F726620656761
  402913: 48 89 43 28                  	movq	%rax, 40(%rbx)
  402917: 48 b8 20 72 65 73 75 6c 74 20	movabsq	$2338613358215131680, %rax # imm = 0x20746C7573657220
  402921: 48 89 43 30                  	movq	%rax, 48(%rbx)
  402925: c7 43 38 73 65 72 76         	movl	$1987208563, 56(%rbx)   # imm = 0x76726573
  40292c: 66 c7 43 3c 65 72            	movw	$29285, 60(%rbx)        # imm = 0x7265
  402932: c6 43 3e 00                  	movb	$0, 62(%rbx)
  402936: 89 ef                        	movl	%ebp, %edi
  402938: e8 23 e3 ff ff               	callq	0x400c60 <close@plt>
  40293d: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
  402942: e9 dc 00 00 00               	jmp	0x402a23 <submitr+0x6b9>
  402947: 44 8b 44 24 1c               	movl	28(%rsp), %r8d
  40294c: 41 81 f8 c8 00 00 00         	cmpl	$200, %r8d
  402953: 74 37                        	je	0x40298c <submitr+0x622>
  402955: 4c 8d 8c 24 40 80 00 00      	leaq	32832(%rsp), %r9
  40295d: b9 58 34 40 00               	movl	$4207704, %ecx          # imm = 0x403458
  402962: 48 c7 c2 ff ff ff ff         	movq	$-1, %rdx
  402969: be 01 00 00 00               	movl	$1, %esi
  40296e: 48 89 df                     	movq	%rbx, %rdi
  402971: b8 00 00 00 00               	movl	$0, %eax
  402976: e8 15 e4 ff ff               	callq	0x400d90 <__sprintf_chk@plt>
  40297b: 89 ef                        	movl	%ebp, %edi
  40297d: e8 de e2 ff ff               	callq	0x400c60 <close@plt>
  402982: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
  402987: e9 97 00 00 00               	jmp	0x402a23 <submitr+0x6b9>
  40298c: 48 8d b4 24 40 20 00 00      	leaq	8256(%rsp), %rsi
  402994: 48 89 df                     	movq	%rbx, %rdi
  402997: e8 54 e2 ff ff               	callq	0x400bf0 <strcpy@plt>
  40299c: 89 ef                        	movl	%ebp, %edi
  40299e: e8 bd e2 ff ff               	callq	0x400c60 <close@plt>
  4029a3: 0f b6 03                     	movzbl	(%rbx), %eax
  4029a6: ba 4f 00 00 00               	movl	$79, %edx
  4029ab: 29 c2                        	subl	%eax, %edx
  4029ad: 75 22                        	jne	0x4029d1 <submitr+0x667>
  4029af: 0f b6 4b 01                  	movzbl	1(%rbx), %ecx
  4029b3: b8 4b 00 00 00               	movl	$75, %eax
  4029b8: 29 c8                        	subl	%ecx, %eax
  4029ba: 75 17                        	jne	0x4029d3 <submitr+0x669>
  4029bc: 0f b6 4b 02                  	movzbl	2(%rbx), %ecx
  4029c0: b8 0a 00 00 00               	movl	$10, %eax
  4029c5: 29 c8                        	subl	%ecx, %eax
  4029c7: 75 0a                        	jne	0x4029d3 <submitr+0x669>
  4029c9: 0f b6 43 03                  	movzbl	3(%rbx), %eax
  4029cd: f7 d8                        	negl	%eax
  4029cf: eb 02                        	jmp	0x4029d3 <submitr+0x669>
  4029d1: 89 d0                        	movl	%edx, %eax
  4029d3: 85 c0                        	testl	%eax, %eax
  4029d5: 74 40                        	je	0x402a17 <submitr+0x6ad>
  4029d7: bf af 34 40 00               	movl	$4207791, %edi          # imm = 0x4034AF
  4029dc: b9 05 00 00 00               	movl	$5, %ecx
  4029e1: 48 89 de                     	movq	%rbx, %rsi
  4029e4: f3 a6                        	rep		cmpsb	%es:(%rdi), (%rsi)
  4029e6: 0f 97 c0                     	seta	%al
  4029e9: 0f 92 c1                     	setb	%cl
  4029ec: 29 c8                        	subl	%ecx, %eax
  4029ee: 0f be c0                     	movsbl	%al, %eax
  4029f1: 85 c0                        	testl	%eax, %eax
  4029f3: 74 2e                        	je	0x402a23 <submitr+0x6b9>
  4029f5: 85 d2                        	testl	%edx, %edx
  4029f7: 75 13                        	jne	0x402a0c <submitr+0x6a2>
  4029f9: 0f b6 43 01                  	movzbl	1(%rbx), %eax
  4029fd: ba 4b 00 00 00               	movl	$75, %edx
  402a02: 29 c2                        	subl	%eax, %edx
  402a04: 75 06                        	jne	0x402a0c <submitr+0x6a2>
  402a06: 0f b6 53 02                  	movzbl	2(%rbx), %edx
  402a0a: f7 da                        	negl	%edx
  402a0c: 85 d2                        	testl	%edx, %edx
  402a0e: 75 0e                        	jne	0x402a1e <submitr+0x6b4>
  402a10: b8 00 00 00 00               	movl	$0, %eax
  402a15: eb 0c                        	jmp	0x402a23 <submitr+0x6b9>
  402a17: b8 00 00 00 00               	movl	$0, %eax
  402a1c: eb 05                        	jmp	0x402a23 <submitr+0x6b9>
  402a1e: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
  402a23: 48 8b 9c 24 48 a0 00 00      	movq	41032(%rsp), %rbx
  402a2b: 64 48 33 1c 25 28 00 00 00   	xorq	%fs:40, %rbx
  402a34: 74 05                        	je	0x402a3b <submitr+0x6d1>
  402a36: e8 e5 e1 ff ff               	callq	0x400c20 <__stack_chk_fail@plt>
  402a3b: 48 81 c4 58 a0 00 00         	addq	$41048, %rsp            # imm = 0xA058
  402a42: 5b                           	popq	%rbx
  402a43: 5d                           	popq	%rbp
  402a44: 41 5c                        	popq	%r12
  402a46: 41 5d                        	popq	%r13
  402a48: 41 5e                        	popq	%r14
  402a4a: 41 5f                        	popq	%r15
  402a4c: c3                           	retq

0000000000402a4d <init_timeout>:
  402a4d: 85 ff                        	testl	%edi, %edi
  402a4f: 74 23                        	je	0x402a74 <init_timeout+0x27>
  402a51: 53                           	pushq	%rbx
  402a52: 89 fb                        	movl	%edi, %ebx
  402a54: 85 ff                        	testl	%edi, %edi
  402a56: 79 05                        	jns	0x402a5d <init_timeout+0x10>
  402a58: bb 00 00 00 00               	movl	$0, %ebx
  402a5d: be 9e 20 40 00               	movl	$4202654, %esi          # imm = 0x40209E
  402a62: bf 0e 00 00 00               	movl	$14, %edi
  402a67: e8 34 e2 ff ff               	callq	0x400ca0 <signal@plt>
  402a6c: 89 df                        	movl	%ebx, %edi
  402a6e: e8 dd e1 ff ff               	callq	0x400c50 <alarm@plt>
  402a73: 5b                           	popq	%rbx
  402a74: f3 c3                        	rep		retq

0000000000402a76 <init_driver>:
  402a76: 55                           	pushq	%rbp
  402a77: 53                           	pushq	%rbx
  402a78: 48 83 ec 28                  	subq	$40, %rsp
  402a7c: 48 89 fd                     	movq	%rdi, %rbp
  402a7f: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
  402a88: 48 89 44 24 18               	movq	%rax, 24(%rsp)
  402a8d: 31 c0                        	xorl	%eax, %eax
  402a8f: be 01 00 00 00               	movl	$1, %esi
  402a94: bf 0d 00 00 00               	movl	$13, %edi
  402a99: e8 02 e2 ff ff               	callq	0x400ca0 <signal@plt>
  402a9e: be 01 00 00 00               	movl	$1, %esi
  402aa3: bf 1d 00 00 00               	movl	$29, %edi
  402aa8: e8 f3 e1 ff ff               	callq	0x400ca0 <signal@plt>
  402aad: be 01 00 00 00               	movl	$1, %esi
  402ab2: bf 1d 00 00 00               	movl	$29, %edi
  402ab7: e8 e4 e1 ff ff               	callq	0x400ca0 <signal@plt>
  402abc: ba 00 00 00 00               	movl	$0, %edx
  402ac1: be 01 00 00 00               	movl	$1, %esi
  402ac6: bf 02 00 00 00               	movl	$2, %edi
  402acb: e8 d0 e2 ff ff               	callq	0x400da0 <socket@plt>
  402ad0: 85 c0                        	testl	%eax, %eax
  402ad2: 79 4f                        	jns	0x402b23 <init_driver+0xad>
  402ad4: 48 b8 45 72 72 6f 72 3a 20 43	movabsq	$4836930262966366789, %rax # imm = 0x43203A726F727245
  402ade: 48 89 45 00                  	movq	%rax, (%rbp)
  402ae2: 48 b8 6c 69 65 6e 74 20 75 6e	movabsq	$7959303600887654764, %rax # imm = 0x6E7520746E65696C
  402aec: 48 89 45 08                  	movq	%rax, 8(%rbp)
  402af0: 48 b8 61 62 6c 65 20 74 6f 20	movabsq	$2337214414117954145, %rax # imm = 0x206F7420656C6261
  402afa: 48 89 45 10                  	movq	%rax, 16(%rbp)
  402afe: 48 b8 63 72 65 61 74 65 20 73	movabsq	$8295742064141103715, %rax # imm = 0x7320657461657263
  402b08: 48 89 45 18                  	movq	%rax, 24(%rbp)
  402b0c: c7 45 20 6f 63 6b 65         	movl	$1701536623, 32(%rbp)   # imm = 0x656B636F
  402b13: 66 c7 45 24 74 00            	movw	$116, 36(%rbp)
  402b19: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
  402b1e: e9 9b 00 00 00               	jmp	0x402bbe <init_driver+0x148>
  402b23: 89 c3                        	movl	%eax, %ebx
  402b25: 66 c7 04 24 02 00            	movw	$2, (%rsp)
  402b2b: bf 8f 34 40 00               	movl	$4207759, %edi          # imm = 0x40348F
  402b30: b8 00 00 00 00               	movl	$0, %eax
  402b35: e8 56 e1 ff ff               	callq	0x400c90 <inet_addr@plt>
  402b3a: 89 44 24 04                  	movl	%eax, 4(%rsp)
  402b3e: 66 c7 44 24 02 3c 9a         	movw	$39484, 2(%rsp)         # imm = 0x9A3C
  402b45: ba 10 00 00 00               	movl	$16, %edx
  402b4a: 48 89 e6                     	movq	%rsp, %rsi
  402b4d: 89 df                        	movl	%ebx, %edi
  402b4f: e8 1c e2 ff ff               	callq	0x400d70 <connect@plt>
  402b54: 85 c0                        	testl	%eax, %eax
  402b56: 79 50                        	jns	0x402ba8 <init_driver+0x132>
  402b58: 48 b8 45 72 72 6f 72 3a 20 55	movabsq	$6133966955649069637, %rax # imm = 0x55203A726F727245
  402b62: 48 89 45 00                  	movq	%rax, (%rbp)
  402b66: 48 b8 6e 61 62 6c 65 20 74 6f	movabsq	$8031079655490609518, %rax # imm = 0x6F7420656C62616E
  402b70: 48 89 45 08                  	movq	%rax, 8(%rbp)
  402b74: 48 b8 20 63 6f 6e 6e 65 63 74	movabsq	$8386658456067597088, %rax # imm = 0x7463656E6E6F6320
  402b7e: 48 89 45 10                  	movq	%rax, 16(%rbp)
  402b82: 48 b8 20 74 6f 20 73 65 72 76	movabsq	$8534995788960330784, %rax # imm = 0x76726573206F7420
  402b8c: 48 89 45 18                  	movq	%rax, 24(%rbp)
  402b90: 66 c7 45 20 65 72            	movw	$29285, 32(%rbp)        # imm = 0x7265
  402b96: c6 45 22 00                  	movb	$0, 34(%rbp)
  402b9a: 89 df                        	movl	%ebx, %edi
  402b9c: e8 bf e0 ff ff               	callq	0x400c60 <close@plt>
  402ba1: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
  402ba6: eb 16                        	jmp	0x402bbe <init_driver+0x148>
  402ba8: 89 df                        	movl	%ebx, %edi
  402baa: e8 b1 e0 ff ff               	callq	0x400c60 <close@plt>
  402baf: 66 c7 45 00 4f 4b            	movw	$19279, (%rbp)          # imm = 0x4B4F
  402bb5: c6 45 02 00                  	movb	$0, 2(%rbp)
  402bb9: b8 00 00 00 00               	movl	$0, %eax
  402bbe: 48 8b 4c 24 18               	movq	24(%rsp), %rcx
  402bc3: 64 48 33 0c 25 28 00 00 00   	xorq	%fs:40, %rcx
  402bcc: 74 05                        	je	0x402bd3 <init_driver+0x15d>
  402bce: e8 4d e0 ff ff               	callq	0x400c20 <__stack_chk_fail@plt>
  402bd3: 48 83 c4 28                  	addq	$40, %rsp
  402bd7: 5b                           	popq	%rbx
  402bd8: 5d                           	popq	%rbp
  402bd9: c3                           	retq

0000000000402bda <driver_post>:
  402bda: 53                           	pushq	%rbx
  402bdb: 4c 89 cb                     	movq	%r9, %rbx
  402bde: 45 85 c0                     	testl	%r8d, %r8d
  402be1: 74 27                        	je	0x402c0a <driver_post+0x30>
  402be3: 48 89 ca                     	movq	%rcx, %rdx
  402be6: be b4 34 40 00               	movl	$4207796, %esi          # imm = 0x4034B4
  402beb: bf 01 00 00 00               	movl	$1, %edi
  402bf0: b8 00 00 00 00               	movl	$0, %eax
  402bf5: e8 26 e1 ff ff               	callq	0x400d20 <__printf_chk@plt>
  402bfa: 66 c7 03 4f 4b               	movw	$19279, (%rbx)          # imm = 0x4B4F
  402bff: c6 43 02 00                  	movb	$0, 2(%rbx)
  402c03: b8 00 00 00 00               	movl	$0, %eax
  402c08: eb 3f                        	jmp	0x402c49 <driver_post+0x6f>
  402c0a: 48 85 ff                     	testq	%rdi, %rdi
  402c0d: 74 2c                        	je	0x402c3b <driver_post+0x61>
  402c0f: 80 3f 00                     	cmpb	$0, (%rdi)
  402c12: 74 27                        	je	0x402c3b <driver_post+0x61>
  402c14: 48 83 ec 08                  	subq	$8, %rsp
  402c18: 41 51                        	pushq	%r9
  402c1a: 49 89 c9                     	movq	%rcx, %r9
  402c1d: 49 89 d0                     	movq	%rdx, %r8
  402c20: 48 89 f9                     	movq	%rdi, %rcx
  402c23: 48 89 f2                     	movq	%rsi, %rdx
  402c26: be 9a 3c 00 00               	movl	$15514, %esi            # imm = 0x3C9A
  402c2b: bf 8f 34 40 00               	movl	$4207759, %edi          # imm = 0x40348F
  402c30: e8 35 f7 ff ff               	callq	0x40236a <submitr>
  402c35: 48 83 c4 10                  	addq	$16, %rsp
  402c39: eb 0e                        	jmp	0x402c49 <driver_post+0x6f>
  402c3b: 66 c7 03 4f 4b               	movw	$19279, (%rbx)          # imm = 0x4B4F
  402c40: c6 43 02 00                  	movb	$0, 2(%rbx)
  402c44: b8 00 00 00 00               	movl	$0, %eax
  402c49: 5b                           	popq	%rbx
  402c4a: c3                           	retq

0000000000402c4b <check>:
  402c4b: 89 f8                        	movl	%edi, %eax
  402c4d: c1 e8 1c                     	shrl	$28, %eax
  402c50: 85 c0                        	testl	%eax, %eax
  402c52: 74 1d                        	je	0x402c71 <check+0x26>
  402c54: b9 00 00 00 00               	movl	$0, %ecx
  402c59: eb 0b                        	jmp	0x402c66 <check+0x1b>
  402c5b: 89 f8                        	movl	%edi, %eax
  402c5d: d3 e8                        	shrl	%cl, %eax
  402c5f: 3c 0a                        	cmpb	$10, %al
  402c61: 74 14                        	je	0x402c77 <check+0x2c>
  402c63: 83 c1 08                     	addl	$8, %ecx
  402c66: 83 f9 1f                     	cmpl	$31, %ecx
  402c69: 7e f0                        	jle	0x402c5b <check+0x10>
  402c6b: b8 01 00 00 00               	movl	$1, %eax
  402c70: c3                           	retq
  402c71: b8 00 00 00 00               	movl	$0, %eax
  402c76: c3                           	retq
  402c77: b8 00 00 00 00               	movl	$0, %eax
  402c7c: c3                           	retq

0000000000402c7d <gencookie>:
  402c7d: 53                           	pushq	%rbx
  402c7e: 83 c7 01                     	addl	$1, %edi
  402c81: e8 4a df ff ff               	callq	0x400bd0 <srandom@plt>
  402c86: e8 55 e0 ff ff               	callq	0x400ce0 <random@plt>
  402c8b: 89 c3                        	movl	%eax, %ebx
  402c8d: 89 c7                        	movl	%eax, %edi
  402c8f: e8 b7 ff ff ff               	callq	0x402c4b <check>
  402c94: 85 c0                        	testl	%eax, %eax
  402c96: 74 ee                        	je	0x402c86 <gencookie+0x9>
  402c98: 89 d8                        	movl	%ebx, %eax
  402c9a: 5b                           	popq	%rbx
  402c9b: c3                           	retq
  402c9c: 0f 1f 40 00                  	nopl	(%rax)

0000000000402ca0 <__libc_csu_init>:
  402ca0: 41 57                        	pushq	%r15
  402ca2: 41 56                        	pushq	%r14
  402ca4: 41 89 ff                     	movl	%edi, %r15d
  402ca7: 41 55                        	pushq	%r13
  402ca9: 41 54                        	pushq	%r12
  402cab: 4c 8d 25 5e 21 20 00         	leaq	2105694(%rip), %r12     # 0x604e10 <__init_array_start>
  402cb2: 55                           	pushq	%rbp
  402cb3: 48 8d 2d 5e 21 20 00         	leaq	2105694(%rip), %rbp     # 0x604e18 <__do_global_dtors_aux_fini_array_entry>
  402cba: 53                           	pushq	%rbx
  402cbb: 49 89 f6                     	movq	%rsi, %r14
  402cbe: 49 89 d5                     	movq	%rdx, %r13
  402cc1: 4c 29 e5                     	subq	%r12, %rbp
  402cc4: 48 83 ec 08                  	subq	$8, %rsp
  402cc8: 48 c1 fd 03                  	sarq	$3, %rbp
  402ccc: e8 b7 de ff ff               	callq	0x400b88 <_init>
  402cd1: 48 85 ed                     	testq	%rbp, %rbp
  402cd4: 74 20                        	je	0x402cf6 <__libc_csu_init+0x56>
  402cd6: 31 db                        	xorl	%ebx, %ebx
  402cd8: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)
  402ce0: 4c 89 ea                     	movq	%r13, %rdx
  402ce3: 4c 89 f6                     	movq	%r14, %rsi
  402ce6: 44 89 ff                     	movl	%r15d, %edi
  402ce9: 41 ff 14 dc                  	callq	*(%r12,%rbx,8)
  402ced: 48 83 c3 01                  	addq	$1, %rbx
  402cf1: 48 39 eb                     	cmpq	%rbp, %rbx
  402cf4: 75 ea                        	jne	0x402ce0 <__libc_csu_init+0x40>
  402cf6: 48 83 c4 08                  	addq	$8, %rsp
  402cfa: 5b                           	popq	%rbx
  402cfb: 5d                           	popq	%rbp
  402cfc: 41 5c                        	popq	%r12
  402cfe: 41 5d                        	popq	%r13
  402d00: 41 5e                        	popq	%r14
  402d02: 41 5f                        	popq	%r15
  402d04: c3                           	retq
  402d05: 90                           	nop
  402d06: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000000402d10 <__libc_csu_fini>:
  402d10: f3 c3                        	rep		retq

Disassembly of section .fini:

0000000000402d14 <_fini>:
  402d14: 48 83 ec 08                  	subq	$8, %rsp
  402d18: 48 83 c4 08                  	addq	$8, %rsp
  402d1c: c3                           	retq
