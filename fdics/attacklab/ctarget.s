
ctarget:	file format elf64-x86-64

Disassembly of section .init:

0000000000400b88 <_init>:
  400b88: 48 83 ec 08                  	subq	$8, %rsp
  400b8c: 48 8b 05 65 34 20 00         	movq	2110565(%rip), %rax     # 0x603ff8 <write@@GLIBC_2.2.5+0x603ff8>
  400b93: 48 85 c0                     	testq	%rax, %rax
  400b96: 74 05                        	je	0x400b9d <_init+0x15>
  400b98: e8 13 02 00 00               	callq	0x400db0 <write@@GLIBC_2.2.5+0x400db0>
  400b9d: 48 83 c4 08                  	addq	$8, %rsp
  400ba1: c3                           	retq

Disassembly of section .plt:

0000000000400bb0 <.plt>:
  400bb0: ff 35 52 34 20 00            	pushq	2110546(%rip)           # 0x604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400bb6: ff 25 54 34 20 00            	jmpq	*2110548(%rip)          # 0x604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400bbc: 0f 1f 40 00                  	nopl	(%rax)

0000000000400bc0 <__errno_location@plt>:
  400bc0: ff 25 52 34 20 00            	jmpq	*2110546(%rip)          # 0x604018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400bc6: 68 00 00 00 00               	pushq	$0
  400bcb: e9 e0 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400bd0 <srandom@plt>:
  400bd0: ff 25 4a 34 20 00            	jmpq	*2110538(%rip)          # 0x604020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400bd6: 68 01 00 00 00               	pushq	$1
  400bdb: e9 d0 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400be0 <strncmp@plt>:
  400be0: ff 25 42 34 20 00            	jmpq	*2110530(%rip)          # 0x604028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400be6: 68 02 00 00 00               	pushq	$2
  400beb: e9 c0 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400bf0 <strcpy@plt>:
  400bf0: ff 25 3a 34 20 00            	jmpq	*2110522(%rip)          # 0x604030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400bf6: 68 03 00 00 00               	pushq	$3
  400bfb: e9 b0 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400c00 <puts@plt>:
  400c00: ff 25 32 34 20 00            	jmpq	*2110514(%rip)          # 0x604038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400c06: 68 04 00 00 00               	pushq	$4
  400c0b: e9 a0 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400c10 <write@plt>:
  400c10: ff 25 2a 34 20 00            	jmpq	*2110506(%rip)          # 0x604040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400c16: 68 05 00 00 00               	pushq	$5
  400c1b: e9 90 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400c20 <__stack_chk_fail@plt>:
  400c20: ff 25 22 34 20 00            	jmpq	*2110498(%rip)          # 0x604048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400c26: 68 06 00 00 00               	pushq	$6
  400c2b: e9 80 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400c30 <mmap@plt>:
  400c30: ff 25 1a 34 20 00            	jmpq	*2110490(%rip)          # 0x604050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400c36: 68 07 00 00 00               	pushq	$7
  400c3b: e9 70 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400c40 <memset@plt>:
  400c40: ff 25 12 34 20 00            	jmpq	*2110482(%rip)          # 0x604058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400c46: 68 08 00 00 00               	pushq	$8
  400c4b: e9 60 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400c50 <alarm@plt>:
  400c50: ff 25 0a 34 20 00            	jmpq	*2110474(%rip)          # 0x604060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400c56: 68 09 00 00 00               	pushq	$9
  400c5b: e9 50 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400c60 <close@plt>:
  400c60: ff 25 02 34 20 00            	jmpq	*2110466(%rip)          # 0x604068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400c66: 68 0a 00 00 00               	pushq	$10
  400c6b: e9 40 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400c70 <read@plt>:
  400c70: ff 25 fa 33 20 00            	jmpq	*2110458(%rip)          # 0x604070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400c76: 68 0b 00 00 00               	pushq	$11
  400c7b: e9 30 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400c80 <__libc_start_main@plt>:
  400c80: ff 25 f2 33 20 00            	jmpq	*2110450(%rip)          # 0x604078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400c86: 68 0c 00 00 00               	pushq	$12
  400c8b: e9 20 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400c90 <inet_addr@plt>:
  400c90: ff 25 ea 33 20 00            	jmpq	*2110442(%rip)          # 0x604080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400c96: 68 0d 00 00 00               	pushq	$13
  400c9b: e9 10 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400ca0 <signal@plt>:
  400ca0: ff 25 e2 33 20 00            	jmpq	*2110434(%rip)          # 0x604088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400ca6: 68 0e 00 00 00               	pushq	$14
  400cab: e9 00 ff ff ff               	jmp	0x400bb0 <.plt>

0000000000400cb0 <strtol@plt>:
  400cb0: ff 25 da 33 20 00            	jmpq	*2110426(%rip)          # 0x604090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400cb6: 68 0f 00 00 00               	pushq	$15
  400cbb: e9 f0 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400cc0 <memcpy@plt>:
  400cc0: ff 25 d2 33 20 00            	jmpq	*2110418(%rip)          # 0x604098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400cc6: 68 10 00 00 00               	pushq	$16
  400ccb: e9 e0 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400cd0 <time@plt>:
  400cd0: ff 25 ca 33 20 00            	jmpq	*2110410(%rip)          # 0x6040a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400cd6: 68 11 00 00 00               	pushq	$17
  400cdb: e9 d0 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400ce0 <random@plt>:
  400ce0: ff 25 c2 33 20 00            	jmpq	*2110402(%rip)          # 0x6040a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400ce6: 68 12 00 00 00               	pushq	$18
  400ceb: e9 c0 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400cf0 <_IO_getc@plt>:
  400cf0: ff 25 ba 33 20 00            	jmpq	*2110394(%rip)          # 0x6040b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400cf6: 68 13 00 00 00               	pushq	$19
  400cfb: e9 b0 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400d00 <__isoc99_sscanf@plt>:
  400d00: ff 25 b2 33 20 00            	jmpq	*2110386(%rip)          # 0x6040b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400d06: 68 14 00 00 00               	pushq	$20
  400d0b: e9 a0 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400d10 <munmap@plt>:
  400d10: ff 25 aa 33 20 00            	jmpq	*2110378(%rip)          # 0x6040c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400d16: 68 15 00 00 00               	pushq	$21
  400d1b: e9 90 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400d20 <__printf_chk@plt>:
  400d20: ff 25 a2 33 20 00            	jmpq	*2110370(%rip)          # 0x6040c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400d26: 68 16 00 00 00               	pushq	$22
  400d2b: e9 80 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400d30 <fopen@plt>:
  400d30: ff 25 9a 33 20 00            	jmpq	*2110362(%rip)          # 0x6040d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400d36: 68 17 00 00 00               	pushq	$23
  400d3b: e9 70 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400d40 <getopt@plt>:
  400d40: ff 25 92 33 20 00            	jmpq	*2110354(%rip)          # 0x6040d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400d46: 68 18 00 00 00               	pushq	$24
  400d4b: e9 60 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400d50 <strtoul@plt>:
  400d50: ff 25 8a 33 20 00            	jmpq	*2110346(%rip)          # 0x6040e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400d56: 68 19 00 00 00               	pushq	$25
  400d5b: e9 50 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400d60 <exit@plt>:
  400d60: ff 25 82 33 20 00            	jmpq	*2110338(%rip)          # 0x6040e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400d66: 68 1a 00 00 00               	pushq	$26
  400d6b: e9 40 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400d70 <connect@plt>:
  400d70: ff 25 7a 33 20 00            	jmpq	*2110330(%rip)          # 0x6040f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400d76: 68 1b 00 00 00               	pushq	$27
  400d7b: e9 30 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400d80 <__fprintf_chk@plt>:
  400d80: ff 25 72 33 20 00            	jmpq	*2110322(%rip)          # 0x6040f8 <_GLOBAL_OFFSET_TABLE_+0xf8>
  400d86: 68 1c 00 00 00               	pushq	$28
  400d8b: e9 20 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400d90 <__sprintf_chk@plt>:
  400d90: ff 25 6a 33 20 00            	jmpq	*2110314(%rip)          # 0x604100 <_GLOBAL_OFFSET_TABLE_+0x100>
  400d96: 68 1d 00 00 00               	pushq	$29
  400d9b: e9 10 fe ff ff               	jmp	0x400bb0 <.plt>

0000000000400da0 <socket@plt>:
  400da0: ff 25 62 33 20 00            	jmpq	*2110306(%rip)          # 0x604108 <_GLOBAL_OFFSET_TABLE_+0x108>
  400da6: 68 1e 00 00 00               	pushq	$30
  400dab: e9 00 fe ff ff               	jmp	0x400bb0 <.plt>

Disassembly of section .plt.got:

0000000000400db0 <.plt.got>:
  400db0: ff 25 42 32 20 00            	jmpq	*2110018(%rip)          # 0x603ff8 <write@@GLIBC_2.2.5+0x603ff8>
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
  400dcf: 49 c7 c0 f0 2b 40 00         	movq	$4205552, %r8           # imm = 0x402BF0
  400dd6: 48 c7 c1 80 2b 40 00         	movq	$4205440, %rcx          # imm = 0x402B80
  400ddd: 48 c7 c7 3c 10 40 00         	movq	$4198460, %rdi          # imm = 0x40103C
  400de4: e8 97 fe ff ff               	callq	0x400c80 <__libc_start_main@plt>
  400de9: f4                           	hlt
  400dea: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)

0000000000400df0 <deregister_tm_clones>:
  400df0: b8 97 44 60 00               	movl	$6309015, %eax          # imm = 0x604497
  400df5: 55                           	pushq	%rbp
  400df6: 48 2d 90 44 60 00            	subq	$6309008, %rax          # imm = 0x604490
  400dfc: 48 83 f8 0e                  	cmpq	$14, %rax
  400e00: 48 89 e5                     	movq	%rsp, %rbp
  400e03: 76 1b                        	jbe	0x400e20 <deregister_tm_clones+0x30>
  400e05: b8 00 00 00 00               	movl	$0, %eax
  400e0a: 48 85 c0                     	testq	%rax, %rax
  400e0d: 74 11                        	je	0x400e20 <deregister_tm_clones+0x30>
  400e0f: 5d                           	popq	%rbp
  400e10: bf 90 44 60 00               	movl	$6309008, %edi          # imm = 0x604490
  400e15: ff e0                        	jmpq	*%rax
  400e17: 66 0f 1f 84 00 00 00 00 00   	nopw	(%rax,%rax)
  400e20: 5d                           	popq	%rbp
  400e21: c3                           	retq
  400e22: 0f 1f 40 00                  	nopl	(%rax)
  400e26: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000000400e30 <register_tm_clones>:
  400e30: be 90 44 60 00               	movl	$6309008, %esi          # imm = 0x604490
  400e35: 55                           	pushq	%rbp
  400e36: 48 81 ee 90 44 60 00         	subq	$6309008, %rsi          # imm = 0x604490
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
  400e5e: bf 90 44 60 00               	movl	$6309008, %edi          # imm = 0x604490
  400e63: ff e0                        	jmpq	*%rax
  400e65: 0f 1f 00                     	nopl	(%rax)
  400e68: 5d                           	popq	%rbp
  400e69: c3                           	retq
  400e6a: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)

0000000000400e70 <__do_global_dtors_aux>:
  400e70: 80 3d 51 36 20 00 00         	cmpb	$0, 2111057(%rip)       # 0x6044c8 <completed.7594>
  400e77: 75 11                        	jne	0x400e8a <__do_global_dtors_aux+0x1a>
  400e79: 55                           	pushq	%rbp
  400e7a: 48 89 e5                     	movq	%rsp, %rbp
  400e7d: e8 6e ff ff ff               	callq	0x400df0 <deregister_tm_clones>
  400e82: 5d                           	popq	%rbp
  400e83: c6 05 3e 36 20 00 01         	movb	$1, 2111038(%rip)       # 0x6044c8 <completed.7594>
  400e8a: f3 c3                        	rep		retq
  400e8c: 0f 1f 40 00                  	nopl	(%rax)

0000000000400e90 <frame_dummy>:
  400e90: bf 20 3e 60 00               	movl	$6307360, %edi          # imm = 0x603E20
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
  400ebd: 83 3d 44 36 20 00 00         	cmpl	$0, 2111044(%rip)       # 0x604508 <is_checker>
  400ec4: 74 3e                        	je	0x400f04 <usage+0x4e>
  400ec6: be 08 2c 40 00               	movl	$4205576, %esi          # imm = 0x402C08
  400ecb: bf 01 00 00 00               	movl	$1, %edi
  400ed0: b8 00 00 00 00               	movl	$0, %eax
  400ed5: e8 46 fe ff ff               	callq	0x400d20 <__printf_chk@plt>
  400eda: bf 40 2c 40 00               	movl	$4205632, %edi          # imm = 0x402C40
  400edf: e8 1c fd ff ff               	callq	0x400c00 <puts@plt>
  400ee4: bf 40 2d 40 00               	movl	$4205888, %edi          # imm = 0x402D40
  400ee9: e8 12 fd ff ff               	callq	0x400c00 <puts@plt>
  400eee: bf 68 2c 40 00               	movl	$4205672, %edi          # imm = 0x402C68
  400ef3: e8 08 fd ff ff               	callq	0x400c00 <puts@plt>
  400ef8: bf 5a 2d 40 00               	movl	$4205914, %edi          # imm = 0x402D5A
  400efd: e8 fe fc ff ff               	callq	0x400c00 <puts@plt>
  400f02: eb 32                        	jmp	0x400f36 <usage+0x80>
  400f04: be 76 2d 40 00               	movl	$4205942, %esi          # imm = 0x402D76
  400f09: bf 01 00 00 00               	movl	$1, %edi
  400f0e: b8 00 00 00 00               	movl	$0, %eax
  400f13: e8 08 fe ff ff               	callq	0x400d20 <__printf_chk@plt>
  400f18: bf 90 2c 40 00               	movl	$4205712, %edi          # imm = 0x402C90
  400f1d: e8 de fc ff ff               	callq	0x400c00 <puts@plt>
  400f22: bf b8 2c 40 00               	movl	$4205752, %edi          # imm = 0x402CB8
  400f27: e8 d4 fc ff ff               	callq	0x400c00 <puts@plt>
  400f2c: bf 94 2d 40 00               	movl	$4205972, %edi          # imm = 0x402D94
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
  400f5e: 89 3d 94 35 20 00            	movl	%edi, 2110868(%rip)     # 0x6044f8 <check_level>
  400f64: 8b 3d de 31 20 00            	movl	2109918(%rip), %edi     # 0x604148 <target_id>
  400f6a: e8 ed 1b 00 00               	callq	0x402b5c <gencookie>
  400f6f: 89 05 8f 35 20 00            	movl	%eax, 2110863(%rip)     # 0x604504 <cookie>
  400f75: 89 c7                        	movl	%eax, %edi
  400f77: e8 e0 1b 00 00               	callq	0x402b5c <gencookie>
  400f7c: 89 05 7e 35 20 00            	movl	%eax, 2110846(%rip)     # 0x604500 <authkey>
  400f82: 8b 05 c0 31 20 00            	movl	2109888(%rip), %eax     # 0x604148 <target_id>
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
  400fcd: 48 89 05 ac 34 20 00         	movq	%rax, 2110636(%rip)     # 0x604480 <buf_offset>
  400fd4: c6 05 4d 41 20 00 63         	movb	$99, 2113869(%rip)      # 0x605128 <target_prefix>
  400fdb: 83 3d a6 34 20 00 00         	cmpl	$0, 2110630(%rip)       # 0x604488 <notify>
  400fe2: 74 36                        	je	0x40101a <initialize_target+0xda>
  400fe4: 83 3d 1d 35 20 00 00         	cmpl	$0, 2110749(%rip)       # 0x604508 <is_checker>
  400feb: 75 2d                        	jne	0x40101a <initialize_target+0xda>
  400fed: 48 89 e7                     	movq	%rsp, %rdi
  400ff0: e8 60 19 00 00               	callq	0x402955 <init_driver>
  400ff5: 85 c0                        	testl	%eax, %eax
  400ff7: 79 21                        	jns	0x40101a <initialize_target+0xda>
  400ff9: 48 89 e2                     	movq	%rsp, %rdx
  400ffc: be e8 2c 40 00               	movl	$4205800, %esi          # imm = 0x402CE8
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
  40104a: be 1d 1d 40 00               	movl	$4201757, %esi          # imm = 0x401D1D
  40104f: bf 0b 00 00 00               	movl	$11, %edi
  401054: e8 47 fc ff ff               	callq	0x400ca0 <signal@plt>
  401059: be cf 1c 40 00               	movl	$4201679, %esi          # imm = 0x401CCF
  40105e: bf 07 00 00 00               	movl	$7, %edi
  401063: e8 38 fc ff ff               	callq	0x400ca0 <signal@plt>
  401068: be 6b 1d 40 00               	movl	$4201835, %esi          # imm = 0x401D6B
  40106d: bf 04 00 00 00               	movl	$4, %edi
  401072: e8 29 fc ff ff               	callq	0x400ca0 <signal@plt>
  401077: 83 3d 8a 34 20 00 00         	cmpl	$0, 2110602(%rip)       # 0x604508 <is_checker>
  40107e: 74 20                        	je	0x4010a0 <main+0x64>
  401080: be b9 1d 40 00               	movl	$4201913, %esi          # imm = 0x401DB9
  401085: bf 0e 00 00 00               	movl	$14, %edi
  40108a: e8 11 fc ff ff               	callq	0x400ca0 <signal@plt>
  40108f: bf 05 00 00 00               	movl	$5, %edi
  401094: e8 b7 fb ff ff               	callq	0x400c50 <alarm@plt>
  401099: bd b2 2d 40 00               	movl	$4206002, %ebp          # imm = 0x402DB2
  40109e: eb 05                        	jmp	0x4010a5 <main+0x69>
  4010a0: bd ad 2d 40 00               	movl	$4205997, %ebp          # imm = 0x402DAD
  4010a5: 48 8b 05 f4 33 20 00         	movq	2110452(%rip), %rax     # 0x6044a0 <stdin@@GLIBC_2.2.5>
  4010ac: 48 89 05 3d 34 20 00         	movq	%rax, 2110525(%rip)     # 0x6044f0 <infile>
  4010b3: 41 bd 00 00 00 00            	movl	$0, %r13d
  4010b9: 41 be 00 00 00 00            	movl	$0, %r14d
  4010bf: e9 c6 00 00 00               	jmp	0x40118a <main+0x14e>
  4010c4: 83 e8 61                     	subl	$97, %eax
  4010c7: 3c 10                        	cmpb	$16, %al
  4010c9: 0f 87 9c 00 00 00            	ja	0x40116b <main+0x12f>
  4010cf: 0f b6 c0                     	movzbl	%al, %eax
  4010d2: ff 24 c5 f8 2d 40 00         	jmpq	*4206072(,%rax,8)
  4010d9: 48 8b 3b                     	movq	(%rbx), %rdi
  4010dc: e8 d5 fd ff ff               	callq	0x400eb6 <usage>
  4010e1: be 7d 30 40 00               	movl	$4206717, %esi          # imm = 0x40307D
  4010e6: 48 8b 3d bb 33 20 00         	movq	2110395(%rip), %rdi     # 0x6044a8 <optarg@@GLIBC_2.2.5>
  4010ed: e8 3e fc ff ff               	callq	0x400d30 <fopen@plt>
  4010f2: 48 89 05 f7 33 20 00         	movq	%rax, 2110455(%rip)     # 0x6044f0 <infile>
  4010f9: 48 85 c0                     	testq	%rax, %rax
  4010fc: 0f 85 88 00 00 00            	jne	0x40118a <main+0x14e>
  401102: 48 8b 0d 9f 33 20 00         	movq	2110367(%rip), %rcx     # 0x6044a8 <optarg@@GLIBC_2.2.5>
  401109: ba ba 2d 40 00               	movl	$4206010, %edx          # imm = 0x402DBA
  40110e: be 01 00 00 00               	movl	$1, %esi
  401113: 48 8b 3d a6 33 20 00         	movq	2110374(%rip), %rdi     # 0x6044c0 <stderr@@GLIBC_2.2.5>
  40111a: e8 61 fc ff ff               	callq	0x400d80 <__fprintf_chk@plt>
  40111f: b8 01 00 00 00               	movl	$1, %eax
  401124: e9 e4 00 00 00               	jmp	0x40120d <main+0x1d1>
  401129: ba 10 00 00 00               	movl	$16, %edx
  40112e: be 00 00 00 00               	movl	$0, %esi
  401133: 48 8b 3d 6e 33 20 00         	movq	2110318(%rip), %rdi     # 0x6044a8 <optarg@@GLIBC_2.2.5>
  40113a: e8 11 fc ff ff               	callq	0x400d50 <strtoul@plt>
  40113f: 41 89 c6                     	movl	%eax, %r14d
  401142: eb 46                        	jmp	0x40118a <main+0x14e>
  401144: ba 0a 00 00 00               	movl	$10, %edx
  401149: be 00 00 00 00               	movl	$0, %esi
  40114e: 48 8b 3d 53 33 20 00         	movq	2110291(%rip), %rdi     # 0x6044a8 <optarg@@GLIBC_2.2.5>
  401155: e8 56 fb ff ff               	callq	0x400cb0 <strtol@plt>
  40115a: 41 89 c5                     	movl	%eax, %r13d
  40115d: eb 2b                        	jmp	0x40118a <main+0x14e>
  40115f: c7 05 1f 33 20 00 00 00 00 00	movl	$0, 2110239(%rip)       # 0x604488 <notify>
  401169: eb 1f                        	jmp	0x40118a <main+0x14e>
  40116b: 0f be d2                     	movsbl	%dl, %edx
  40116e: be d7 2d 40 00               	movl	$4206039, %esi          # imm = 0x402DD7
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
  4011a2: be 00 00 00 00               	movl	$0, %esi
  4011a7: 44 89 ef                     	movl	%r13d, %edi
  4011aa: e8 91 fd ff ff               	callq	0x400f40 <initialize_target>
  4011af: 83 3d 52 33 20 00 00         	cmpl	$0, 2110290(%rip)       # 0x604508 <is_checker>
  4011b6: 74 2a                        	je	0x4011e2 <main+0x1a6>
  4011b8: 44 3b 35 41 33 20 00         	cmpl	2110273(%rip), %r14d    # 0x604500 <authkey>
  4011bf: 74 21                        	je	0x4011e2 <main+0x1a6>
  4011c1: 44 89 f2                     	movl	%r14d, %edx
  4011c4: be 10 2d 40 00               	movl	$4205840, %esi          # imm = 0x402D10
  4011c9: bf 01 00 00 00               	movl	$1, %edi
  4011ce: b8 00 00 00 00               	movl	$0, %eax
  4011d3: e8 48 fb ff ff               	callq	0x400d20 <__printf_chk@plt>
  4011d8: b8 00 00 00 00               	movl	$0, %eax
  4011dd: e8 89 07 00 00               	callq	0x40196b <check_fail>
  4011e2: 8b 15 1c 33 20 00            	movl	2110236(%rip), %edx     # 0x604504 <cookie>
  4011e8: be ea 2d 40 00               	movl	$4206058, %esi          # imm = 0x402DEA
  4011ed: bf 01 00 00 00               	movl	$1, %edi
  4011f2: b8 00 00 00 00               	movl	$0, %eax
  4011f7: e8 24 fb ff ff               	callq	0x400d20 <__printf_chk@plt>
  4011fc: 48 8b 3d 7d 32 20 00         	movq	2110077(%rip), %rdi     # 0x604480 <buf_offset>
  401203: e8 b1 0c 00 00               	callq	0x401eb9 <stable_launch>
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
  40171d: e8 7e 02 00 00               	callq	0x4019a0 <Gets>
  401722: b8 01 00 00 00               	movl	$1, %eax
  401727: 48 83 c4 28                  	addq	$40, %rsp
  40172b: c3                           	retq

000000000040172c <touch1>:
  40172c: 48 83 ec 08                  	subq	$8, %rsp
  401730: c7 05 c2 2d 20 00 01 00 00 00	movl	$1, 2108866(%rip)       # 0x6044fc <vlevel>
  40173a: bf d3 2e 40 00               	movl	$4206291, %edi          # imm = 0x402ED3
  40173f: e8 bc f4 ff ff               	callq	0x400c00 <puts@plt>
  401744: bf 01 00 00 00               	movl	$1, %edi
  401749: e8 97 04 00 00               	callq	0x401be5 <validate>
  40174e: bf 00 00 00 00               	movl	$0, %edi
  401753: e8 08 f6 ff ff               	callq	0x400d60 <exit@plt>

0000000000401758 <touch2>:
  401758: 48 83 ec 08                  	subq	$8, %rsp
  40175c: 89 fa                        	movl	%edi, %edx
  40175e: c7 05 94 2d 20 00 02 00 00 00	movl	$2, 2108820(%rip)       # 0x6044fc <vlevel>
  401768: 39 3d 96 2d 20 00            	cmpl	%edi, 2108822(%rip)     # 0x604504 <cookie>
  40176e: 75 20                        	jne	0x401790 <touch2+0x38>
  401770: be f8 2e 40 00               	movl	$4206328, %esi          # imm = 0x402EF8
  401775: bf 01 00 00 00               	movl	$1, %edi
  40177a: b8 00 00 00 00               	movl	$0, %eax
  40177f: e8 9c f5 ff ff               	callq	0x400d20 <__printf_chk@plt>
  401784: bf 02 00 00 00               	movl	$2, %edi
  401789: e8 57 04 00 00               	callq	0x401be5 <validate>
  40178e: eb 1e                        	jmp	0x4017ae <touch2+0x56>
  401790: be 20 2f 40 00               	movl	$4206368, %esi          # imm = 0x402F20
  401795: bf 01 00 00 00               	movl	$1, %edi
  40179a: b8 00 00 00 00               	movl	$0, %eax
  40179f: e8 7c f5 ff ff               	callq	0x400d20 <__printf_chk@plt>
  4017a4: bf 02 00 00 00               	movl	$2, %edi
  4017a9: e8 f9 04 00 00               	callq	0x401ca7 <fail>
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
  401815: b9 f0 2e 40 00               	movl	$4206320, %ecx          # imm = 0x402EF0
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
  40186d: c7 05 85 2c 20 00 03 00 00 00	movl	$3, 2108549(%rip)       # 0x6044fc <vlevel>
  401877: 48 89 fe                     	movq	%rdi, %rsi
  40187a: 8b 3d 84 2c 20 00            	movl	2108548(%rip), %edi     # 0x604504 <cookie>
  401880: e8 33 ff ff ff               	callq	0x4017b8 <hexmatch>
  401885: 85 c0                        	testl	%eax, %eax
  401887: 74 23                        	je	0x4018ac <touch3+0x43>
  401889: 48 89 da                     	movq	%rbx, %rdx
  40188c: be 48 2f 40 00               	movl	$4206408, %esi          # imm = 0x402F48
  401891: bf 01 00 00 00               	movl	$1, %edi
  401896: b8 00 00 00 00               	movl	$0, %eax
  40189b: e8 80 f4 ff ff               	callq	0x400d20 <__printf_chk@plt>
  4018a0: bf 03 00 00 00               	movl	$3, %edi
  4018a5: e8 3b 03 00 00               	callq	0x401be5 <validate>
  4018aa: eb 21                        	jmp	0x4018cd <touch3+0x64>
  4018ac: 48 89 da                     	movq	%rbx, %rdx
  4018af: be 70 2f 40 00               	movl	$4206448, %esi          # imm = 0x402F70
  4018b4: bf 01 00 00 00               	movl	$1, %edi
  4018b9: b8 00 00 00 00               	movl	$0, %eax
  4018be: e8 5d f4 ff ff               	callq	0x400d20 <__printf_chk@plt>
  4018c3: bf 03 00 00 00               	movl	$3, %edi
  4018c8: e8 da 03 00 00               	callq	0x401ca7 <fail>
  4018cd: bf 00 00 00 00               	movl	$0, %edi
  4018d2: e8 89 f4 ff ff               	callq	0x400d60 <exit@plt>

00000000004018d7 <test>:
  4018d7: 48 83 ec 08                  	subq	$8, %rsp
  4018db: b8 00 00 00 00               	movl	$0, %eax
  4018e0: e8 31 fe ff ff               	callq	0x401716 <getbuf>
  4018e5: 89 c2                        	movl	%eax, %edx
  4018e7: be 98 2f 40 00               	movl	$4206488, %esi          # imm = 0x402F98
  4018ec: bf 01 00 00 00               	movl	$1, %edi
  4018f1: b8 00 00 00 00               	movl	$0, %eax
  4018f6: e8 25 f4 ff ff               	callq	0x400d20 <__printf_chk@plt>
  4018fb: 48 83 c4 08                  	addq	$8, %rsp
  4018ff: c3                           	retq

0000000000401900 <save_char>:
  401900: 8b 05 1e 38 20 00            	movl	2111518(%rip), %eax     # 0x605124 <gets_cnt>
  401906: 3d ff 03 00 00               	cmpl	$1023, %eax             # imm = 0x3FF
  40190b: 7f 49                        	jg	0x401956 <save_char+0x56>
  40190d: 8d 14 40                     	leal	(%rax,%rax,2), %edx
  401910: 89 f9                        	movl	%edi, %ecx
  401912: c0 e9 04                     	shrb	$4, %cl
  401915: 83 e1 0f                     	andl	$15, %ecx
  401918: 0f b6 b1 c0 32 40 00         	movzbl	4207296(%rcx), %esi
  40191f: 48 63 ca                     	movslq	%edx, %rcx
  401922: 40 88 b1 20 45 60 00         	movb	%sil, 6309152(%rcx)
  401929: 8d 4a 01                     	leal	1(%rdx), %ecx
  40192c: 83 e7 0f                     	andl	$15, %edi
  40192f: 0f b6 b7 c0 32 40 00         	movzbl	4207296(%rdi), %esi
  401936: 48 63 c9                     	movslq	%ecx, %rcx
  401939: 40 88 b1 20 45 60 00         	movb	%sil, 6309152(%rcx)
  401940: 83 c2 02                     	addl	$2, %edx
  401943: 48 63 d2                     	movslq	%edx, %rdx
  401946: c6 82 20 45 60 00 20         	movb	$32, 6309152(%rdx)
  40194d: 83 c0 01                     	addl	$1, %eax
  401950: 89 05 ce 37 20 00            	movl	%eax, 2111438(%rip)     # 0x605124 <gets_cnt>
  401956: f3 c3                        	rep		retq

0000000000401958 <save_term>:
  401958: 8b 05 c6 37 20 00            	movl	2111430(%rip), %eax     # 0x605124 <gets_cnt>
  40195e: 8d 04 40                     	leal	(%rax,%rax,2), %eax
  401961: 48 98                        	cltq
  401963: c6 80 20 45 60 00 00         	movb	$0, 6309152(%rax)
  40196a: c3                           	retq

000000000040196b <check_fail>:
  40196b: 48 83 ec 08                  	subq	$8, %rsp
  40196f: 0f be 15 b2 37 20 00         	movsbl	2111410(%rip), %edx     # 0x605128 <target_prefix>
  401976: 41 b8 20 45 60 00            	movl	$6309152, %r8d          # imm = 0x604520
  40197c: 8b 0d 76 2b 20 00            	movl	2108278(%rip), %ecx     # 0x6044f8 <check_level>
  401982: be bb 2f 40 00               	movl	$4206523, %esi          # imm = 0x402FBB
  401987: bf 01 00 00 00               	movl	$1, %edi
  40198c: b8 00 00 00 00               	movl	$0, %eax
  401991: e8 8a f3 ff ff               	callq	0x400d20 <__printf_chk@plt>
  401996: bf 01 00 00 00               	movl	$1, %edi
  40199b: e8 c0 f3 ff ff               	callq	0x400d60 <exit@plt>

00000000004019a0 <Gets>:
  4019a0: 41 54                        	pushq	%r12
  4019a2: 55                           	pushq	%rbp
  4019a3: 53                           	pushq	%rbx
  4019a4: 49 89 fc                     	movq	%rdi, %r12
  4019a7: c7 05 73 37 20 00 00 00 00 00	movl	$0, 2111347(%rip)       # 0x605124 <gets_cnt>
  4019b1: 48 89 fb                     	movq	%rdi, %rbx
  4019b4: eb 11                        	jmp	0x4019c7 <Gets+0x27>
  4019b6: 48 8d 6b 01                  	leaq	1(%rbx), %rbp
  4019ba: 88 03                        	movb	%al, (%rbx)
  4019bc: 0f b6 f8                     	movzbl	%al, %edi
  4019bf: e8 3c ff ff ff               	callq	0x401900 <save_char>
  4019c4: 48 89 eb                     	movq	%rbp, %rbx
  4019c7: 48 8b 3d 22 2b 20 00         	movq	2108194(%rip), %rdi     # 0x6044f0 <infile>
  4019ce: e8 1d f3 ff ff               	callq	0x400cf0 <_IO_getc@plt>
  4019d3: 83 f8 ff                     	cmpl	$-1, %eax
  4019d6: 74 05                        	je	0x4019dd <Gets+0x3d>
  4019d8: 83 f8 0a                     	cmpl	$10, %eax
  4019db: 75 d9                        	jne	0x4019b6 <Gets+0x16>
  4019dd: c6 03 00                     	movb	$0, (%rbx)
  4019e0: b8 00 00 00 00               	movl	$0, %eax
  4019e5: e8 6e ff ff ff               	callq	0x401958 <save_term>
  4019ea: 4c 89 e0                     	movq	%r12, %rax
  4019ed: 5b                           	popq	%rbx
  4019ee: 5d                           	popq	%rbp
  4019ef: 41 5c                        	popq	%r12
  4019f1: c3                           	retq

00000000004019f2 <notify_server>:
  4019f2: 53                           	pushq	%rbx
  4019f3: 48 81 ec 10 40 00 00         	subq	$16400, %rsp            # imm = 0x4010
  4019fa: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
  401a03: 48 89 84 24 08 40 00 00      	movq	%rax, 16392(%rsp)
  401a0b: 31 c0                        	xorl	%eax, %eax
  401a0d: 83 3d f4 2a 20 00 00         	cmpl	$0, 2108148(%rip)       # 0x604508 <is_checker>
  401a14: 0f 85 aa 01 00 00            	jne	0x401bc4 <notify_server+0x1d2>
  401a1a: 89 fb                        	movl	%edi, %ebx
  401a1c: 8b 05 02 37 20 00            	movl	2111234(%rip), %eax     # 0x605124 <gets_cnt>
  401a22: 83 c0 64                     	addl	$100, %eax
  401a25: 3d 00 20 00 00               	cmpl	$8192, %eax             # imm = 0x2000
  401a2a: 7e 1e                        	jle	0x401a4a <notify_server+0x58>
  401a2c: be f0 30 40 00               	movl	$4206832, %esi          # imm = 0x4030F0
  401a31: bf 01 00 00 00               	movl	$1, %edi
  401a36: b8 00 00 00 00               	movl	$0, %eax
  401a3b: e8 e0 f2 ff ff               	callq	0x400d20 <__printf_chk@plt>
  401a40: bf 01 00 00 00               	movl	$1, %edi
  401a45: e8 16 f3 ff ff               	callq	0x400d60 <exit@plt>
  401a4a: 0f be 05 d7 36 20 00         	movsbl	2111191(%rip), %eax     # 0x605128 <target_prefix>
  401a51: 83 3d 30 2a 20 00 00         	cmpl	$0, 2107952(%rip)       # 0x604488 <notify>
  401a58: 74 08                        	je	0x401a62 <notify_server+0x70>
  401a5a: 8b 15 a0 2a 20 00            	movl	2108064(%rip), %edx     # 0x604500 <authkey>
  401a60: eb 05                        	jmp	0x401a67 <notify_server+0x75>
  401a62: ba ff ff ff ff               	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
  401a67: 85 db                        	testl	%ebx, %ebx
  401a69: 74 08                        	je	0x401a73 <notify_server+0x81>
  401a6b: 41 b9 d1 2f 40 00            	movl	$4206545, %r9d          # imm = 0x402FD1
  401a71: eb 06                        	jmp	0x401a79 <notify_server+0x87>
  401a73: 41 b9 d6 2f 40 00            	movl	$4206550, %r9d          # imm = 0x402FD6
  401a79: 68 20 45 60 00               	pushq	$6309152                # imm = 0x604520
  401a7e: 56                           	pushq	%rsi
  401a7f: 50                           	pushq	%rax
  401a80: 52                           	pushq	%rdx
  401a81: 44 8b 05 c0 26 20 00         	movl	2107072(%rip), %r8d     # 0x604148 <target_id>
  401a88: b9 db 2f 40 00               	movl	$4206555, %ecx          # imm = 0x402FDB
  401a8d: ba 00 20 00 00               	movl	$8192, %edx             # imm = 0x2000
  401a92: be 01 00 00 00               	movl	$1, %esi
  401a97: 48 8d 7c 24 20               	leaq	32(%rsp), %rdi
  401a9c: b8 00 00 00 00               	movl	$0, %eax
  401aa1: e8 ea f2 ff ff               	callq	0x400d90 <__sprintf_chk@plt>
  401aa6: 48 83 c4 20                  	addq	$32, %rsp
  401aaa: 83 3d d7 29 20 00 00         	cmpl	$0, 2107863(%rip)       # 0x604488 <notify>
  401ab1: 0f 84 81 00 00 00            	je	0x401b38 <notify_server+0x146>
  401ab7: 85 db                        	testl	%ebx, %ebx
  401ab9: 74 6e                        	je	0x401b29 <notify_server+0x137>
  401abb: 4c 8d 8c 24 00 20 00 00      	leaq	8192(%rsp), %r9
  401ac3: 41 b8 00 00 00 00            	movl	$0, %r8d
  401ac9: 48 89 e1                     	movq	%rsp, %rcx
  401acc: 48 8b 15 7d 26 20 00         	movq	2107005(%rip), %rdx     # 0x604150 <lab>
  401ad3: 48 8b 35 7e 26 20 00         	movq	2107006(%rip), %rsi     # 0x604158 <course>
  401ada: 48 8b 3d 5f 26 20 00         	movq	2106975(%rip), %rdi     # 0x604140 <user_id>
  401ae1: e8 d3 0f 00 00               	callq	0x402ab9 <driver_post>
  401ae6: 85 c0                        	testl	%eax, %eax
  401ae8: 79 26                        	jns	0x401b10 <notify_server+0x11e>
  401aea: 48 8d 94 24 00 20 00 00      	leaq	8192(%rsp), %rdx
  401af2: be f7 2f 40 00               	movl	$4206583, %esi          # imm = 0x402FF7
  401af7: bf 01 00 00 00               	movl	$1, %edi
  401afc: b8 00 00 00 00               	movl	$0, %eax
  401b01: e8 1a f2 ff ff               	callq	0x400d20 <__printf_chk@plt>
  401b06: bf 01 00 00 00               	movl	$1, %edi
  401b0b: e8 50 f2 ff ff               	callq	0x400d60 <exit@plt>
  401b10: bf 20 31 40 00               	movl	$4206880, %edi          # imm = 0x403120
  401b15: e8 e6 f0 ff ff               	callq	0x400c00 <puts@plt>
  401b1a: bf 03 30 40 00               	movl	$4206595, %edi          # imm = 0x403003
  401b1f: e8 dc f0 ff ff               	callq	0x400c00 <puts@plt>
  401b24: e9 9b 00 00 00               	jmp	0x401bc4 <notify_server+0x1d2>
  401b29: bf 0d 30 40 00               	movl	$4206605, %edi          # imm = 0x40300D
  401b2e: e8 cd f0 ff ff               	callq	0x400c00 <puts@plt>
  401b33: e9 8c 00 00 00               	jmp	0x401bc4 <notify_server+0x1d2>
  401b38: 85 db                        	testl	%ebx, %ebx
  401b3a: 74 07                        	je	0x401b43 <notify_server+0x151>
  401b3c: ba d1 2f 40 00               	movl	$4206545, %edx          # imm = 0x402FD1
  401b41: eb 05                        	jmp	0x401b48 <notify_server+0x156>
  401b43: ba d6 2f 40 00               	movl	$4206550, %edx          # imm = 0x402FD6
  401b48: be 58 31 40 00               	movl	$4206936, %esi          # imm = 0x403158
  401b4d: bf 01 00 00 00               	movl	$1, %edi
  401b52: b8 00 00 00 00               	movl	$0, %eax
  401b57: e8 c4 f1 ff ff               	callq	0x400d20 <__printf_chk@plt>
  401b5c: 48 8b 15 dd 25 20 00         	movq	2106845(%rip), %rdx     # 0x604140 <user_id>
  401b63: be 14 30 40 00               	movl	$4206612, %esi          # imm = 0x403014
  401b68: bf 01 00 00 00               	movl	$1, %edi
  401b6d: b8 00 00 00 00               	movl	$0, %eax
  401b72: e8 a9 f1 ff ff               	callq	0x400d20 <__printf_chk@plt>
  401b77: 48 8b 15 da 25 20 00         	movq	2106842(%rip), %rdx     # 0x604158 <course>
  401b7e: be 21 30 40 00               	movl	$4206625, %esi          # imm = 0x403021
  401b83: bf 01 00 00 00               	movl	$1, %edi
  401b88: b8 00 00 00 00               	movl	$0, %eax
  401b8d: e8 8e f1 ff ff               	callq	0x400d20 <__printf_chk@plt>
  401b92: 48 8b 15 b7 25 20 00         	movq	2106807(%rip), %rdx     # 0x604150 <lab>
  401b99: be 2d 30 40 00               	movl	$4206637, %esi          # imm = 0x40302D
  401b9e: bf 01 00 00 00               	movl	$1, %edi
  401ba3: b8 00 00 00 00               	movl	$0, %eax
  401ba8: e8 73 f1 ff ff               	callq	0x400d20 <__printf_chk@plt>
  401bad: 48 89 e2                     	movq	%rsp, %rdx
  401bb0: be 36 30 40 00               	movl	$4206646, %esi          # imm = 0x403036
  401bb5: bf 01 00 00 00               	movl	$1, %edi
  401bba: b8 00 00 00 00               	movl	$0, %eax
  401bbf: e8 5c f1 ff ff               	callq	0x400d20 <__printf_chk@plt>
  401bc4: 48 8b 84 24 08 40 00 00      	movq	16392(%rsp), %rax
  401bcc: 64 48 33 04 25 28 00 00 00   	xorq	%fs:40, %rax
  401bd5: 74 05                        	je	0x401bdc <notify_server+0x1ea>
  401bd7: e8 44 f0 ff ff               	callq	0x400c20 <__stack_chk_fail@plt>
  401bdc: 48 81 c4 10 40 00 00         	addq	$16400, %rsp            # imm = 0x4010
  401be3: 5b                           	popq	%rbx
  401be4: c3                           	retq

0000000000401be5 <validate>:
  401be5: 53                           	pushq	%rbx
  401be6: 89 fb                        	movl	%edi, %ebx
  401be8: 83 3d 19 29 20 00 00         	cmpl	$0, 2107673(%rip)       # 0x604508 <is_checker>
  401bef: 74 6b                        	je	0x401c5c <validate+0x77>
  401bf1: 39 3d 05 29 20 00            	cmpl	%edi, 2107653(%rip)     # 0x6044fc <vlevel>
  401bf7: 74 14                        	je	0x401c0d <validate+0x28>
  401bf9: bf 42 30 40 00               	movl	$4206658, %edi          # imm = 0x403042
  401bfe: e8 fd ef ff ff               	callq	0x400c00 <puts@plt>
  401c03: b8 00 00 00 00               	movl	$0, %eax
  401c08: e8 5e fd ff ff               	callq	0x40196b <check_fail>
  401c0d: 8b 15 e5 28 20 00            	movl	2107621(%rip), %edx     # 0x6044f8 <check_level>
  401c13: 39 d7                        	cmpl	%edx, %edi
  401c15: 74 20                        	je	0x401c37 <validate+0x52>
  401c17: 89 f9                        	movl	%edi, %ecx
  401c19: be 80 31 40 00               	movl	$4206976, %esi          # imm = 0x403180
  401c1e: bf 01 00 00 00               	movl	$1, %edi
  401c23: b8 00 00 00 00               	movl	$0, %eax
  401c28: e8 f3 f0 ff ff               	callq	0x400d20 <__printf_chk@plt>
  401c2d: b8 00 00 00 00               	movl	$0, %eax
  401c32: e8 34 fd ff ff               	callq	0x40196b <check_fail>
  401c37: 0f be 15 ea 34 20 00         	movsbl	2110698(%rip), %edx     # 0x605128 <target_prefix>
  401c3e: 41 b8 20 45 60 00            	movl	$6309152, %r8d          # imm = 0x604520
  401c44: 89 f9                        	movl	%edi, %ecx
  401c46: be 60 30 40 00               	movl	$4206688, %esi          # imm = 0x403060
  401c4b: bf 01 00 00 00               	movl	$1, %edi
  401c50: b8 00 00 00 00               	movl	$0, %eax
  401c55: e8 c6 f0 ff ff               	callq	0x400d20 <__printf_chk@plt>
  401c5a: eb 49                        	jmp	0x401ca5 <validate+0xc0>
  401c5c: 3b 3d 9a 28 20 00            	cmpl	2107546(%rip), %edi     # 0x6044fc <vlevel>
  401c62: 74 18                        	je	0x401c7c <validate+0x97>
  401c64: bf 42 30 40 00               	movl	$4206658, %edi          # imm = 0x403042
  401c69: e8 92 ef ff ff               	callq	0x400c00 <puts@plt>
  401c6e: 89 de                        	movl	%ebx, %esi
  401c70: bf 00 00 00 00               	movl	$0, %edi
  401c75: e8 78 fd ff ff               	callq	0x4019f2 <notify_server>
  401c7a: eb 29                        	jmp	0x401ca5 <validate+0xc0>
  401c7c: 0f be 0d a5 34 20 00         	movsbl	2110629(%rip), %ecx     # 0x605128 <target_prefix>
  401c83: 89 fa                        	movl	%edi, %edx
  401c85: be a8 31 40 00               	movl	$4207016, %esi          # imm = 0x4031A8
  401c8a: bf 01 00 00 00               	movl	$1, %edi
  401c8f: b8 00 00 00 00               	movl	$0, %eax
  401c94: e8 87 f0 ff ff               	callq	0x400d20 <__printf_chk@plt>
  401c99: 89 de                        	movl	%ebx, %esi
  401c9b: bf 01 00 00 00               	movl	$1, %edi
  401ca0: e8 4d fd ff ff               	callq	0x4019f2 <notify_server>
  401ca5: 5b                           	popq	%rbx
  401ca6: c3                           	retq

0000000000401ca7 <fail>:
  401ca7: 48 83 ec 08                  	subq	$8, %rsp
  401cab: 83 3d 56 28 20 00 00         	cmpl	$0, 2107478(%rip)       # 0x604508 <is_checker>
  401cb2: 74 0a                        	je	0x401cbe <fail+0x17>
  401cb4: b8 00 00 00 00               	movl	$0, %eax
  401cb9: e8 ad fc ff ff               	callq	0x40196b <check_fail>
  401cbe: 89 fe                        	movl	%edi, %esi
  401cc0: bf 00 00 00 00               	movl	$0, %edi
  401cc5: e8 28 fd ff ff               	callq	0x4019f2 <notify_server>
  401cca: 48 83 c4 08                  	addq	$8, %rsp
  401cce: c3                           	retq

0000000000401ccf <bushandler>:
  401ccf: 48 83 ec 08                  	subq	$8, %rsp
  401cd3: 83 3d 2e 28 20 00 00         	cmpl	$0, 2107438(%rip)       # 0x604508 <is_checker>
  401cda: 74 14                        	je	0x401cf0 <bushandler+0x21>
  401cdc: bf 75 30 40 00               	movl	$4206709, %edi          # imm = 0x403075
  401ce1: e8 1a ef ff ff               	callq	0x400c00 <puts@plt>
  401ce6: b8 00 00 00 00               	movl	$0, %eax
  401ceb: e8 7b fc ff ff               	callq	0x40196b <check_fail>
  401cf0: bf e0 31 40 00               	movl	$4207072, %edi          # imm = 0x4031E0
  401cf5: e8 06 ef ff ff               	callq	0x400c00 <puts@plt>
  401cfa: bf 7f 30 40 00               	movl	$4206719, %edi          # imm = 0x40307F
  401cff: e8 fc ee ff ff               	callq	0x400c00 <puts@plt>
  401d04: be 00 00 00 00               	movl	$0, %esi
  401d09: bf 00 00 00 00               	movl	$0, %edi
  401d0e: e8 df fc ff ff               	callq	0x4019f2 <notify_server>
  401d13: bf 01 00 00 00               	movl	$1, %edi
  401d18: e8 43 f0 ff ff               	callq	0x400d60 <exit@plt>

0000000000401d1d <seghandler>:
  401d1d: 48 83 ec 08                  	subq	$8, %rsp
  401d21: 83 3d e0 27 20 00 00         	cmpl	$0, 2107360(%rip)       # 0x604508 <is_checker>
  401d28: 74 14                        	je	0x401d3e <seghandler+0x21>
  401d2a: bf 95 30 40 00               	movl	$4206741, %edi          # imm = 0x403095
  401d2f: e8 cc ee ff ff               	callq	0x400c00 <puts@plt>
  401d34: b8 00 00 00 00               	movl	$0, %eax
  401d39: e8 2d fc ff ff               	callq	0x40196b <check_fail>
  401d3e: bf 00 32 40 00               	movl	$4207104, %edi          # imm = 0x403200
  401d43: e8 b8 ee ff ff               	callq	0x400c00 <puts@plt>
  401d48: bf 7f 30 40 00               	movl	$4206719, %edi          # imm = 0x40307F
  401d4d: e8 ae ee ff ff               	callq	0x400c00 <puts@plt>
  401d52: be 00 00 00 00               	movl	$0, %esi
  401d57: bf 00 00 00 00               	movl	$0, %edi
  401d5c: e8 91 fc ff ff               	callq	0x4019f2 <notify_server>
  401d61: bf 01 00 00 00               	movl	$1, %edi
  401d66: e8 f5 ef ff ff               	callq	0x400d60 <exit@plt>

0000000000401d6b <illegalhandler>:
  401d6b: 48 83 ec 08                  	subq	$8, %rsp
  401d6f: 83 3d 92 27 20 00 00         	cmpl	$0, 2107282(%rip)       # 0x604508 <is_checker>
  401d76: 74 14                        	je	0x401d8c <illegalhandler+0x21>
  401d78: bf a8 30 40 00               	movl	$4206760, %edi          # imm = 0x4030A8
  401d7d: e8 7e ee ff ff               	callq	0x400c00 <puts@plt>
  401d82: b8 00 00 00 00               	movl	$0, %eax
  401d87: e8 df fb ff ff               	callq	0x40196b <check_fail>
  401d8c: bf 28 32 40 00               	movl	$4207144, %edi          # imm = 0x403228
  401d91: e8 6a ee ff ff               	callq	0x400c00 <puts@plt>
  401d96: bf 7f 30 40 00               	movl	$4206719, %edi          # imm = 0x40307F
  401d9b: e8 60 ee ff ff               	callq	0x400c00 <puts@plt>
  401da0: be 00 00 00 00               	movl	$0, %esi
  401da5: bf 00 00 00 00               	movl	$0, %edi
  401daa: e8 43 fc ff ff               	callq	0x4019f2 <notify_server>
  401daf: bf 01 00 00 00               	movl	$1, %edi
  401db4: e8 a7 ef ff ff               	callq	0x400d60 <exit@plt>

0000000000401db9 <sigalrmhandler>:
  401db9: 48 83 ec 08                  	subq	$8, %rsp
  401dbd: 83 3d 44 27 20 00 00         	cmpl	$0, 2107204(%rip)       # 0x604508 <is_checker>
  401dc4: 74 14                        	je	0x401dda <sigalrmhandler+0x21>
  401dc6: bf bc 30 40 00               	movl	$4206780, %edi          # imm = 0x4030BC
  401dcb: e8 30 ee ff ff               	callq	0x400c00 <puts@plt>
  401dd0: b8 00 00 00 00               	movl	$0, %eax
  401dd5: e8 91 fb ff ff               	callq	0x40196b <check_fail>
  401dda: ba 05 00 00 00               	movl	$5, %edx
  401ddf: be 58 32 40 00               	movl	$4207192, %esi          # imm = 0x403258
  401de4: bf 01 00 00 00               	movl	$1, %edi
  401de9: b8 00 00 00 00               	movl	$0, %eax
  401dee: e8 2d ef ff ff               	callq	0x400d20 <__printf_chk@plt>
  401df3: be 00 00 00 00               	movl	$0, %esi
  401df8: bf 00 00 00 00               	movl	$0, %edi
  401dfd: e8 f0 fb ff ff               	callq	0x4019f2 <notify_server>
  401e02: bf 01 00 00 00               	movl	$1, %edi
  401e07: e8 54 ef ff ff               	callq	0x400d60 <exit@plt>

0000000000401e0c <launch>:
  401e0c: 55                           	pushq	%rbp
  401e0d: 48 89 e5                     	movq	%rsp, %rbp
  401e10: 48 83 ec 10                  	subq	$16, %rsp
  401e14: 48 89 fa                     	movq	%rdi, %rdx
  401e17: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
  401e20: 48 89 45 f8                  	movq	%rax, -8(%rbp)
  401e24: 31 c0                        	xorl	%eax, %eax
  401e26: 48 8d 47 1e                  	leaq	30(%rdi), %rax
  401e2a: 48 83 e0 f0                  	andq	$-16, %rax
  401e2e: 48 29 c4                     	subq	%rax, %rsp
  401e31: 48 8d 7c 24 0f               	leaq	15(%rsp), %rdi
  401e36: 48 83 e7 f0                  	andq	$-16, %rdi
  401e3a: be f4 00 00 00               	movl	$244, %esi
  401e3f: e8 fc ed ff ff               	callq	0x400c40 <memset@plt>
  401e44: 48 8b 05 55 26 20 00         	movq	2106965(%rip), %rax     # 0x6044a0 <stdin@@GLIBC_2.2.5>
  401e4b: 48 39 05 9e 26 20 00         	cmpq	%rax, 2107038(%rip)     # 0x6044f0 <infile>
  401e52: 75 14                        	jne	0x401e68 <launch+0x5c>
  401e54: be c4 30 40 00               	movl	$4206788, %esi          # imm = 0x4030C4
  401e59: bf 01 00 00 00               	movl	$1, %edi
  401e5e: b8 00 00 00 00               	movl	$0, %eax
  401e63: e8 b8 ee ff ff               	callq	0x400d20 <__printf_chk@plt>
  401e68: c7 05 8a 26 20 00 00 00 00 00	movl	$0, 2107018(%rip)       # 0x6044fc <vlevel>
  401e72: b8 00 00 00 00               	movl	$0, %eax
  401e77: e8 5b fa ff ff               	callq	0x4018d7 <test>
  401e7c: 83 3d 85 26 20 00 00         	cmpl	$0, 2107013(%rip)       # 0x604508 <is_checker>
  401e83: 74 14                        	je	0x401e99 <launch+0x8d>
  401e85: bf d1 30 40 00               	movl	$4206801, %edi          # imm = 0x4030D1
  401e8a: e8 71 ed ff ff               	callq	0x400c00 <puts@plt>
  401e8f: b8 00 00 00 00               	movl	$0, %eax
  401e94: e8 d2 fa ff ff               	callq	0x40196b <check_fail>
  401e99: bf dc 30 40 00               	movl	$4206812, %edi          # imm = 0x4030DC
  401e9e: e8 5d ed ff ff               	callq	0x400c00 <puts@plt>
  401ea3: 48 8b 45 f8                  	movq	-8(%rbp), %rax
  401ea7: 64 48 33 04 25 28 00 00 00   	xorq	%fs:40, %rax
  401eb0: 74 05                        	je	0x401eb7 <launch+0xab>
  401eb2: e8 69 ed ff ff               	callq	0x400c20 <__stack_chk_fail@plt>
  401eb7: c9                           	leave
  401eb8: c3                           	retq

0000000000401eb9 <stable_launch>:
  401eb9: 53                           	pushq	%rbx
  401eba: 48 89 3d 27 26 20 00         	movq	%rdi, 2106919(%rip)     # 0x6044e8 <global_offset>
  401ec1: 41 b9 00 00 00 00            	movl	$0, %r9d
  401ec7: 41 b8 00 00 00 00            	movl	$0, %r8d
  401ecd: b9 32 01 00 00               	movl	$306, %ecx              # imm = 0x132
  401ed2: ba 07 00 00 00               	movl	$7, %edx
  401ed7: be 00 00 10 00               	movl	$1048576, %esi          # imm = 0x100000
  401edc: bf 00 60 58 55               	movl	$1431855104, %edi       # imm = 0x55586000
  401ee1: e8 4a ed ff ff               	callq	0x400c30 <mmap@plt>
  401ee6: 48 89 c3                     	movq	%rax, %rbx
  401ee9: 48 3d 00 60 58 55            	cmpq	$1431855104, %rax       # imm = 0x55586000
  401eef: 74 37                        	je	0x401f28 <stable_launch+0x6f>
  401ef1: be 00 00 10 00               	movl	$1048576, %esi          # imm = 0x100000
  401ef6: 48 89 c7                     	movq	%rax, %rdi
  401ef9: e8 12 ee ff ff               	callq	0x400d10 <munmap@plt>
  401efe: b9 00 60 58 55               	movl	$1431855104, %ecx       # imm = 0x55586000
  401f03: ba 90 32 40 00               	movl	$4207248, %edx          # imm = 0x403290
  401f08: be 01 00 00 00               	movl	$1, %esi
  401f0d: 48 8b 3d ac 25 20 00         	movq	2106796(%rip), %rdi     # 0x6044c0 <stderr@@GLIBC_2.2.5>
  401f14: b8 00 00 00 00               	movl	$0, %eax
  401f19: e8 62 ee ff ff               	callq	0x400d80 <__fprintf_chk@plt>
  401f1e: bf 01 00 00 00               	movl	$1, %edi
  401f23: e8 38 ee ff ff               	callq	0x400d60 <exit@plt>
  401f28: 48 8d 90 f8 ff 0f 00         	leaq	1048568(%rax), %rdx
  401f2f: 48 89 15 fa 31 20 00         	movq	%rdx, 2109946(%rip)     # 0x605130 <stack_top>
  401f36: 48 89 e0                     	movq	%rsp, %rax
  401f39: 48 89 d4                     	movq	%rdx, %rsp
  401f3c: 48 89 c2                     	movq	%rax, %rdx
  401f3f: 48 89 15 9a 25 20 00         	movq	%rdx, 2106778(%rip)     # 0x6044e0 <global_save_stack>
  401f46: 48 8b 3d 9b 25 20 00         	movq	2106779(%rip), %rdi     # 0x6044e8 <global_offset>
  401f4d: e8 ba fe ff ff               	callq	0x401e0c <launch>
  401f52: 48 8b 05 87 25 20 00         	movq	2106759(%rip), %rax     # 0x6044e0 <global_save_stack>
  401f59: 48 89 c4                     	movq	%rax, %rsp
  401f5c: be 00 00 10 00               	movl	$1048576, %esi          # imm = 0x100000
  401f61: 48 89 df                     	movq	%rbx, %rdi
  401f64: e8 a7 ed ff ff               	callq	0x400d10 <munmap@plt>
  401f69: 5b                           	popq	%rbx
  401f6a: c3                           	retq

0000000000401f6b <rio_readinitb>:
  401f6b: 89 37                        	movl	%esi, (%rdi)
  401f6d: c7 47 04 00 00 00 00         	movl	$0, 4(%rdi)
  401f74: 48 8d 47 10                  	leaq	16(%rdi), %rax
  401f78: 48 89 47 08                  	movq	%rax, 8(%rdi)
  401f7c: c3                           	retq

0000000000401f7d <sigalrm_handler>:
  401f7d: 48 83 ec 08                  	subq	$8, %rsp
  401f81: b9 00 00 00 00               	movl	$0, %ecx
  401f86: ba d0 32 40 00               	movl	$4207312, %edx          # imm = 0x4032D0
  401f8b: be 01 00 00 00               	movl	$1, %esi
  401f90: 48 8b 3d 29 25 20 00         	movq	2106665(%rip), %rdi     # 0x6044c0 <stderr@@GLIBC_2.2.5>
  401f97: b8 00 00 00 00               	movl	$0, %eax
  401f9c: e8 df ed ff ff               	callq	0x400d80 <__fprintf_chk@plt>
  401fa1: bf 01 00 00 00               	movl	$1, %edi
  401fa6: e8 b5 ed ff ff               	callq	0x400d60 <exit@plt>

0000000000401fab <rio_writen>:
  401fab: 41 55                        	pushq	%r13
  401fad: 41 54                        	pushq	%r12
  401faf: 55                           	pushq	%rbp
  401fb0: 53                           	pushq	%rbx
  401fb1: 48 83 ec 08                  	subq	$8, %rsp
  401fb5: 41 89 fc                     	movl	%edi, %r12d
  401fb8: 48 89 f5                     	movq	%rsi, %rbp
  401fbb: 49 89 d5                     	movq	%rdx, %r13
  401fbe: 48 89 d3                     	movq	%rdx, %rbx
  401fc1: eb 28                        	jmp	0x401feb <rio_writen+0x40>
  401fc3: 48 89 da                     	movq	%rbx, %rdx
  401fc6: 48 89 ee                     	movq	%rbp, %rsi
  401fc9: 44 89 e7                     	movl	%r12d, %edi
  401fcc: e8 3f ec ff ff               	callq	0x400c10 <write@plt>
  401fd1: 48 85 c0                     	testq	%rax, %rax
  401fd4: 7f 0f                        	jg	0x401fe5 <rio_writen+0x3a>
  401fd6: e8 e5 eb ff ff               	callq	0x400bc0 <__errno_location@plt>
  401fdb: 83 38 04                     	cmpl	$4, (%rax)
  401fde: 75 15                        	jne	0x401ff5 <rio_writen+0x4a>
  401fe0: b8 00 00 00 00               	movl	$0, %eax
  401fe5: 48 29 c3                     	subq	%rax, %rbx
  401fe8: 48 01 c5                     	addq	%rax, %rbp
  401feb: 48 85 db                     	testq	%rbx, %rbx
  401fee: 75 d3                        	jne	0x401fc3 <rio_writen+0x18>
  401ff0: 4c 89 e8                     	movq	%r13, %rax
  401ff3: eb 07                        	jmp	0x401ffc <rio_writen+0x51>
  401ff5: 48 c7 c0 ff ff ff ff         	movq	$-1, %rax
  401ffc: 48 83 c4 08                  	addq	$8, %rsp
  402000: 5b                           	popq	%rbx
  402001: 5d                           	popq	%rbp
  402002: 41 5c                        	popq	%r12
  402004: 41 5d                        	popq	%r13
  402006: c3                           	retq

0000000000402007 <rio_read>:
  402007: 41 55                        	pushq	%r13
  402009: 41 54                        	pushq	%r12
  40200b: 55                           	pushq	%rbp
  40200c: 53                           	pushq	%rbx
  40200d: 48 83 ec 08                  	subq	$8, %rsp
  402011: 48 89 fb                     	movq	%rdi, %rbx
  402014: 49 89 f5                     	movq	%rsi, %r13
  402017: 49 89 d4                     	movq	%rdx, %r12
  40201a: eb 2e                        	jmp	0x40204a <rio_read+0x43>
  40201c: 48 8d 6b 10                  	leaq	16(%rbx), %rbp
  402020: 8b 3b                        	movl	(%rbx), %edi
  402022: ba 00 20 00 00               	movl	$8192, %edx             # imm = 0x2000
  402027: 48 89 ee                     	movq	%rbp, %rsi
  40202a: e8 41 ec ff ff               	callq	0x400c70 <read@plt>
  40202f: 89 43 04                     	movl	%eax, 4(%rbx)
  402032: 85 c0                        	testl	%eax, %eax
  402034: 79 0c                        	jns	0x402042 <rio_read+0x3b>
  402036: e8 85 eb ff ff               	callq	0x400bc0 <__errno_location@plt>
  40203b: 83 38 04                     	cmpl	$4, (%rax)
  40203e: 74 0a                        	je	0x40204a <rio_read+0x43>
  402040: eb 37                        	jmp	0x402079 <rio_read+0x72>
  402042: 85 c0                        	testl	%eax, %eax
  402044: 74 3c                        	je	0x402082 <rio_read+0x7b>
  402046: 48 89 6b 08                  	movq	%rbp, 8(%rbx)
  40204a: 8b 6b 04                     	movl	4(%rbx), %ebp
  40204d: 85 ed                        	testl	%ebp, %ebp
  40204f: 7e cb                        	jle	0x40201c <rio_read+0x15>
  402051: 89 e8                        	movl	%ebp, %eax
  402053: 49 39 c4                     	cmpq	%rax, %r12
  402056: 77 03                        	ja	0x40205b <rio_read+0x54>
  402058: 44 89 e5                     	movl	%r12d, %ebp
  40205b: 4c 63 e5                     	movslq	%ebp, %r12
  40205e: 48 8b 73 08                  	movq	8(%rbx), %rsi
  402062: 4c 89 e2                     	movq	%r12, %rdx
  402065: 4c 89 ef                     	movq	%r13, %rdi
  402068: e8 53 ec ff ff               	callq	0x400cc0 <memcpy@plt>
  40206d: 4c 01 63 08                  	addq	%r12, 8(%rbx)
  402071: 29 6b 04                     	subl	%ebp, 4(%rbx)
  402074: 4c 89 e0                     	movq	%r12, %rax
  402077: eb 0e                        	jmp	0x402087 <rio_read+0x80>
  402079: 48 c7 c0 ff ff ff ff         	movq	$-1, %rax
  402080: eb 05                        	jmp	0x402087 <rio_read+0x80>
  402082: b8 00 00 00 00               	movl	$0, %eax
  402087: 48 83 c4 08                  	addq	$8, %rsp
  40208b: 5b                           	popq	%rbx
  40208c: 5d                           	popq	%rbp
  40208d: 41 5c                        	popq	%r12
  40208f: 41 5d                        	popq	%r13
  402091: c3                           	retq

0000000000402092 <rio_readlineb>:
  402092: 41 55                        	pushq	%r13
  402094: 41 54                        	pushq	%r12
  402096: 55                           	pushq	%rbp
  402097: 53                           	pushq	%rbx
  402098: 48 83 ec 18                  	subq	$24, %rsp
  40209c: 49 89 fd                     	movq	%rdi, %r13
  40209f: 48 89 f5                     	movq	%rsi, %rbp
  4020a2: 49 89 d4                     	movq	%rdx, %r12
  4020a5: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
  4020ae: 48 89 44 24 08               	movq	%rax, 8(%rsp)
  4020b3: 31 c0                        	xorl	%eax, %eax
  4020b5: bb 01 00 00 00               	movl	$1, %ebx
  4020ba: eb 3f                        	jmp	0x4020fb <rio_readlineb+0x69>
  4020bc: ba 01 00 00 00               	movl	$1, %edx
  4020c1: 48 8d 74 24 07               	leaq	7(%rsp), %rsi
  4020c6: 4c 89 ef                     	movq	%r13, %rdi
  4020c9: e8 39 ff ff ff               	callq	0x402007 <rio_read>
  4020ce: 83 f8 01                     	cmpl	$1, %eax
  4020d1: 75 15                        	jne	0x4020e8 <rio_readlineb+0x56>
  4020d3: 48 8d 45 01                  	leaq	1(%rbp), %rax
  4020d7: 0f b6 54 24 07               	movzbl	7(%rsp), %edx
  4020dc: 88 55 00                     	movb	%dl, (%rbp)
  4020df: 80 7c 24 07 0a               	cmpb	$10, 7(%rsp)
  4020e4: 75 0e                        	jne	0x4020f4 <rio_readlineb+0x62>
  4020e6: eb 1a                        	jmp	0x402102 <rio_readlineb+0x70>
  4020e8: 85 c0                        	testl	%eax, %eax
  4020ea: 75 22                        	jne	0x40210e <rio_readlineb+0x7c>
  4020ec: 48 83 fb 01                  	cmpq	$1, %rbx
  4020f0: 75 13                        	jne	0x402105 <rio_readlineb+0x73>
  4020f2: eb 23                        	jmp	0x402117 <rio_readlineb+0x85>
  4020f4: 48 83 c3 01                  	addq	$1, %rbx
  4020f8: 48 89 c5                     	movq	%rax, %rbp
  4020fb: 4c 39 e3                     	cmpq	%r12, %rbx
  4020fe: 72 bc                        	jb	0x4020bc <rio_readlineb+0x2a>
  402100: eb 03                        	jmp	0x402105 <rio_readlineb+0x73>
  402102: 48 89 c5                     	movq	%rax, %rbp
  402105: c6 45 00 00                  	movb	$0, (%rbp)
  402109: 48 89 d8                     	movq	%rbx, %rax
  40210c: eb 0e                        	jmp	0x40211c <rio_readlineb+0x8a>
  40210e: 48 c7 c0 ff ff ff ff         	movq	$-1, %rax
  402115: eb 05                        	jmp	0x40211c <rio_readlineb+0x8a>
  402117: b8 00 00 00 00               	movl	$0, %eax
  40211c: 48 8b 4c 24 08               	movq	8(%rsp), %rcx
  402121: 64 48 33 0c 25 28 00 00 00   	xorq	%fs:40, %rcx
  40212a: 74 05                        	je	0x402131 <rio_readlineb+0x9f>
  40212c: e8 ef ea ff ff               	callq	0x400c20 <__stack_chk_fail@plt>
  402131: 48 83 c4 18                  	addq	$24, %rsp
  402135: 5b                           	popq	%rbx
  402136: 5d                           	popq	%rbp
  402137: 41 5c                        	popq	%r12
  402139: 41 5d                        	popq	%r13
  40213b: c3                           	retq

000000000040213c <urlencode>:
  40213c: 41 54                        	pushq	%r12
  40213e: 55                           	pushq	%rbp
  40213f: 53                           	pushq	%rbx
  402140: 48 83 ec 10                  	subq	$16, %rsp
  402144: 48 89 fb                     	movq	%rdi, %rbx
  402147: 48 89 f5                     	movq	%rsi, %rbp
  40214a: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
  402153: 48 89 44 24 08               	movq	%rax, 8(%rsp)
  402158: 31 c0                        	xorl	%eax, %eax
  40215a: 48 c7 c1 ff ff ff ff         	movq	$-1, %rcx
  402161: f2 ae                        	repne		scasb	%es:(%rdi), %al
  402163: 48 f7 d1                     	notq	%rcx
  402166: 8d 41 ff                     	leal	-1(%rcx), %eax
  402169: e9 aa 00 00 00               	jmp	0x402218 <urlencode+0xdc>
  40216e: 44 0f b6 03                  	movzbl	(%rbx), %r8d
  402172: 41 80 f8 2a                  	cmpb	$42, %r8b
  402176: 0f 94 c2                     	sete	%dl
  402179: 41 80 f8 2d                  	cmpb	$45, %r8b
  40217d: 0f 94 c0                     	sete	%al
  402180: 08 c2                        	orb	%al, %dl
  402182: 75 24                        	jne	0x4021a8 <urlencode+0x6c>
  402184: 41 80 f8 2e                  	cmpb	$46, %r8b
  402188: 74 1e                        	je	0x4021a8 <urlencode+0x6c>
  40218a: 41 80 f8 5f                  	cmpb	$95, %r8b
  40218e: 74 18                        	je	0x4021a8 <urlencode+0x6c>
  402190: 41 8d 40 d0                  	leal	-48(%r8), %eax
  402194: 3c 09                        	cmpb	$9, %al
  402196: 76 10                        	jbe	0x4021a8 <urlencode+0x6c>
  402198: 41 8d 40 bf                  	leal	-65(%r8), %eax
  40219c: 3c 19                        	cmpb	$25, %al
  40219e: 76 08                        	jbe	0x4021a8 <urlencode+0x6c>
  4021a0: 41 8d 40 9f                  	leal	-97(%r8), %eax
  4021a4: 3c 19                        	cmpb	$25, %al
  4021a6: 77 0a                        	ja	0x4021b2 <urlencode+0x76>
  4021a8: 44 88 45 00                  	movb	%r8b, (%rbp)
  4021ac: 48 8d 6d 01                  	leaq	1(%rbp), %rbp
  4021b0: eb 5f                        	jmp	0x402211 <urlencode+0xd5>
  4021b2: 41 80 f8 20                  	cmpb	$32, %r8b
  4021b6: 75 0a                        	jne	0x4021c2 <urlencode+0x86>
  4021b8: c6 45 00 2b                  	movb	$43, (%rbp)
  4021bc: 48 8d 6d 01                  	leaq	1(%rbp), %rbp
  4021c0: eb 4f                        	jmp	0x402211 <urlencode+0xd5>
  4021c2: 41 8d 40 e0                  	leal	-32(%r8), %eax
  4021c6: 3c 5f                        	cmpb	$95, %al
  4021c8: 0f 96 c2                     	setbe	%dl
  4021cb: 41 80 f8 09                  	cmpb	$9, %r8b
  4021cf: 0f 94 c0                     	sete	%al
  4021d2: 08 c2                        	orb	%al, %dl
  4021d4: 74 50                        	je	0x402226 <urlencode+0xea>
  4021d6: 45 0f b6 c0                  	movzbl	%r8b, %r8d
  4021da: b9 68 33 40 00               	movl	$4207464, %ecx          # imm = 0x403368
  4021df: ba 08 00 00 00               	movl	$8, %edx
  4021e4: be 01 00 00 00               	movl	$1, %esi
  4021e9: 48 89 e7                     	movq	%rsp, %rdi
  4021ec: b8 00 00 00 00               	movl	$0, %eax
  4021f1: e8 9a eb ff ff               	callq	0x400d90 <__sprintf_chk@plt>
  4021f6: 0f b6 04 24                  	movzbl	(%rsp), %eax
  4021fa: 88 45 00                     	movb	%al, (%rbp)
  4021fd: 0f b6 44 24 01               	movzbl	1(%rsp), %eax
  402202: 88 45 01                     	movb	%al, 1(%rbp)
  402205: 0f b6 44 24 02               	movzbl	2(%rsp), %eax
  40220a: 88 45 02                     	movb	%al, 2(%rbp)
  40220d: 48 8d 6d 03                  	leaq	3(%rbp), %rbp
  402211: 48 83 c3 01                  	addq	$1, %rbx
  402215: 44 89 e0                     	movl	%r12d, %eax
  402218: 44 8d 60 ff                  	leal	-1(%rax), %r12d
  40221c: 85 c0                        	testl	%eax, %eax
  40221e: 0f 85 4a ff ff ff            	jne	0x40216e <urlencode+0x32>
  402224: eb 05                        	jmp	0x40222b <urlencode+0xef>
  402226: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
  40222b: 48 8b 74 24 08               	movq	8(%rsp), %rsi
  402230: 64 48 33 34 25 28 00 00 00   	xorq	%fs:40, %rsi
  402239: 74 05                        	je	0x402240 <urlencode+0x104>
  40223b: e8 e0 e9 ff ff               	callq	0x400c20 <__stack_chk_fail@plt>
  402240: 48 83 c4 10                  	addq	$16, %rsp
  402244: 5b                           	popq	%rbx
  402245: 5d                           	popq	%rbp
  402246: 41 5c                        	popq	%r12
  402248: c3                           	retq

0000000000402249 <submitr>:
  402249: 41 57                        	pushq	%r15
  40224b: 41 56                        	pushq	%r14
  40224d: 41 55                        	pushq	%r13
  40224f: 41 54                        	pushq	%r12
  402251: 55                           	pushq	%rbp
  402252: 53                           	pushq	%rbx
  402253: 48 81 ec 58 a0 00 00         	subq	$41048, %rsp            # imm = 0xA058
  40225a: 49 89 ff                     	movq	%rdi, %r15
  40225d: 89 74 24 04                  	movl	%esi, 4(%rsp)
  402261: 49 89 d6                     	movq	%rdx, %r14
  402264: 49 89 cd                     	movq	%rcx, %r13
  402267: 4c 89 44 24 08               	movq	%r8, 8(%rsp)
  40226c: 4d 89 cc                     	movq	%r9, %r12
  40226f: 48 8b 9c 24 90 a0 00 00      	movq	41104(%rsp), %rbx
  402277: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
  402280: 48 89 84 24 48 a0 00 00      	movq	%rax, 41032(%rsp)
  402288: 31 c0                        	xorl	%eax, %eax
  40228a: c7 44 24 1c 00 00 00 00      	movl	$0, 28(%rsp)
  402292: ba 00 00 00 00               	movl	$0, %edx
  402297: be 01 00 00 00               	movl	$1, %esi
  40229c: bf 02 00 00 00               	movl	$2, %edi
  4022a1: e8 fa ea ff ff               	callq	0x400da0 <socket@plt>
  4022a6: 85 c0                        	testl	%eax, %eax
  4022a8: 79 4e                        	jns	0x4022f8 <submitr+0xaf>
  4022aa: 48 b8 45 72 72 6f 72 3a 20 43	movabsq	$4836930262966366789, %rax # imm = 0x43203A726F727245
  4022b4: 48 89 03                     	movq	%rax, (%rbx)
  4022b7: 48 b8 6c 69 65 6e 74 20 75 6e	movabsq	$7959303600887654764, %rax # imm = 0x6E7520746E65696C
  4022c1: 48 89 43 08                  	movq	%rax, 8(%rbx)
  4022c5: 48 b8 61 62 6c 65 20 74 6f 20	movabsq	$2337214414117954145, %rax # imm = 0x206F7420656C6261
  4022cf: 48 89 43 10                  	movq	%rax, 16(%rbx)
  4022d3: 48 b8 63 72 65 61 74 65 20 73	movabsq	$8295742064141103715, %rax # imm = 0x7320657461657263
  4022dd: 48 89 43 18                  	movq	%rax, 24(%rbx)
  4022e1: c7 43 20 6f 63 6b 65         	movl	$1701536623, 32(%rbx)   # imm = 0x656B636F
  4022e8: 66 c7 43 24 74 00            	movw	$116, 36(%rbx)
  4022ee: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
  4022f3: e9 0a 06 00 00               	jmp	0x402902 <submitr+0x6b9>
  4022f8: 89 c5                        	movl	%eax, %ebp
  4022fa: 66 c7 44 24 20 02 00         	movw	$2, 32(%rsp)
  402301: bf 6f 33 40 00               	movl	$4207471, %edi          # imm = 0x40336F
  402306: b8 00 00 00 00               	movl	$0, %eax
  40230b: e8 80 e9 ff ff               	callq	0x400c90 <inet_addr@plt>
  402310: 89 44 24 24                  	movl	%eax, 36(%rsp)
  402314: 0f b7 44 24 04               	movzwl	4(%rsp), %eax
  402319: 66 c1 c8 08                  	rorw	$8, %ax
  40231d: 66 89 44 24 22               	movw	%ax, 34(%rsp)
  402322: ba 10 00 00 00               	movl	$16, %edx
  402327: 48 8d 74 24 20               	leaq	32(%rsp), %rsi
  40232c: 89 ef                        	movl	%ebp, %edi
  40232e: e8 3d ea ff ff               	callq	0x400d70 <connect@plt>
  402333: 85 c0                        	testl	%eax, %eax
  402335: 79 59                        	jns	0x402390 <submitr+0x147>
  402337: 48 b8 45 72 72 6f 72 3a 20 55	movabsq	$6133966955649069637, %rax # imm = 0x55203A726F727245
  402341: 48 89 03                     	movq	%rax, (%rbx)
  402344: 48 b8 6e 61 62 6c 65 20 74 6f	movabsq	$8031079655490609518, %rax # imm = 0x6F7420656C62616E
  40234e: 48 89 43 08                  	movq	%rax, 8(%rbx)
  402352: 48 b8 20 63 6f 6e 6e 65 63 74	movabsq	$8386658456067597088, %rax # imm = 0x7463656E6E6F6320
  40235c: 48 89 43 10                  	movq	%rax, 16(%rbx)
  402360: 48 b8 20 74 6f 20 74 68 65 20	movabsq	$2334386829831140384, %rax # imm = 0x20656874206F7420
  40236a: 48 89 43 18                  	movq	%rax, 24(%rbx)
  40236e: c7 43 20 73 65 72 76         	movl	$1987208563, 32(%rbx)   # imm = 0x76726573
  402375: 66 c7 43 24 65 72            	movw	$29285, 36(%rbx)        # imm = 0x7265
  40237b: c6 43 26 00                  	movb	$0, 38(%rbx)
  40237f: 89 ef                        	movl	%ebp, %edi
  402381: e8 da e8 ff ff               	callq	0x400c60 <close@plt>
  402386: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
  40238b: e9 72 05 00 00               	jmp	0x402902 <submitr+0x6b9>
  402390: 48 c7 c6 ff ff ff ff         	movq	$-1, %rsi
  402397: b8 00 00 00 00               	movl	$0, %eax
  40239c: 48 89 f1                     	movq	%rsi, %rcx
  40239f: 4c 89 e7                     	movq	%r12, %rdi
  4023a2: f2 ae                        	repne		scasb	%es:(%rdi), %al
  4023a4: 48 f7 d1                     	notq	%rcx
  4023a7: 48 89 ca                     	movq	%rcx, %rdx
  4023aa: 48 89 f1                     	movq	%rsi, %rcx
  4023ad: 4c 89 f7                     	movq	%r14, %rdi
  4023b0: f2 ae                        	repne		scasb	%es:(%rdi), %al
  4023b2: 48 f7 d1                     	notq	%rcx
  4023b5: 49 89 c8                     	movq	%rcx, %r8
  4023b8: 48 89 f1                     	movq	%rsi, %rcx
  4023bb: 4c 89 ef                     	movq	%r13, %rdi
  4023be: f2 ae                        	repne		scasb	%es:(%rdi), %al
  4023c0: 48 f7 d1                     	notq	%rcx
  4023c3: 4d 8d 44 08 fe               	leaq	-2(%r8,%rcx), %r8
  4023c8: 48 89 f1                     	movq	%rsi, %rcx
  4023cb: 48 8b 7c 24 08               	movq	8(%rsp), %rdi
  4023d0: f2 ae                        	repne		scasb	%es:(%rdi), %al
  4023d2: 48 89 c8                     	movq	%rcx, %rax
  4023d5: 48 f7 d0                     	notq	%rax
  4023d8: 49 8d 4c 00 ff               	leaq	-1(%r8,%rax), %rcx
  4023dd: 48 8d 44 52 fd               	leaq	-3(%rdx,%rdx,2), %rax
  4023e2: 48 8d 84 01 80 00 00 00      	leaq	128(%rcx,%rax), %rax
  4023ea: 48 3d 00 20 00 00            	cmpq	$8192, %rax             # imm = 0x2000
  4023f0: 76 72                        	jbe	0x402464 <submitr+0x21b>
  4023f2: 48 b8 45 72 72 6f 72 3a 20 52	movabsq	$5917794173535285829, %rax # imm = 0x52203A726F727245
  4023fc: 48 89 03                     	movq	%rax, (%rbx)
  4023ff: 48 b8 65 73 75 6c 74 20 73 74	movabsq	$8391086215129297765, %rax # imm = 0x747320746C757365
  402409: 48 89 43 08                  	movq	%rax, 8(%rbx)
  40240d: 48 b8 72 69 6e 67 20 74 6f 6f	movabsq	$8029764343147948402, %rax # imm = 0x6F6F7420676E6972
  402417: 48 89 43 10                  	movq	%rax, 16(%rbx)
  40241b: 48 b8 20 6c 61 72 67 65 2e 20	movabsq	$2318902353117408288, %rax # imm = 0x202E656772616C20
  402425: 48 89 43 18                  	movq	%rax, 24(%rbx)
  402429: 48 b8 49 6e 63 72 65 61 73 65	movabsq	$7310293708491157065, %rax # imm = 0x6573616572636E49
  402433: 48 89 43 20                  	movq	%rax, 32(%rbx)
  402437: 48 b8 20 53 55 42 4d 49 54 52	movabsq	$5932447205327983392, %rax # imm = 0x5254494D42555320
  402441: 48 89 43 28                  	movq	%rax, 40(%rbx)
  402445: 48 b8 5f 4d 41 58 42 55 46 00	movabsq	$19796991806623071, %rax # imm = 0x46554258414D5F
  40244f: 48 89 43 30                  	movq	%rax, 48(%rbx)
  402453: 89 ef                        	movl	%ebp, %edi
  402455: e8 06 e8 ff ff               	callq	0x400c60 <close@plt>
  40245a: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
  40245f: e9 9e 04 00 00               	jmp	0x402902 <submitr+0x6b9>
  402464: 48 8d b4 24 40 40 00 00      	leaq	16448(%rsp), %rsi
  40246c: b9 00 04 00 00               	movl	$1024, %ecx             # imm = 0x400
  402471: b8 00 00 00 00               	movl	$0, %eax
  402476: 48 89 f7                     	movq	%rsi, %rdi
  402479: f3 48 ab                     	rep		stosq	%rax, %es:(%rdi)
  40247c: 4c 89 e7                     	movq	%r12, %rdi
  40247f: e8 b8 fc ff ff               	callq	0x40213c <urlencode>
  402484: 85 c0                        	testl	%eax, %eax
  402486: 0f 89 8a 00 00 00            	jns	0x402516 <submitr+0x2cd>
  40248c: 48 b8 45 72 72 6f 72 3a 20 52	movabsq	$5917794173535285829, %rax # imm = 0x52203A726F727245
  402496: 48 89 03                     	movq	%rax, (%rbx)
  402499: 48 b8 65 73 75 6c 74 20 73 74	movabsq	$8391086215129297765, %rax # imm = 0x747320746C757365
  4024a3: 48 89 43 08                  	movq	%rax, 8(%rbx)
  4024a7: 48 b8 72 69 6e 67 20 63 6f 6e	movabsq	$7957688057412348274, %rax # imm = 0x6E6F6320676E6972
  4024b1: 48 89 43 10                  	movq	%rax, 16(%rbx)
  4024b5: 48 b8 74 61 69 6e 73 20 61 6e	movabsq	$7953674097058734452, %rax # imm = 0x6E6120736E696174
  4024bf: 48 89 43 18                  	movq	%rax, 24(%rbx)
  4024c3: 48 b8 20 69 6c 6c 65 67 61 6c	movabsq	$7809636914145552672, %rax # imm = 0x6C6167656C6C6920
  4024cd: 48 89 43 20                  	movq	%rax, 32(%rbx)
  4024d1: 48 b8 20 6f 72 20 75 6e 70 72	movabsq	$8246212367049977632, %rax # imm = 0x72706E7520726F20
  4024db: 48 89 43 28                  	movq	%rax, 40(%rbx)
  4024df: 48 b8 69 6e 74 61 62 6c 65 20	movabsq	$2334391151659085417, %rax # imm = 0x20656C6261746E69
  4024e9: 48 89 43 30                  	movq	%rax, 48(%rbx)
  4024ed: 48 b8 63 68 61 72 61 63 74 65	movabsq	$7310577365311121507, %rax # imm = 0x6574636172616863
  4024f7: 48 89 43 38                  	movq	%rax, 56(%rbx)
  4024fb: 66 c7 43 40 72 2e            	movw	$11890, 64(%rbx)        # imm = 0x2E72
  402501: c6 43 42 00                  	movb	$0, 66(%rbx)
  402505: 89 ef                        	movl	%ebp, %edi
  402507: e8 54 e7 ff ff               	callq	0x400c60 <close@plt>
  40250c: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
  402511: e9 ec 03 00 00               	jmp	0x402902 <submitr+0x6b9>
  402516: 4c 8d a4 24 40 20 00 00      	leaq	8256(%rsp), %r12
  40251e: 41 57                        	pushq	%r15
  402520: 48 8d 84 24 48 40 00 00      	leaq	16456(%rsp), %rax
  402528: 50                           	pushq	%rax
  402529: 4d 89 f1                     	movq	%r14, %r9
  40252c: 4d 89 e8                     	movq	%r13, %r8
  40252f: b9 f8 32 40 00               	movl	$4207352, %ecx          # imm = 0x4032F8
  402534: ba 00 20 00 00               	movl	$8192, %edx             # imm = 0x2000
  402539: be 01 00 00 00               	movl	$1, %esi
  40253e: 4c 89 e7                     	movq	%r12, %rdi
  402541: b8 00 00 00 00               	movl	$0, %eax
  402546: e8 45 e8 ff ff               	callq	0x400d90 <__sprintf_chk@plt>
  40254b: b8 00 00 00 00               	movl	$0, %eax
  402550: 48 c7 c1 ff ff ff ff         	movq	$-1, %rcx
  402557: 4c 89 e7                     	movq	%r12, %rdi
  40255a: f2 ae                        	repne		scasb	%es:(%rdi), %al
  40255c: 48 f7 d1                     	notq	%rcx
  40255f: 48 8d 51 ff                  	leaq	-1(%rcx), %rdx
  402563: 4c 89 e6                     	movq	%r12, %rsi
  402566: 89 ef                        	movl	%ebp, %edi
  402568: e8 3e fa ff ff               	callq	0x401fab <rio_writen>
  40256d: 48 83 c4 10                  	addq	$16, %rsp
  402571: 48 85 c0                     	testq	%rax, %rax
  402574: 79 6e                        	jns	0x4025e4 <submitr+0x39b>
  402576: 48 b8 45 72 72 6f 72 3a 20 43	movabsq	$4836930262966366789, %rax # imm = 0x43203A726F727245
  402580: 48 89 03                     	movq	%rax, (%rbx)
  402583: 48 b8 6c 69 65 6e 74 20 75 6e	movabsq	$7959303600887654764, %rax # imm = 0x6E7520746E65696C
  40258d: 48 89 43 08                  	movq	%rax, 8(%rbx)
  402591: 48 b8 61 62 6c 65 20 74 6f 20	movabsq	$2337214414117954145, %rax # imm = 0x206F7420656C6261
  40259b: 48 89 43 10                  	movq	%rax, 16(%rbx)
  40259f: 48 b8 77 72 69 74 65 20 74 6f	movabsq	$8031079655625290359, %rax # imm = 0x6F74206574697277
  4025a9: 48 89 43 18                  	movq	%rax, 24(%rbx)
  4025ad: 48 b8 20 74 68 65 20 72 65 73	movabsq	$8315177770475353120, %rax # imm = 0x7365722065687420
  4025b7: 48 89 43 20                  	movq	%rax, 32(%rbx)
  4025bb: 48 b8 75 6c 74 20 73 65 72 76	movabsq	$8534995788960656501, %rax # imm = 0x7672657320746C75
  4025c5: 48 89 43 28                  	movq	%rax, 40(%rbx)
  4025c9: 66 c7 43 30 65 72            	movw	$29285, 48(%rbx)        # imm = 0x7265
  4025cf: c6 43 32 00                  	movb	$0, 50(%rbx)
  4025d3: 89 ef                        	movl	%ebp, %edi
  4025d5: e8 86 e6 ff ff               	callq	0x400c60 <close@plt>
  4025da: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
  4025df: e9 1e 03 00 00               	jmp	0x402902 <submitr+0x6b9>
  4025e4: 89 ee                        	movl	%ebp, %esi
  4025e6: 48 8d 7c 24 30               	leaq	48(%rsp), %rdi
  4025eb: e8 7b f9 ff ff               	callq	0x401f6b <rio_readinitb>
  4025f0: ba 00 20 00 00               	movl	$8192, %edx             # imm = 0x2000
  4025f5: 48 8d b4 24 40 20 00 00      	leaq	8256(%rsp), %rsi
  4025fd: 48 8d 7c 24 30               	leaq	48(%rsp), %rdi
  402602: e8 8b fa ff ff               	callq	0x402092 <rio_readlineb>
  402607: 48 85 c0                     	testq	%rax, %rax
  40260a: 7f 7d                        	jg	0x402689 <submitr+0x440>
  40260c: 48 b8 45 72 72 6f 72 3a 20 43	movabsq	$4836930262966366789, %rax # imm = 0x43203A726F727245
  402616: 48 89 03                     	movq	%rax, (%rbx)
  402619: 48 b8 6c 69 65 6e 74 20 75 6e	movabsq	$7959303600887654764, %rax # imm = 0x6E7520746E65696C
  402623: 48 89 43 08                  	movq	%rax, 8(%rbx)
  402627: 48 b8 61 62 6c 65 20 74 6f 20	movabsq	$2337214414117954145, %rax # imm = 0x206F7420656C6261
  402631: 48 89 43 10                  	movq	%rax, 16(%rbx)
  402635: 48 b8 72 65 61 64 20 66 69 72	movabsq	$8244232882187494770, %rax # imm = 0x7269662064616572
  40263f: 48 89 43 18                  	movq	%rax, 24(%rbx)
  402643: 48 b8 73 74 20 68 65 61 64 65	movabsq	$7306071583668335731, %rax # imm = 0x6564616568207473
  40264d: 48 89 43 20                  	movq	%rax, 32(%rbx)
  402651: 48 b8 72 20 66 72 6f 6d 20 72	movabsq	$8223693245006618738, %rax # imm = 0x72206D6F72662072
  40265b: 48 89 43 28                  	movq	%rax, 40(%rbx)
  40265f: 48 b8 65 73 75 6c 74 20 73 65	movabsq	$7310222304560378725, %rax # imm = 0x657320746C757365
  402669: 48 89 43 30                  	movq	%rax, 48(%rbx)
  40266d: c7 43 38 72 76 65 72         	movl	$1919252082, 56(%rbx)   # imm = 0x72657672
  402674: c6 43 3c 00                  	movb	$0, 60(%rbx)
  402678: 89 ef                        	movl	%ebp, %edi
  40267a: e8 e1 e5 ff ff               	callq	0x400c60 <close@plt>
  40267f: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
  402684: e9 79 02 00 00               	jmp	0x402902 <submitr+0x6b9>
  402689: 4c 8d 84 24 40 80 00 00      	leaq	32832(%rsp), %r8
  402691: 48 8d 4c 24 1c               	leaq	28(%rsp), %rcx
  402696: 48 8d 94 24 40 60 00 00      	leaq	24640(%rsp), %rdx
  40269e: be 7e 33 40 00               	movl	$4207486, %esi          # imm = 0x40337E
  4026a3: 48 8d bc 24 40 20 00 00      	leaq	8256(%rsp), %rdi
  4026ab: b8 00 00 00 00               	movl	$0, %eax
  4026b0: e8 4b e6 ff ff               	callq	0x400d00 <__isoc99_sscanf@plt>
  4026b5: e9 95 00 00 00               	jmp	0x40274f <submitr+0x506>
  4026ba: ba 00 20 00 00               	movl	$8192, %edx             # imm = 0x2000
  4026bf: 48 8d b4 24 40 20 00 00      	leaq	8256(%rsp), %rsi
  4026c7: 48 8d 7c 24 30               	leaq	48(%rsp), %rdi
  4026cc: e8 c1 f9 ff ff               	callq	0x402092 <rio_readlineb>
  4026d1: 48 85 c0                     	testq	%rax, %rax
  4026d4: 7f 79                        	jg	0x40274f <submitr+0x506>
  4026d6: 48 b8 45 72 72 6f 72 3a 20 43	movabsq	$4836930262966366789, %rax # imm = 0x43203A726F727245
  4026e0: 48 89 03                     	movq	%rax, (%rbx)
  4026e3: 48 b8 6c 69 65 6e 74 20 75 6e	movabsq	$7959303600887654764, %rax # imm = 0x6E7520746E65696C
  4026ed: 48 89 43 08                  	movq	%rax, 8(%rbx)
  4026f1: 48 b8 61 62 6c 65 20 74 6f 20	movabsq	$2337214414117954145, %rax # imm = 0x206F7420656C6261
  4026fb: 48 89 43 10                  	movq	%rax, 16(%rbx)
  4026ff: 48 b8 72 65 61 64 20 68 65 61	movabsq	$7018130082659132786, %rax # imm = 0x6165682064616572
  402709: 48 89 43 18                  	movq	%rax, 24(%rbx)
  40270d: 48 b8 64 65 72 73 20 66 72 6f	movabsq	$8030593375116879204, %rax # imm = 0x6F72662073726564
  402717: 48 89 43 20                  	movq	%rax, 32(%rbx)
  40271b: 48 b8 6d 20 74 68 65 20 72 65	movabsq	$7309940765091962989, %rax # imm = 0x657220656874206D
  402725: 48 89 43 28                  	movq	%rax, 40(%rbx)
  402729: 48 b8 73 75 6c 74 20 73 65 72	movabsq	$8243121276200973683, %rax # imm = 0x72657320746C7573
  402733: 48 89 43 30                  	movq	%rax, 48(%rbx)
  402737: c7 43 38 76 65 72 00         	movl	$7497078, 56(%rbx)      # imm = 0x726576
  40273e: 89 ef                        	movl	%ebp, %edi
  402740: e8 1b e5 ff ff               	callq	0x400c60 <close@plt>
  402745: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
  40274a: e9 b3 01 00 00               	jmp	0x402902 <submitr+0x6b9>
  40274f: 0f b6 94 24 40 20 00 00      	movzbl	8256(%rsp), %edx
  402757: b8 0d 00 00 00               	movl	$13, %eax
  40275c: 29 d0                        	subl	%edx, %eax
  40275e: 75 1b                        	jne	0x40277b <submitr+0x532>
  402760: 0f b6 94 24 41 20 00 00      	movzbl	8257(%rsp), %edx
  402768: b8 0a 00 00 00               	movl	$10, %eax
  40276d: 29 d0                        	subl	%edx, %eax
  40276f: 75 0a                        	jne	0x40277b <submitr+0x532>
  402771: 0f b6 84 24 42 20 00 00      	movzbl	8258(%rsp), %eax
  402779: f7 d8                        	negl	%eax
  40277b: 85 c0                        	testl	%eax, %eax
  40277d: 0f 85 37 ff ff ff            	jne	0x4026ba <submitr+0x471>
  402783: ba 00 20 00 00               	movl	$8192, %edx             # imm = 0x2000
  402788: 48 8d b4 24 40 20 00 00      	leaq	8256(%rsp), %rsi
  402790: 48 8d 7c 24 30               	leaq	48(%rsp), %rdi
  402795: e8 f8 f8 ff ff               	callq	0x402092 <rio_readlineb>
  40279a: 48 85 c0                     	testq	%rax, %rax
  40279d: 0f 8f 83 00 00 00            	jg	0x402826 <submitr+0x5dd>
  4027a3: 48 b8 45 72 72 6f 72 3a 20 43	movabsq	$4836930262966366789, %rax # imm = 0x43203A726F727245
  4027ad: 48 89 03                     	movq	%rax, (%rbx)
  4027b0: 48 b8 6c 69 65 6e 74 20 75 6e	movabsq	$7959303600887654764, %rax # imm = 0x6E7520746E65696C
  4027ba: 48 89 43 08                  	movq	%rax, 8(%rbx)
  4027be: 48 b8 61 62 6c 65 20 74 6f 20	movabsq	$2337214414117954145, %rax # imm = 0x206F7420656C6261
  4027c8: 48 89 43 10                  	movq	%rax, 16(%rbx)
  4027cc: 48 b8 72 65 61 64 20 73 74 61	movabsq	$7022364301937698162, %rax # imm = 0x6174732064616572
  4027d6: 48 89 43 18                  	movq	%rax, 24(%rbx)
  4027da: 48 b8 74 75 73 20 6d 65 73 73	movabsq	$8319104456053716340, %rax # imm = 0x7373656D20737574
  4027e4: 48 89 43 20                  	movq	%rax, 32(%rbx)
  4027e8: 48 b8 61 67 65 20 66 72 6f 6d	movabsq	$7885647255504775009, %rax # imm = 0x6D6F726620656761
  4027f2: 48 89 43 28                  	movq	%rax, 40(%rbx)
  4027f6: 48 b8 20 72 65 73 75 6c 74 20	movabsq	$2338613358215131680, %rax # imm = 0x20746C7573657220
  402800: 48 89 43 30                  	movq	%rax, 48(%rbx)
  402804: c7 43 38 73 65 72 76         	movl	$1987208563, 56(%rbx)   # imm = 0x76726573
  40280b: 66 c7 43 3c 65 72            	movw	$29285, 60(%rbx)        # imm = 0x7265
  402811: c6 43 3e 00                  	movb	$0, 62(%rbx)
  402815: 89 ef                        	movl	%ebp, %edi
  402817: e8 44 e4 ff ff               	callq	0x400c60 <close@plt>
  40281c: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
  402821: e9 dc 00 00 00               	jmp	0x402902 <submitr+0x6b9>
  402826: 44 8b 44 24 1c               	movl	28(%rsp), %r8d
  40282b: 41 81 f8 c8 00 00 00         	cmpl	$200, %r8d
  402832: 74 37                        	je	0x40286b <submitr+0x622>
  402834: 4c 8d 8c 24 40 80 00 00      	leaq	32832(%rsp), %r9
  40283c: b9 38 33 40 00               	movl	$4207416, %ecx          # imm = 0x403338
  402841: 48 c7 c2 ff ff ff ff         	movq	$-1, %rdx
  402848: be 01 00 00 00               	movl	$1, %esi
  40284d: 48 89 df                     	movq	%rbx, %rdi
  402850: b8 00 00 00 00               	movl	$0, %eax
  402855: e8 36 e5 ff ff               	callq	0x400d90 <__sprintf_chk@plt>
  40285a: 89 ef                        	movl	%ebp, %edi
  40285c: e8 ff e3 ff ff               	callq	0x400c60 <close@plt>
  402861: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
  402866: e9 97 00 00 00               	jmp	0x402902 <submitr+0x6b9>
  40286b: 48 8d b4 24 40 20 00 00      	leaq	8256(%rsp), %rsi
  402873: 48 89 df                     	movq	%rbx, %rdi
  402876: e8 75 e3 ff ff               	callq	0x400bf0 <strcpy@plt>
  40287b: 89 ef                        	movl	%ebp, %edi
  40287d: e8 de e3 ff ff               	callq	0x400c60 <close@plt>
  402882: 0f b6 03                     	movzbl	(%rbx), %eax
  402885: ba 4f 00 00 00               	movl	$79, %edx
  40288a: 29 c2                        	subl	%eax, %edx
  40288c: 75 22                        	jne	0x4028b0 <submitr+0x667>
  40288e: 0f b6 4b 01                  	movzbl	1(%rbx), %ecx
  402892: b8 4b 00 00 00               	movl	$75, %eax
  402897: 29 c8                        	subl	%ecx, %eax
  402899: 75 17                        	jne	0x4028b2 <submitr+0x669>
  40289b: 0f b6 4b 02                  	movzbl	2(%rbx), %ecx
  40289f: b8 0a 00 00 00               	movl	$10, %eax
  4028a4: 29 c8                        	subl	%ecx, %eax
  4028a6: 75 0a                        	jne	0x4028b2 <submitr+0x669>
  4028a8: 0f b6 43 03                  	movzbl	3(%rbx), %eax
  4028ac: f7 d8                        	negl	%eax
  4028ae: eb 02                        	jmp	0x4028b2 <submitr+0x669>
  4028b0: 89 d0                        	movl	%edx, %eax
  4028b2: 85 c0                        	testl	%eax, %eax
  4028b4: 74 40                        	je	0x4028f6 <submitr+0x6ad>
  4028b6: bf 8f 33 40 00               	movl	$4207503, %edi          # imm = 0x40338F
  4028bb: b9 05 00 00 00               	movl	$5, %ecx
  4028c0: 48 89 de                     	movq	%rbx, %rsi
  4028c3: f3 a6                        	rep		cmpsb	%es:(%rdi), (%rsi)
  4028c5: 0f 97 c0                     	seta	%al
  4028c8: 0f 92 c1                     	setb	%cl
  4028cb: 29 c8                        	subl	%ecx, %eax
  4028cd: 0f be c0                     	movsbl	%al, %eax
  4028d0: 85 c0                        	testl	%eax, %eax
  4028d2: 74 2e                        	je	0x402902 <submitr+0x6b9>
  4028d4: 85 d2                        	testl	%edx, %edx
  4028d6: 75 13                        	jne	0x4028eb <submitr+0x6a2>
  4028d8: 0f b6 43 01                  	movzbl	1(%rbx), %eax
  4028dc: ba 4b 00 00 00               	movl	$75, %edx
  4028e1: 29 c2                        	subl	%eax, %edx
  4028e3: 75 06                        	jne	0x4028eb <submitr+0x6a2>
  4028e5: 0f b6 53 02                  	movzbl	2(%rbx), %edx
  4028e9: f7 da                        	negl	%edx
  4028eb: 85 d2                        	testl	%edx, %edx
  4028ed: 75 0e                        	jne	0x4028fd <submitr+0x6b4>
  4028ef: b8 00 00 00 00               	movl	$0, %eax
  4028f4: eb 0c                        	jmp	0x402902 <submitr+0x6b9>
  4028f6: b8 00 00 00 00               	movl	$0, %eax
  4028fb: eb 05                        	jmp	0x402902 <submitr+0x6b9>
  4028fd: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
  402902: 48 8b 9c 24 48 a0 00 00      	movq	41032(%rsp), %rbx
  40290a: 64 48 33 1c 25 28 00 00 00   	xorq	%fs:40, %rbx
  402913: 74 05                        	je	0x40291a <submitr+0x6d1>
  402915: e8 06 e3 ff ff               	callq	0x400c20 <__stack_chk_fail@plt>
  40291a: 48 81 c4 58 a0 00 00         	addq	$41048, %rsp            # imm = 0xA058
  402921: 5b                           	popq	%rbx
  402922: 5d                           	popq	%rbp
  402923: 41 5c                        	popq	%r12
  402925: 41 5d                        	popq	%r13
  402927: 41 5e                        	popq	%r14
  402929: 41 5f                        	popq	%r15
  40292b: c3                           	retq

000000000040292c <init_timeout>:
  40292c: 85 ff                        	testl	%edi, %edi
  40292e: 74 23                        	je	0x402953 <init_timeout+0x27>
  402930: 53                           	pushq	%rbx
  402931: 89 fb                        	movl	%edi, %ebx
  402933: 85 ff                        	testl	%edi, %edi
  402935: 79 05                        	jns	0x40293c <init_timeout+0x10>
  402937: bb 00 00 00 00               	movl	$0, %ebx
  40293c: be 7d 1f 40 00               	movl	$4202365, %esi          # imm = 0x401F7D
  402941: bf 0e 00 00 00               	movl	$14, %edi
  402946: e8 55 e3 ff ff               	callq	0x400ca0 <signal@plt>
  40294b: 89 df                        	movl	%ebx, %edi
  40294d: e8 fe e2 ff ff               	callq	0x400c50 <alarm@plt>
  402952: 5b                           	popq	%rbx
  402953: f3 c3                        	rep		retq

0000000000402955 <init_driver>:
  402955: 55                           	pushq	%rbp
  402956: 53                           	pushq	%rbx
  402957: 48 83 ec 28                  	subq	$40, %rsp
  40295b: 48 89 fd                     	movq	%rdi, %rbp
  40295e: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
  402967: 48 89 44 24 18               	movq	%rax, 24(%rsp)
  40296c: 31 c0                        	xorl	%eax, %eax
  40296e: be 01 00 00 00               	movl	$1, %esi
  402973: bf 0d 00 00 00               	movl	$13, %edi
  402978: e8 23 e3 ff ff               	callq	0x400ca0 <signal@plt>
  40297d: be 01 00 00 00               	movl	$1, %esi
  402982: bf 1d 00 00 00               	movl	$29, %edi
  402987: e8 14 e3 ff ff               	callq	0x400ca0 <signal@plt>
  40298c: be 01 00 00 00               	movl	$1, %esi
  402991: bf 1d 00 00 00               	movl	$29, %edi
  402996: e8 05 e3 ff ff               	callq	0x400ca0 <signal@plt>
  40299b: ba 00 00 00 00               	movl	$0, %edx
  4029a0: be 01 00 00 00               	movl	$1, %esi
  4029a5: bf 02 00 00 00               	movl	$2, %edi
  4029aa: e8 f1 e3 ff ff               	callq	0x400da0 <socket@plt>
  4029af: 85 c0                        	testl	%eax, %eax
  4029b1: 79 4f                        	jns	0x402a02 <init_driver+0xad>
  4029b3: 48 b8 45 72 72 6f 72 3a 20 43	movabsq	$4836930262966366789, %rax # imm = 0x43203A726F727245
  4029bd: 48 89 45 00                  	movq	%rax, (%rbp)
  4029c1: 48 b8 6c 69 65 6e 74 20 75 6e	movabsq	$7959303600887654764, %rax # imm = 0x6E7520746E65696C
  4029cb: 48 89 45 08                  	movq	%rax, 8(%rbp)
  4029cf: 48 b8 61 62 6c 65 20 74 6f 20	movabsq	$2337214414117954145, %rax # imm = 0x206F7420656C6261
  4029d9: 48 89 45 10                  	movq	%rax, 16(%rbp)
  4029dd: 48 b8 63 72 65 61 74 65 20 73	movabsq	$8295742064141103715, %rax # imm = 0x7320657461657263
  4029e7: 48 89 45 18                  	movq	%rax, 24(%rbp)
  4029eb: c7 45 20 6f 63 6b 65         	movl	$1701536623, 32(%rbp)   # imm = 0x656B636F
  4029f2: 66 c7 45 24 74 00            	movw	$116, 36(%rbp)
  4029f8: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
  4029fd: e9 9b 00 00 00               	jmp	0x402a9d <init_driver+0x148>
  402a02: 89 c3                        	movl	%eax, %ebx
  402a04: 66 c7 04 24 02 00            	movw	$2, (%rsp)
  402a0a: bf 6f 33 40 00               	movl	$4207471, %edi          # imm = 0x40336F
  402a0f: b8 00 00 00 00               	movl	$0, %eax
  402a14: e8 77 e2 ff ff               	callq	0x400c90 <inet_addr@plt>
  402a19: 89 44 24 04                  	movl	%eax, 4(%rsp)
  402a1d: 66 c7 44 24 02 3c 9a         	movw	$39484, 2(%rsp)         # imm = 0x9A3C
  402a24: ba 10 00 00 00               	movl	$16, %edx
  402a29: 48 89 e6                     	movq	%rsp, %rsi
  402a2c: 89 df                        	movl	%ebx, %edi
  402a2e: e8 3d e3 ff ff               	callq	0x400d70 <connect@plt>
  402a33: 85 c0                        	testl	%eax, %eax
  402a35: 79 50                        	jns	0x402a87 <init_driver+0x132>
  402a37: 48 b8 45 72 72 6f 72 3a 20 55	movabsq	$6133966955649069637, %rax # imm = 0x55203A726F727245
  402a41: 48 89 45 00                  	movq	%rax, (%rbp)
  402a45: 48 b8 6e 61 62 6c 65 20 74 6f	movabsq	$8031079655490609518, %rax # imm = 0x6F7420656C62616E
  402a4f: 48 89 45 08                  	movq	%rax, 8(%rbp)
  402a53: 48 b8 20 63 6f 6e 6e 65 63 74	movabsq	$8386658456067597088, %rax # imm = 0x7463656E6E6F6320
  402a5d: 48 89 45 10                  	movq	%rax, 16(%rbp)
  402a61: 48 b8 20 74 6f 20 73 65 72 76	movabsq	$8534995788960330784, %rax # imm = 0x76726573206F7420
  402a6b: 48 89 45 18                  	movq	%rax, 24(%rbp)
  402a6f: 66 c7 45 20 65 72            	movw	$29285, 32(%rbp)        # imm = 0x7265
  402a75: c6 45 22 00                  	movb	$0, 34(%rbp)
  402a79: 89 df                        	movl	%ebx, %edi
  402a7b: e8 e0 e1 ff ff               	callq	0x400c60 <close@plt>
  402a80: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
  402a85: eb 16                        	jmp	0x402a9d <init_driver+0x148>
  402a87: 89 df                        	movl	%ebx, %edi
  402a89: e8 d2 e1 ff ff               	callq	0x400c60 <close@plt>
  402a8e: 66 c7 45 00 4f 4b            	movw	$19279, (%rbp)          # imm = 0x4B4F
  402a94: c6 45 02 00                  	movb	$0, 2(%rbp)
  402a98: b8 00 00 00 00               	movl	$0, %eax
  402a9d: 48 8b 4c 24 18               	movq	24(%rsp), %rcx
  402aa2: 64 48 33 0c 25 28 00 00 00   	xorq	%fs:40, %rcx
  402aab: 74 05                        	je	0x402ab2 <init_driver+0x15d>
  402aad: e8 6e e1 ff ff               	callq	0x400c20 <__stack_chk_fail@plt>
  402ab2: 48 83 c4 28                  	addq	$40, %rsp
  402ab6: 5b                           	popq	%rbx
  402ab7: 5d                           	popq	%rbp
  402ab8: c3                           	retq

0000000000402ab9 <driver_post>:
  402ab9: 53                           	pushq	%rbx
  402aba: 4c 89 cb                     	movq	%r9, %rbx
  402abd: 45 85 c0                     	testl	%r8d, %r8d
  402ac0: 74 27                        	je	0x402ae9 <driver_post+0x30>
  402ac2: 48 89 ca                     	movq	%rcx, %rdx
  402ac5: be 94 33 40 00               	movl	$4207508, %esi          # imm = 0x403394
  402aca: bf 01 00 00 00               	movl	$1, %edi
  402acf: b8 00 00 00 00               	movl	$0, %eax
  402ad4: e8 47 e2 ff ff               	callq	0x400d20 <__printf_chk@plt>
  402ad9: 66 c7 03 4f 4b               	movw	$19279, (%rbx)          # imm = 0x4B4F
  402ade: c6 43 02 00                  	movb	$0, 2(%rbx)
  402ae2: b8 00 00 00 00               	movl	$0, %eax
  402ae7: eb 3f                        	jmp	0x402b28 <driver_post+0x6f>
  402ae9: 48 85 ff                     	testq	%rdi, %rdi
  402aec: 74 2c                        	je	0x402b1a <driver_post+0x61>
  402aee: 80 3f 00                     	cmpb	$0, (%rdi)
  402af1: 74 27                        	je	0x402b1a <driver_post+0x61>
  402af3: 48 83 ec 08                  	subq	$8, %rsp
  402af7: 41 51                        	pushq	%r9
  402af9: 49 89 c9                     	movq	%rcx, %r9
  402afc: 49 89 d0                     	movq	%rdx, %r8
  402aff: 48 89 f9                     	movq	%rdi, %rcx
  402b02: 48 89 f2                     	movq	%rsi, %rdx
  402b05: be 9a 3c 00 00               	movl	$15514, %esi            # imm = 0x3C9A
  402b0a: bf 6f 33 40 00               	movl	$4207471, %edi          # imm = 0x40336F
  402b0f: e8 35 f7 ff ff               	callq	0x402249 <submitr>
  402b14: 48 83 c4 10                  	addq	$16, %rsp
  402b18: eb 0e                        	jmp	0x402b28 <driver_post+0x6f>
  402b1a: 66 c7 03 4f 4b               	movw	$19279, (%rbx)          # imm = 0x4B4F
  402b1f: c6 43 02 00                  	movb	$0, 2(%rbx)
  402b23: b8 00 00 00 00               	movl	$0, %eax
  402b28: 5b                           	popq	%rbx
  402b29: c3                           	retq

0000000000402b2a <check>:
  402b2a: 89 f8                        	movl	%edi, %eax
  402b2c: c1 e8 1c                     	shrl	$28, %eax
  402b2f: 85 c0                        	testl	%eax, %eax
  402b31: 74 1d                        	je	0x402b50 <check+0x26>
  402b33: b9 00 00 00 00               	movl	$0, %ecx
  402b38: eb 0b                        	jmp	0x402b45 <check+0x1b>
  402b3a: 89 f8                        	movl	%edi, %eax
  402b3c: d3 e8                        	shrl	%cl, %eax
  402b3e: 3c 0a                        	cmpb	$10, %al
  402b40: 74 14                        	je	0x402b56 <check+0x2c>
  402b42: 83 c1 08                     	addl	$8, %ecx
  402b45: 83 f9 1f                     	cmpl	$31, %ecx
  402b48: 7e f0                        	jle	0x402b3a <check+0x10>
  402b4a: b8 01 00 00 00               	movl	$1, %eax
  402b4f: c3                           	retq
  402b50: b8 00 00 00 00               	movl	$0, %eax
  402b55: c3                           	retq
  402b56: b8 00 00 00 00               	movl	$0, %eax
  402b5b: c3                           	retq

0000000000402b5c <gencookie>:
  402b5c: 53                           	pushq	%rbx
  402b5d: 83 c7 01                     	addl	$1, %edi
  402b60: e8 6b e0 ff ff               	callq	0x400bd0 <srandom@plt>
  402b65: e8 76 e1 ff ff               	callq	0x400ce0 <random@plt>
  402b6a: 89 c3                        	movl	%eax, %ebx
  402b6c: 89 c7                        	movl	%eax, %edi
  402b6e: e8 b7 ff ff ff               	callq	0x402b2a <check>
  402b73: 85 c0                        	testl	%eax, %eax
  402b75: 74 ee                        	je	0x402b65 <gencookie+0x9>
  402b77: 89 d8                        	movl	%ebx, %eax
  402b79: 5b                           	popq	%rbx
  402b7a: c3                           	retq
  402b7b: 0f 1f 44 00 00               	nopl	(%rax,%rax)

0000000000402b80 <__libc_csu_init>:
  402b80: 41 57                        	pushq	%r15
  402b82: 41 56                        	pushq	%r14
  402b84: 41 89 ff                     	movl	%edi, %r15d
  402b87: 41 55                        	pushq	%r13
  402b89: 41 54                        	pushq	%r12
  402b8b: 4c 8d 25 7e 12 20 00         	leaq	2101886(%rip), %r12     # 0x603e10 <__init_array_start>
  402b92: 55                           	pushq	%rbp
  402b93: 48 8d 2d 7e 12 20 00         	leaq	2101886(%rip), %rbp     # 0x603e18 <__do_global_dtors_aux_fini_array_entry>
  402b9a: 53                           	pushq	%rbx
  402b9b: 49 89 f6                     	movq	%rsi, %r14
  402b9e: 49 89 d5                     	movq	%rdx, %r13
  402ba1: 4c 29 e5                     	subq	%r12, %rbp
  402ba4: 48 83 ec 08                  	subq	$8, %rsp
  402ba8: 48 c1 fd 03                  	sarq	$3, %rbp
  402bac: e8 d7 df ff ff               	callq	0x400b88 <_init>
  402bb1: 48 85 ed                     	testq	%rbp, %rbp
  402bb4: 74 20                        	je	0x402bd6 <__libc_csu_init+0x56>
  402bb6: 31 db                        	xorl	%ebx, %ebx
  402bb8: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)
  402bc0: 4c 89 ea                     	movq	%r13, %rdx
  402bc3: 4c 89 f6                     	movq	%r14, %rsi
  402bc6: 44 89 ff                     	movl	%r15d, %edi
  402bc9: 41 ff 14 dc                  	callq	*(%r12,%rbx,8)
  402bcd: 48 83 c3 01                  	addq	$1, %rbx
  402bd1: 48 39 eb                     	cmpq	%rbp, %rbx
  402bd4: 75 ea                        	jne	0x402bc0 <__libc_csu_init+0x40>
  402bd6: 48 83 c4 08                  	addq	$8, %rsp
  402bda: 5b                           	popq	%rbx
  402bdb: 5d                           	popq	%rbp
  402bdc: 41 5c                        	popq	%r12
  402bde: 41 5d                        	popq	%r13
  402be0: 41 5e                        	popq	%r14
  402be2: 41 5f                        	popq	%r15
  402be4: c3                           	retq
  402be5: 90                           	nop
  402be6: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000000402bf0 <__libc_csu_fini>:
  402bf0: f3 c3                        	rep		retq

Disassembly of section .fini:

0000000000402bf4 <_fini>:
  402bf4: 48 83 ec 08                  	subq	$8, %rsp
  402bf8: 48 83 c4 08                  	addq	$8, %rsp
  402bfc: c3                           	retq
