
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000400b00 <_init>:
  400b00:	48 83 ec 08          	sub    $0x8,%rsp
  400b04:	48 8b 05 ed 34 20 00 	mov    0x2034ed(%rip),%rax        # 603ff8 <_DYNAMIC+0x1d0>
  400b0b:	48 85 c0             	test   %rax,%rax
  400b0e:	74 05                	je     400b15 <_init+0x15>
  400b10:	e8 db 01 00 00       	callq  400cf0 <socket@plt+0x10>
  400b15:	48 83 c4 08          	add    $0x8,%rsp
  400b19:	c3                   	retq   

Disassembly of section .plt:

0000000000400b20 <getenv@plt-0x10>:
  400b20:	ff 35 e2 34 20 00    	pushq  0x2034e2(%rip)        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400b26:	ff 25 e4 34 20 00    	jmpq   *0x2034e4(%rip)        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400b2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400b30 <getenv@plt>:
  400b30:	ff 25 e2 34 20 00    	jmpq   *0x2034e2(%rip)        # 604018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400b36:	68 00 00 00 00       	pushq  $0x0
  400b3b:	e9 e0 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400b40 <strcasecmp@plt>:
  400b40:	ff 25 da 34 20 00    	jmpq   *0x2034da(%rip)        # 604020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400b46:	68 01 00 00 00       	pushq  $0x1
  400b4b:	e9 d0 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400b50 <__errno_location@plt>:
  400b50:	ff 25 d2 34 20 00    	jmpq   *0x2034d2(%rip)        # 604028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400b56:	68 02 00 00 00       	pushq  $0x2
  400b5b:	e9 c0 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400b60 <strcpy@plt>:
  400b60:	ff 25 ca 34 20 00    	jmpq   *0x2034ca(%rip)        # 604030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400b66:	68 03 00 00 00       	pushq  $0x3
  400b6b:	e9 b0 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400b70 <puts@plt>:
  400b70:	ff 25 c2 34 20 00    	jmpq   *0x2034c2(%rip)        # 604038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400b76:	68 04 00 00 00       	pushq  $0x4
  400b7b:	e9 a0 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400b80 <write@plt>:
  400b80:	ff 25 ba 34 20 00    	jmpq   *0x2034ba(%rip)        # 604040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400b86:	68 05 00 00 00       	pushq  $0x5
  400b8b:	e9 90 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400b90 <__stack_chk_fail@plt>:
  400b90:	ff 25 b2 34 20 00    	jmpq   *0x2034b2(%rip)        # 604048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400b96:	68 06 00 00 00       	pushq  $0x6
  400b9b:	e9 80 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400ba0 <alarm@plt>:
  400ba0:	ff 25 aa 34 20 00    	jmpq   *0x2034aa(%rip)        # 604050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400ba6:	68 07 00 00 00       	pushq  $0x7
  400bab:	e9 70 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400bb0 <close@plt>:
  400bb0:	ff 25 a2 34 20 00    	jmpq   *0x2034a2(%rip)        # 604058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400bb6:	68 08 00 00 00       	pushq  $0x8
  400bbb:	e9 60 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400bc0 <read@plt>:
  400bc0:	ff 25 9a 34 20 00    	jmpq   *0x20349a(%rip)        # 604060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400bc6:	68 09 00 00 00       	pushq  $0x9
  400bcb:	e9 50 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400bd0 <__libc_start_main@plt>:
  400bd0:	ff 25 92 34 20 00    	jmpq   *0x203492(%rip)        # 604068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400bd6:	68 0a 00 00 00       	pushq  $0xa
  400bdb:	e9 40 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400be0 <fgets@plt>:
  400be0:	ff 25 8a 34 20 00    	jmpq   *0x20348a(%rip)        # 604070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400be6:	68 0b 00 00 00       	pushq  $0xb
  400beb:	e9 30 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400bf0 <signal@plt>:
  400bf0:	ff 25 82 34 20 00    	jmpq   *0x203482(%rip)        # 604078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400bf6:	68 0c 00 00 00       	pushq  $0xc
  400bfb:	e9 20 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400c00 <gethostbyname@plt>:
  400c00:	ff 25 7a 34 20 00    	jmpq   *0x20347a(%rip)        # 604080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400c06:	68 0d 00 00 00       	pushq  $0xd
  400c0b:	e9 10 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400c10 <__memmove_chk@plt>:
  400c10:	ff 25 72 34 20 00    	jmpq   *0x203472(%rip)        # 604088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400c16:	68 0e 00 00 00       	pushq  $0xe
  400c1b:	e9 00 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400c20 <strtol@plt>:
  400c20:	ff 25 6a 34 20 00    	jmpq   *0x20346a(%rip)        # 604090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400c26:	68 0f 00 00 00       	pushq  $0xf
  400c2b:	e9 f0 fe ff ff       	jmpq   400b20 <_init+0x20>

0000000000400c30 <fflush@plt>:
  400c30:	ff 25 62 34 20 00    	jmpq   *0x203462(%rip)        # 604098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400c36:	68 10 00 00 00       	pushq  $0x10
  400c3b:	e9 e0 fe ff ff       	jmpq   400b20 <_init+0x20>

0000000000400c40 <__isoc99_sscanf@plt>:
  400c40:	ff 25 5a 34 20 00    	jmpq   *0x20345a(%rip)        # 6040a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400c46:	68 11 00 00 00       	pushq  $0x11
  400c4b:	e9 d0 fe ff ff       	jmpq   400b20 <_init+0x20>

0000000000400c50 <__printf_chk@plt>:
  400c50:	ff 25 52 34 20 00    	jmpq   *0x203452(%rip)        # 6040a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400c56:	68 12 00 00 00       	pushq  $0x12
  400c5b:	e9 c0 fe ff ff       	jmpq   400b20 <_init+0x20>

0000000000400c60 <fopen@plt>:
  400c60:	ff 25 4a 34 20 00    	jmpq   *0x20344a(%rip)        # 6040b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400c66:	68 13 00 00 00       	pushq  $0x13
  400c6b:	e9 b0 fe ff ff       	jmpq   400b20 <_init+0x20>

0000000000400c70 <gethostname@plt>:
  400c70:	ff 25 42 34 20 00    	jmpq   *0x203442(%rip)        # 6040b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400c76:	68 14 00 00 00       	pushq  $0x14
  400c7b:	e9 a0 fe ff ff       	jmpq   400b20 <_init+0x20>

0000000000400c80 <exit@plt>:
  400c80:	ff 25 3a 34 20 00    	jmpq   *0x20343a(%rip)        # 6040c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400c86:	68 15 00 00 00       	pushq  $0x15
  400c8b:	e9 90 fe ff ff       	jmpq   400b20 <_init+0x20>

0000000000400c90 <connect@plt>:
  400c90:	ff 25 32 34 20 00    	jmpq   *0x203432(%rip)        # 6040c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400c96:	68 16 00 00 00       	pushq  $0x16
  400c9b:	e9 80 fe ff ff       	jmpq   400b20 <_init+0x20>

0000000000400ca0 <__fprintf_chk@plt>:
  400ca0:	ff 25 2a 34 20 00    	jmpq   *0x20342a(%rip)        # 6040d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400ca6:	68 17 00 00 00       	pushq  $0x17
  400cab:	e9 70 fe ff ff       	jmpq   400b20 <_init+0x20>

0000000000400cb0 <sleep@plt>:
  400cb0:	ff 25 22 34 20 00    	jmpq   *0x203422(%rip)        # 6040d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400cb6:	68 18 00 00 00       	pushq  $0x18
  400cbb:	e9 60 fe ff ff       	jmpq   400b20 <_init+0x20>

0000000000400cc0 <__ctype_b_loc@plt>:
  400cc0:	ff 25 1a 34 20 00    	jmpq   *0x20341a(%rip)        # 6040e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400cc6:	68 19 00 00 00       	pushq  $0x19
  400ccb:	e9 50 fe ff ff       	jmpq   400b20 <_init+0x20>

0000000000400cd0 <__sprintf_chk@plt>:
  400cd0:	ff 25 12 34 20 00    	jmpq   *0x203412(%rip)        # 6040e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400cd6:	68 1a 00 00 00       	pushq  $0x1a
  400cdb:	e9 40 fe ff ff       	jmpq   400b20 <_init+0x20>

0000000000400ce0 <socket@plt>:
  400ce0:	ff 25 0a 34 20 00    	jmpq   *0x20340a(%rip)        # 6040f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400ce6:	68 1b 00 00 00       	pushq  $0x1b
  400ceb:	e9 30 fe ff ff       	jmpq   400b20 <_init+0x20>

Disassembly of section .plt.got:

0000000000400cf0 <.plt.got>:
  400cf0:	ff 25 02 33 20 00    	jmpq   *0x203302(%rip)        # 603ff8 <_DYNAMIC+0x1d0>
  400cf6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400d00 <_start>:
  400d00:	31 ed                	xor    %ebp,%ebp
  400d02:	49 89 d1             	mov    %rdx,%r9
  400d05:	5e                   	pop    %rsi
  400d06:	48 89 e2             	mov    %rsp,%rdx
  400d09:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400d0d:	50                   	push   %rax
  400d0e:	54                   	push   %rsp
  400d0f:	49 c7 c0 d0 25 40 00 	mov    $0x4025d0,%r8
  400d16:	48 c7 c1 60 25 40 00 	mov    $0x402560,%rcx
  400d1d:	48 c7 c7 f6 0d 40 00 	mov    $0x400df6,%rdi
  400d24:	e8 a7 fe ff ff       	callq  400bd0 <__libc_start_main@plt>
  400d29:	f4                   	hlt    
  400d2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400d30 <deregister_tm_clones>:
  400d30:	b8 87 47 60 00       	mov    $0x604787,%eax
  400d35:	55                   	push   %rbp
  400d36:	48 2d 80 47 60 00    	sub    $0x604780,%rax
  400d3c:	48 83 f8 0e          	cmp    $0xe,%rax
  400d40:	48 89 e5             	mov    %rsp,%rbp
  400d43:	76 1b                	jbe    400d60 <deregister_tm_clones+0x30>
  400d45:	b8 00 00 00 00       	mov    $0x0,%eax
  400d4a:	48 85 c0             	test   %rax,%rax
  400d4d:	74 11                	je     400d60 <deregister_tm_clones+0x30>
  400d4f:	5d                   	pop    %rbp
  400d50:	bf 80 47 60 00       	mov    $0x604780,%edi
  400d55:	ff e0                	jmpq   *%rax
  400d57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400d5e:	00 00 
  400d60:	5d                   	pop    %rbp
  400d61:	c3                   	retq   
  400d62:	0f 1f 40 00          	nopl   0x0(%rax)
  400d66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400d6d:	00 00 00 

0000000000400d70 <register_tm_clones>:
  400d70:	be 80 47 60 00       	mov    $0x604780,%esi
  400d75:	55                   	push   %rbp
  400d76:	48 81 ee 80 47 60 00 	sub    $0x604780,%rsi
  400d7d:	48 c1 fe 03          	sar    $0x3,%rsi
  400d81:	48 89 e5             	mov    %rsp,%rbp
  400d84:	48 89 f0             	mov    %rsi,%rax
  400d87:	48 c1 e8 3f          	shr    $0x3f,%rax
  400d8b:	48 01 c6             	add    %rax,%rsi
  400d8e:	48 d1 fe             	sar    %rsi
  400d91:	74 15                	je     400da8 <register_tm_clones+0x38>
  400d93:	b8 00 00 00 00       	mov    $0x0,%eax
  400d98:	48 85 c0             	test   %rax,%rax
  400d9b:	74 0b                	je     400da8 <register_tm_clones+0x38>
  400d9d:	5d                   	pop    %rbp
  400d9e:	bf 80 47 60 00       	mov    $0x604780,%edi
  400da3:	ff e0                	jmpq   *%rax
  400da5:	0f 1f 00             	nopl   (%rax)
  400da8:	5d                   	pop    %rbp
  400da9:	c3                   	retq   
  400daa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400db0 <__do_global_dtors_aux>:
  400db0:	80 3d f1 39 20 00 00 	cmpb   $0x0,0x2039f1(%rip)        # 6047a8 <completed.7594>
  400db7:	75 11                	jne    400dca <__do_global_dtors_aux+0x1a>
  400db9:	55                   	push   %rbp
  400dba:	48 89 e5             	mov    %rsp,%rbp
  400dbd:	e8 6e ff ff ff       	callq  400d30 <deregister_tm_clones>
  400dc2:	5d                   	pop    %rbp
  400dc3:	c6 05 de 39 20 00 01 	movb   $0x1,0x2039de(%rip)        # 6047a8 <completed.7594>
  400dca:	f3 c3                	repz retq 
  400dcc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400dd0 <frame_dummy>:
  400dd0:	bf 20 3e 60 00       	mov    $0x603e20,%edi
  400dd5:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400dd9:	75 05                	jne    400de0 <frame_dummy+0x10>
  400ddb:	eb 93                	jmp    400d70 <register_tm_clones>
  400ddd:	0f 1f 00             	nopl   (%rax)
  400de0:	b8 00 00 00 00       	mov    $0x0,%eax
  400de5:	48 85 c0             	test   %rax,%rax
  400de8:	74 f1                	je     400ddb <frame_dummy+0xb>
  400dea:	55                   	push   %rbp
  400deb:	48 89 e5             	mov    %rsp,%rbp
  400dee:	ff d0                	callq  *%rax
  400df0:	5d                   	pop    %rbp
  400df1:	e9 7a ff ff ff       	jmpq   400d70 <register_tm_clones>

0000000000400df6 <main>:
  400df6:	53                   	push   %rbx
  400df7:	83 ff 01             	cmp    $0x1,%edi
  400dfa:	75 10                	jne    400e0c <main+0x16>
  400dfc:	48 8b 05 8d 39 20 00 	mov    0x20398d(%rip),%rax        # 604790 <stdin@@GLIBC_2.2.5>
  400e03:	48 89 05 a6 39 20 00 	mov    %rax,0x2039a6(%rip)        # 6047b0 <infile>
  400e0a:	eb 63                	jmp    400e6f <main+0x79>
  400e0c:	48 89 f3             	mov    %rsi,%rbx
  400e0f:	83 ff 02             	cmp    $0x2,%edi
  400e12:	75 3a                	jne    400e4e <main+0x58>
  400e14:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  400e18:	be e4 25 40 00       	mov    $0x4025e4,%esi
  400e1d:	e8 3e fe ff ff       	callq  400c60 <fopen@plt>
  400e22:	48 89 05 87 39 20 00 	mov    %rax,0x203987(%rip)        # 6047b0 <infile>
  400e29:	48 85 c0             	test   %rax,%rax
  400e2c:	75 41                	jne    400e6f <main+0x79>
  400e2e:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  400e32:	48 8b 13             	mov    (%rbx),%rdx
  400e35:	be e6 25 40 00       	mov    $0x4025e6,%esi
  400e3a:	bf 01 00 00 00       	mov    $0x1,%edi
  400e3f:	e8 0c fe ff ff       	callq  400c50 <__printf_chk@plt>
  400e44:	bf 08 00 00 00       	mov    $0x8,%edi
  400e49:	e8 32 fe ff ff       	callq  400c80 <exit@plt>
  400e4e:	48 8b 16             	mov    (%rsi),%rdx
  400e51:	be 03 26 40 00       	mov    $0x402603,%esi
  400e56:	bf 01 00 00 00       	mov    $0x1,%edi
  400e5b:	b8 00 00 00 00       	mov    $0x0,%eax
  400e60:	e8 eb fd ff ff       	callq  400c50 <__printf_chk@plt>
  400e65:	bf 08 00 00 00       	mov    $0x8,%edi
  400e6a:	e8 11 fe ff ff       	callq  400c80 <exit@plt>
  400e6f:	e8 95 06 00 00       	callq  401509 <initialize_bomb>
  400e74:	bf 68 26 40 00       	mov    $0x402668,%edi
  400e79:	e8 f2 fc ff ff       	callq  400b70 <puts@plt>
  400e7e:	bf a8 26 40 00       	mov    $0x4026a8,%edi
  400e83:	e8 e8 fc ff ff       	callq  400b70 <puts@plt>
  400e88:	e8 5e 09 00 00       	callq  4017eb <read_line>
  400e8d:	48 89 c7             	mov    %rax,%rdi
  400e90:	e8 98 00 00 00       	callq  400f2d <phase_1>
  400e95:	e8 77 0a 00 00       	callq  401911 <phase_defused>
  400e9a:	bf d8 26 40 00       	mov    $0x4026d8,%edi
  400e9f:	e8 cc fc ff ff       	callq  400b70 <puts@plt>
  400ea4:	e8 42 09 00 00       	callq  4017eb <read_line>
  400ea9:	48 89 c7             	mov    %rax,%rdi
  400eac:	e8 98 00 00 00       	callq  400f49 <phase_2>
  400eb1:	e8 5b 0a 00 00       	callq  401911 <phase_defused>
  400eb6:	bf 1d 26 40 00       	mov    $0x40261d,%edi
  400ebb:	e8 b0 fc ff ff       	callq  400b70 <puts@plt>
  400ec0:	e8 26 09 00 00       	callq  4017eb <read_line>
  400ec5:	48 89 c7             	mov    %rax,%rdi
  400ec8:	e8 e8 00 00 00       	callq  400fb5 <phase_3>
  400ecd:	e8 3f 0a 00 00       	callq  401911 <phase_defused>
  400ed2:	bf 3b 26 40 00       	mov    $0x40263b,%edi
  400ed7:	e8 94 fc ff ff       	callq  400b70 <puts@plt>
  400edc:	e8 0a 09 00 00       	callq  4017eb <read_line>
  400ee1:	48 89 c7             	mov    %rax,%rdi
  400ee4:	e8 6a 02 00 00       	callq  401153 <phase_4>
  400ee9:	e8 23 0a 00 00       	callq  401911 <phase_defused>
  400eee:	bf 08 27 40 00       	mov    $0x402708,%edi
  400ef3:	e8 78 fc ff ff       	callq  400b70 <puts@plt>
  400ef8:	e8 ee 08 00 00       	callq  4017eb <read_line>
  400efd:	48 89 c7             	mov    %rax,%rdi
  400f00:	e8 bb 02 00 00       	callq  4011c0 <phase_5>
  400f05:	e8 07 0a 00 00       	callq  401911 <phase_defused>
  400f0a:	bf 4a 26 40 00       	mov    $0x40264a,%edi
  400f0f:	e8 5c fc ff ff       	callq  400b70 <puts@plt>
  400f14:	e8 d2 08 00 00       	callq  4017eb <read_line>
  400f19:	48 89 c7             	mov    %rax,%rdi
  400f1c:	e8 2b 03 00 00       	callq  40124c <phase_6>
  400f21:	e8 eb 09 00 00       	callq  401911 <phase_defused>
  400f26:	b8 00 00 00 00       	mov    $0x0,%eax
  400f2b:	5b                   	pop    %rbx
  400f2c:	c3                   	retq   

0000000000400f2d <phase_1>:
  400f2d:	48 83 ec 08          	sub    $0x8,%rsp
  400f31:	be 30 27 40 00       	mov    $0x402730,%esi
  400f36:	e8 67 05 00 00       	callq  4014a2 <strings_not_equal>
  400f3b:	85 c0                	test   %eax,%eax
  400f3d:	74 05                	je     400f44 <phase_1+0x17>
  400f3f:	e8 32 08 00 00       	callq  401776 <explode_bomb>
  400f44:	48 83 c4 08          	add    $0x8,%rsp
  400f48:	c3                   	retq   

0000000000400f49 <phase_2>:
  400f49:	55                   	push   %rbp
  400f4a:	53                   	push   %rbx
  400f4b:	48 83 ec 28          	sub    $0x28,%rsp
  400f4f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400f56:	00 00 
  400f58:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  400f5d:	31 c0                	xor    %eax,%eax
  400f5f:	48 89 e6             	mov    %rsp,%rsi
  400f62:	e8 45 08 00 00       	callq  4017ac <read_six_numbers>
  400f67:	83 3c 24 00          	cmpl   $0x0,(%rsp)
  400f6b:	75 07                	jne    400f74 <phase_2+0x2b>
  400f6d:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
  400f72:	74 05                	je     400f79 <phase_2+0x30>
  400f74:	e8 fd 07 00 00       	callq  401776 <explode_bomb>
  400f79:	48 89 e3             	mov    %rsp,%rbx
  400f7c:	48 8d 6c 24 10       	lea    0x10(%rsp),%rbp
  400f81:	8b 43 04             	mov    0x4(%rbx),%eax
  400f84:	03 03                	add    (%rbx),%eax
  400f86:	39 43 08             	cmp    %eax,0x8(%rbx)
  400f89:	74 05                	je     400f90 <phase_2+0x47>
  400f8b:	e8 e6 07 00 00       	callq  401776 <explode_bomb>
  400f90:	48 83 c3 04          	add    $0x4,%rbx
  400f94:	48 39 eb             	cmp    %rbp,%rbx
  400f97:	75 e8                	jne    400f81 <phase_2+0x38>
  400f99:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  400f9e:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  400fa5:	00 00 
  400fa7:	74 05                	je     400fae <phase_2+0x65>
  400fa9:	e8 e2 fb ff ff       	callq  400b90 <__stack_chk_fail@plt>
  400fae:	48 83 c4 28          	add    $0x28,%rsp
  400fb2:	5b                   	pop    %rbx
  400fb3:	5d                   	pop    %rbp
  400fb4:	c3                   	retq   

0000000000400fb5 <phase_3>:
  400fb5:	48 83 ec 28          	sub    $0x28,%rsp
  400fb9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400fc0:	00 00 
  400fc2:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  400fc7:	31 c0                	xor    %eax,%eax
  400fc9:	4c 8d 44 24 14       	lea    0x14(%rsp),%r8
  400fce:	48 8d 4c 24 0f       	lea    0xf(%rsp),%rcx
  400fd3:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
  400fd8:	be 8e 27 40 00       	mov    $0x40278e,%esi
  400fdd:	e8 5e fc ff ff       	callq  400c40 <__isoc99_sscanf@plt>
  400fe2:	83 f8 02             	cmp    $0x2,%eax
  400fe5:	7f 05                	jg     400fec <phase_3+0x37>
  400fe7:	e8 8a 07 00 00       	callq  401776 <explode_bomb>
  400fec:	83 7c 24 10 07       	cmpl   $0x7,0x10(%rsp)
  400ff1:	0f 87 f2 00 00 00    	ja     4010e9 <phase_3+0x134>
  400ff7:	8b 44 24 10          	mov    0x10(%rsp),%eax
  400ffb:	ff 24 c5 a0 27 40 00 	jmpq   *0x4027a0(,%rax,8)
  401002:	b8 7a 00 00 00       	mov    $0x7a,%eax
  401007:	83 7c 24 14 34       	cmpl   $0x34,0x14(%rsp)
  40100c:	0f 84 e1 00 00 00    	je     4010f3 <phase_3+0x13e>
  401012:	e8 5f 07 00 00       	callq  401776 <explode_bomb>
  401017:	b8 7a 00 00 00       	mov    $0x7a,%eax
  40101c:	e9 d2 00 00 00       	jmpq   4010f3 <phase_3+0x13e>
  401021:	b8 68 00 00 00       	mov    $0x68,%eax
  401026:	81 7c 24 14 27 01 00 	cmpl   $0x127,0x14(%rsp)
  40102d:	00 
  40102e:	0f 84 bf 00 00 00    	je     4010f3 <phase_3+0x13e>
  401034:	e8 3d 07 00 00       	callq  401776 <explode_bomb>
  401039:	b8 68 00 00 00       	mov    $0x68,%eax
  40103e:	e9 b0 00 00 00       	jmpq   4010f3 <phase_3+0x13e>
  401043:	b8 76 00 00 00       	mov    $0x76,%eax
  401048:	81 7c 24 14 2a 01 00 	cmpl   $0x12a,0x14(%rsp)
  40104f:	00 
  401050:	0f 84 9d 00 00 00    	je     4010f3 <phase_3+0x13e>
  401056:	e8 1b 07 00 00       	callq  401776 <explode_bomb>
  40105b:	b8 76 00 00 00       	mov    $0x76,%eax
  401060:	e9 8e 00 00 00       	jmpq   4010f3 <phase_3+0x13e>
  401065:	b8 66 00 00 00       	mov    $0x66,%eax
  40106a:	81 7c 24 14 12 01 00 	cmpl   $0x112,0x14(%rsp)
  401071:	00 
  401072:	74 7f                	je     4010f3 <phase_3+0x13e>
  401074:	e8 fd 06 00 00       	callq  401776 <explode_bomb>
  401079:	b8 66 00 00 00       	mov    $0x66,%eax
  40107e:	eb 73                	jmp    4010f3 <phase_3+0x13e>
  401080:	b8 69 00 00 00       	mov    $0x69,%eax
  401085:	83 7c 24 14 3d       	cmpl   $0x3d,0x14(%rsp)
  40108a:	74 67                	je     4010f3 <phase_3+0x13e>
  40108c:	e8 e5 06 00 00       	callq  401776 <explode_bomb>
  401091:	b8 69 00 00 00       	mov    $0x69,%eax
  401096:	eb 5b                	jmp    4010f3 <phase_3+0x13e>
  401098:	b8 6e 00 00 00       	mov    $0x6e,%eax
  40109d:	81 7c 24 14 89 00 00 	cmpl   $0x89,0x14(%rsp)
  4010a4:	00 
  4010a5:	74 4c                	je     4010f3 <phase_3+0x13e>
  4010a7:	e8 ca 06 00 00       	callq  401776 <explode_bomb>
  4010ac:	b8 6e 00 00 00       	mov    $0x6e,%eax
  4010b1:	eb 40                	jmp    4010f3 <phase_3+0x13e>
  4010b3:	b8 76 00 00 00       	mov    $0x76,%eax
  4010b8:	81 7c 24 14 b6 02 00 	cmpl   $0x2b6,0x14(%rsp)
  4010bf:	00 
  4010c0:	74 31                	je     4010f3 <phase_3+0x13e>
  4010c2:	e8 af 06 00 00       	callq  401776 <explode_bomb>
  4010c7:	b8 76 00 00 00       	mov    $0x76,%eax
  4010cc:	eb 25                	jmp    4010f3 <phase_3+0x13e>
  4010ce:	b8 6e 00 00 00       	mov    $0x6e,%eax
  4010d3:	81 7c 24 14 7c 01 00 	cmpl   $0x17c,0x14(%rsp)
  4010da:	00 
  4010db:	74 16                	je     4010f3 <phase_3+0x13e>
  4010dd:	e8 94 06 00 00       	callq  401776 <explode_bomb>
  4010e2:	b8 6e 00 00 00       	mov    $0x6e,%eax
  4010e7:	eb 0a                	jmp    4010f3 <phase_3+0x13e>
  4010e9:	e8 88 06 00 00       	callq  401776 <explode_bomb>
  4010ee:	b8 64 00 00 00       	mov    $0x64,%eax
  4010f3:	3a 44 24 0f          	cmp    0xf(%rsp),%al
  4010f7:	74 05                	je     4010fe <phase_3+0x149>
  4010f9:	e8 78 06 00 00       	callq  401776 <explode_bomb>
  4010fe:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  401103:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  40110a:	00 00 
  40110c:	74 05                	je     401113 <phase_3+0x15e>
  40110e:	e8 7d fa ff ff       	callq  400b90 <__stack_chk_fail@plt>
  401113:	48 83 c4 28          	add    $0x28,%rsp
  401117:	c3                   	retq   

0000000000401118 <func4>:
  401118:	85 ff                	test   %edi,%edi
  40111a:	7e 2b                	jle    401147 <func4+0x2f>
  40111c:	89 f0                	mov    %esi,%eax
  40111e:	83 ff 01             	cmp    $0x1,%edi
  401121:	74 2e                	je     401151 <func4+0x39>
  401123:	41 54                	push   %r12
  401125:	55                   	push   %rbp
  401126:	53                   	push   %rbx
  401127:	89 f5                	mov    %esi,%ebp
  401129:	89 fb                	mov    %edi,%ebx
  40112b:	8d 7f ff             	lea    -0x1(%rdi),%edi
  40112e:	e8 e5 ff ff ff       	callq  401118 <func4>
  401133:	44 8d 64 05 00       	lea    0x0(%rbp,%rax,1),%r12d
  401138:	8d 7b fe             	lea    -0x2(%rbx),%edi
  40113b:	89 ee                	mov    %ebp,%esi
  40113d:	e8 d6 ff ff ff       	callq  401118 <func4>
  401142:	44 01 e0             	add    %r12d,%eax
  401145:	eb 06                	jmp    40114d <func4+0x35>
  401147:	b8 00 00 00 00       	mov    $0x0,%eax
  40114c:	c3                   	retq   
  40114d:	5b                   	pop    %rbx
  40114e:	5d                   	pop    %rbp
  40114f:	41 5c                	pop    %r12
  401151:	f3 c3                	repz retq 

0000000000401153 <phase_4>:
  401153:	48 83 ec 18          	sub    $0x18,%rsp
  401157:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40115e:	00 00 
  401160:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  401165:	31 c0                	xor    %eax,%eax
  401167:	48 89 e1             	mov    %rsp,%rcx
  40116a:	48 8d 54 24 04       	lea    0x4(%rsp),%rdx
  40116f:	be 6d 2a 40 00       	mov    $0x402a6d,%esi
  401174:	e8 c7 fa ff ff       	callq  400c40 <__isoc99_sscanf@plt>
  401179:	83 f8 02             	cmp    $0x2,%eax
  40117c:	75 0b                	jne    401189 <phase_4+0x36>
  40117e:	8b 04 24             	mov    (%rsp),%eax
  401181:	83 e8 02             	sub    $0x2,%eax
  401184:	83 f8 02             	cmp    $0x2,%eax
  401187:	76 05                	jbe    40118e <phase_4+0x3b>
  401189:	e8 e8 05 00 00       	callq  401776 <explode_bomb>
  40118e:	8b 34 24             	mov    (%rsp),%esi
  401191:	bf 06 00 00 00       	mov    $0x6,%edi
  401196:	e8 7d ff ff ff       	callq  401118 <func4>
  40119b:	3b 44 24 04          	cmp    0x4(%rsp),%eax
  40119f:	74 05                	je     4011a6 <phase_4+0x53>
  4011a1:	e8 d0 05 00 00       	callq  401776 <explode_bomb>
  4011a6:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4011ab:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4011b2:	00 00 
  4011b4:	74 05                	je     4011bb <phase_4+0x68>
  4011b6:	e8 d5 f9 ff ff       	callq  400b90 <__stack_chk_fail@plt>
  4011bb:	48 83 c4 18          	add    $0x18,%rsp
  4011bf:	c3                   	retq   

00000000004011c0 <phase_5>:
  4011c0:	48 83 ec 18          	sub    $0x18,%rsp
  4011c4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4011cb:	00 00 
  4011cd:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4011d2:	31 c0                	xor    %eax,%eax
  4011d4:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
  4011d9:	48 89 e2             	mov    %rsp,%rdx
  4011dc:	be 6d 2a 40 00       	mov    $0x402a6d,%esi
  4011e1:	e8 5a fa ff ff       	callq  400c40 <__isoc99_sscanf@plt>
  4011e6:	83 f8 01             	cmp    $0x1,%eax
  4011e9:	7f 05                	jg     4011f0 <phase_5+0x30>
  4011eb:	e8 86 05 00 00       	callq  401776 <explode_bomb>
  4011f0:	8b 04 24             	mov    (%rsp),%eax
  4011f3:	83 e0 0f             	and    $0xf,%eax
  4011f6:	89 04 24             	mov    %eax,(%rsp)
  4011f9:	83 f8 0f             	cmp    $0xf,%eax
  4011fc:	74 2f                	je     40122d <phase_5+0x6d>
  4011fe:	b9 00 00 00 00       	mov    $0x0,%ecx
  401203:	ba 00 00 00 00       	mov    $0x0,%edx
  401208:	83 c2 01             	add    $0x1,%edx
  40120b:	48 98                	cltq   
  40120d:	8b 04 85 e0 27 40 00 	mov    0x4027e0(,%rax,4),%eax
  401214:	01 c1                	add    %eax,%ecx
  401216:	83 f8 0f             	cmp    $0xf,%eax
  401219:	75 ed                	jne    401208 <phase_5+0x48>
  40121b:	c7 04 24 0f 00 00 00 	movl   $0xf,(%rsp)
  401222:	83 fa 0f             	cmp    $0xf,%edx
  401225:	75 06                	jne    40122d <phase_5+0x6d>
  401227:	3b 4c 24 04          	cmp    0x4(%rsp),%ecx
  40122b:	74 05                	je     401232 <phase_5+0x72>
  40122d:	e8 44 05 00 00       	callq  401776 <explode_bomb>
  401232:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  401237:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  40123e:	00 00 
  401240:	74 05                	je     401247 <phase_5+0x87>
  401242:	e8 49 f9 ff ff       	callq  400b90 <__stack_chk_fail@plt>
  401247:	48 83 c4 18          	add    $0x18,%rsp
  40124b:	c3                   	retq   

000000000040124c <phase_6>:
  40124c:	41 56                	push   %r14
  40124e:	41 55                	push   %r13
  401250:	41 54                	push   %r12
  401252:	55                   	push   %rbp
  401253:	53                   	push   %rbx
  401254:	48 83 ec 60          	sub    $0x60,%rsp
  401258:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40125f:	00 00 
  401261:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  401266:	31 c0                	xor    %eax,%eax
  401268:	48 89 e6             	mov    %rsp,%rsi
  40126b:	e8 3c 05 00 00       	callq  4017ac <read_six_numbers>
  401270:	49 89 e4             	mov    %rsp,%r12
  401273:	49 89 e5             	mov    %rsp,%r13
  401276:	41 be 00 00 00 00    	mov    $0x0,%r14d
  40127c:	4c 89 ed             	mov    %r13,%rbp
  40127f:	41 8b 45 00          	mov    0x0(%r13),%eax
  401283:	83 e8 01             	sub    $0x1,%eax
  401286:	83 f8 05             	cmp    $0x5,%eax
  401289:	76 05                	jbe    401290 <phase_6+0x44>
  40128b:	e8 e6 04 00 00       	callq  401776 <explode_bomb>
  401290:	41 83 c6 01          	add    $0x1,%r14d
  401294:	41 83 fe 06          	cmp    $0x6,%r14d
  401298:	74 21                	je     4012bb <phase_6+0x6f>
  40129a:	44 89 f3             	mov    %r14d,%ebx
  40129d:	48 63 c3             	movslq %ebx,%rax
  4012a0:	8b 04 84             	mov    (%rsp,%rax,4),%eax
  4012a3:	39 45 00             	cmp    %eax,0x0(%rbp)
  4012a6:	75 05                	jne    4012ad <phase_6+0x61>
  4012a8:	e8 c9 04 00 00       	callq  401776 <explode_bomb>
  4012ad:	83 c3 01             	add    $0x1,%ebx
  4012b0:	83 fb 05             	cmp    $0x5,%ebx
  4012b3:	7e e8                	jle    40129d <phase_6+0x51>
  4012b5:	49 83 c5 04          	add    $0x4,%r13
  4012b9:	eb c1                	jmp    40127c <phase_6+0x30>
  4012bb:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  4012c0:	ba 07 00 00 00       	mov    $0x7,%edx
  4012c5:	89 d0                	mov    %edx,%eax
  4012c7:	41 2b 04 24          	sub    (%r12),%eax
  4012cb:	41 89 04 24          	mov    %eax,(%r12)
  4012cf:	49 83 c4 04          	add    $0x4,%r12
  4012d3:	4c 39 e1             	cmp    %r12,%rcx
  4012d6:	75 ed                	jne    4012c5 <phase_6+0x79>
  4012d8:	be 00 00 00 00       	mov    $0x0,%esi
  4012dd:	eb 1a                	jmp    4012f9 <phase_6+0xad>
  4012df:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  4012e3:	83 c0 01             	add    $0x1,%eax
  4012e6:	39 c8                	cmp    %ecx,%eax
  4012e8:	75 f5                	jne    4012df <phase_6+0x93>
  4012ea:	48 89 54 74 20       	mov    %rdx,0x20(%rsp,%rsi,2)
  4012ef:	48 83 c6 04          	add    $0x4,%rsi
  4012f3:	48 83 fe 18          	cmp    $0x18,%rsi
  4012f7:	74 14                	je     40130d <phase_6+0xc1>
  4012f9:	8b 0c 34             	mov    (%rsp,%rsi,1),%ecx
  4012fc:	b8 01 00 00 00       	mov    $0x1,%eax
  401301:	ba f0 42 60 00       	mov    $0x6042f0,%edx
  401306:	83 f9 01             	cmp    $0x1,%ecx
  401309:	7f d4                	jg     4012df <phase_6+0x93>
  40130b:	eb dd                	jmp    4012ea <phase_6+0x9e>
  40130d:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
  401312:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  401317:	48 8d 74 24 48       	lea    0x48(%rsp),%rsi
  40131c:	48 89 d9             	mov    %rbx,%rcx
  40131f:	48 8b 50 08          	mov    0x8(%rax),%rdx
  401323:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  401327:	48 83 c0 08          	add    $0x8,%rax
  40132b:	48 89 d1             	mov    %rdx,%rcx
  40132e:	48 39 c6             	cmp    %rax,%rsi
  401331:	75 ec                	jne    40131f <phase_6+0xd3>
  401333:	48 c7 42 08 00 00 00 	movq   $0x0,0x8(%rdx)
  40133a:	00 
  40133b:	bd 05 00 00 00       	mov    $0x5,%ebp
  401340:	48 8b 43 08          	mov    0x8(%rbx),%rax
  401344:	8b 00                	mov    (%rax),%eax
  401346:	39 03                	cmp    %eax,(%rbx)
  401348:	7d 05                	jge    40134f <phase_6+0x103>
  40134a:	e8 27 04 00 00       	callq  401776 <explode_bomb>
  40134f:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  401353:	83 ed 01             	sub    $0x1,%ebp
  401356:	75 e8                	jne    401340 <phase_6+0xf4>
  401358:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40135d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401364:	00 00 
  401366:	74 05                	je     40136d <phase_6+0x121>
  401368:	e8 23 f8 ff ff       	callq  400b90 <__stack_chk_fail@plt>
  40136d:	48 83 c4 60          	add    $0x60,%rsp
  401371:	5b                   	pop    %rbx
  401372:	5d                   	pop    %rbp
  401373:	41 5c                	pop    %r12
  401375:	41 5d                	pop    %r13
  401377:	41 5e                	pop    %r14
  401379:	c3                   	retq   

000000000040137a <fun7>:
  40137a:	48 83 ec 08          	sub    $0x8,%rsp
  40137e:	48 85 ff             	test   %rdi,%rdi
  401381:	74 2b                	je     4013ae <fun7+0x34>
  401383:	8b 17                	mov    (%rdi),%edx
  401385:	39 f2                	cmp    %esi,%edx
  401387:	7e 0d                	jle    401396 <fun7+0x1c>
  401389:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  40138d:	e8 e8 ff ff ff       	callq  40137a <fun7>
  401392:	01 c0                	add    %eax,%eax
  401394:	eb 1d                	jmp    4013b3 <fun7+0x39>
  401396:	b8 00 00 00 00       	mov    $0x0,%eax
  40139b:	39 f2                	cmp    %esi,%edx
  40139d:	74 14                	je     4013b3 <fun7+0x39>
  40139f:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
  4013a3:	e8 d2 ff ff ff       	callq  40137a <fun7>
  4013a8:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
  4013ac:	eb 05                	jmp    4013b3 <fun7+0x39>
  4013ae:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4013b3:	48 83 c4 08          	add    $0x8,%rsp
  4013b7:	c3                   	retq   

00000000004013b8 <secret_phase>:
  4013b8:	53                   	push   %rbx
  4013b9:	e8 2d 04 00 00       	callq  4017eb <read_line>
  4013be:	ba 0a 00 00 00       	mov    $0xa,%edx
  4013c3:	be 00 00 00 00       	mov    $0x0,%esi
  4013c8:	48 89 c7             	mov    %rax,%rdi
  4013cb:	e8 50 f8 ff ff       	callq  400c20 <strtol@plt>
  4013d0:	48 89 c3             	mov    %rax,%rbx
  4013d3:	8d 40 ff             	lea    -0x1(%rax),%eax
  4013d6:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  4013db:	76 05                	jbe    4013e2 <secret_phase+0x2a>
  4013dd:	e8 94 03 00 00       	callq  401776 <explode_bomb>
  4013e2:	89 de                	mov    %ebx,%esi
  4013e4:	bf 10 41 60 00       	mov    $0x604110,%edi
  4013e9:	e8 8c ff ff ff       	callq  40137a <fun7>
  4013ee:	83 f8 07             	cmp    $0x7,%eax
  4013f1:	74 05                	je     4013f8 <secret_phase+0x40>
  4013f3:	e8 7e 03 00 00       	callq  401776 <explode_bomb>
  4013f8:	bf 68 27 40 00       	mov    $0x402768,%edi
  4013fd:	e8 6e f7 ff ff       	callq  400b70 <puts@plt>
  401402:	e8 0a 05 00 00       	callq  401911 <phase_defused>
  401407:	5b                   	pop    %rbx
  401408:	c3                   	retq   

0000000000401409 <sig_handler>:
  401409:	48 83 ec 08          	sub    $0x8,%rsp
  40140d:	bf 20 28 40 00       	mov    $0x402820,%edi
  401412:	e8 59 f7 ff ff       	callq  400b70 <puts@plt>
  401417:	bf 03 00 00 00       	mov    $0x3,%edi
  40141c:	e8 8f f8 ff ff       	callq  400cb0 <sleep@plt>
  401421:	be e9 29 40 00       	mov    $0x4029e9,%esi
  401426:	bf 01 00 00 00       	mov    $0x1,%edi
  40142b:	b8 00 00 00 00       	mov    $0x0,%eax
  401430:	e8 1b f8 ff ff       	callq  400c50 <__printf_chk@plt>
  401435:	48 8b 3d 44 33 20 00 	mov    0x203344(%rip),%rdi        # 604780 <__TMC_END__>
  40143c:	e8 ef f7 ff ff       	callq  400c30 <fflush@plt>
  401441:	bf 01 00 00 00       	mov    $0x1,%edi
  401446:	e8 65 f8 ff ff       	callq  400cb0 <sleep@plt>
  40144b:	bf f1 29 40 00       	mov    $0x4029f1,%edi
  401450:	e8 1b f7 ff ff       	callq  400b70 <puts@plt>
  401455:	bf 10 00 00 00       	mov    $0x10,%edi
  40145a:	e8 21 f8 ff ff       	callq  400c80 <exit@plt>

000000000040145f <invalid_phase>:
  40145f:	48 83 ec 08          	sub    $0x8,%rsp
  401463:	48 89 fa             	mov    %rdi,%rdx
  401466:	be f9 29 40 00       	mov    $0x4029f9,%esi
  40146b:	bf 01 00 00 00       	mov    $0x1,%edi
  401470:	b8 00 00 00 00       	mov    $0x0,%eax
  401475:	e8 d6 f7 ff ff       	callq  400c50 <__printf_chk@plt>
  40147a:	bf 08 00 00 00       	mov    $0x8,%edi
  40147f:	e8 fc f7 ff ff       	callq  400c80 <exit@plt>

0000000000401484 <string_length>:
  401484:	80 3f 00             	cmpb   $0x0,(%rdi)
  401487:	74 13                	je     40149c <string_length+0x18>
  401489:	b8 00 00 00 00       	mov    $0x0,%eax
  40148e:	48 83 c7 01          	add    $0x1,%rdi
  401492:	83 c0 01             	add    $0x1,%eax
  401495:	80 3f 00             	cmpb   $0x0,(%rdi)
  401498:	75 f4                	jne    40148e <string_length+0xa>
  40149a:	f3 c3                	repz retq 
  40149c:	b8 00 00 00 00       	mov    $0x0,%eax
  4014a1:	c3                   	retq   

00000000004014a2 <strings_not_equal>:
  4014a2:	41 54                	push   %r12
  4014a4:	55                   	push   %rbp
  4014a5:	53                   	push   %rbx
  4014a6:	48 89 fb             	mov    %rdi,%rbx
  4014a9:	48 89 f5             	mov    %rsi,%rbp
  4014ac:	e8 d3 ff ff ff       	callq  401484 <string_length>
  4014b1:	41 89 c4             	mov    %eax,%r12d
  4014b4:	48 89 ef             	mov    %rbp,%rdi
  4014b7:	e8 c8 ff ff ff       	callq  401484 <string_length>
  4014bc:	ba 01 00 00 00       	mov    $0x1,%edx
  4014c1:	41 39 c4             	cmp    %eax,%r12d
  4014c4:	75 3c                	jne    401502 <strings_not_equal+0x60>
  4014c6:	0f b6 03             	movzbl (%rbx),%eax
  4014c9:	84 c0                	test   %al,%al
  4014cb:	74 22                	je     4014ef <strings_not_equal+0x4d>
  4014cd:	3a 45 00             	cmp    0x0(%rbp),%al
  4014d0:	74 07                	je     4014d9 <strings_not_equal+0x37>
  4014d2:	eb 22                	jmp    4014f6 <strings_not_equal+0x54>
  4014d4:	3a 45 00             	cmp    0x0(%rbp),%al
  4014d7:	75 24                	jne    4014fd <strings_not_equal+0x5b>
  4014d9:	48 83 c3 01          	add    $0x1,%rbx
  4014dd:	48 83 c5 01          	add    $0x1,%rbp
  4014e1:	0f b6 03             	movzbl (%rbx),%eax
  4014e4:	84 c0                	test   %al,%al
  4014e6:	75 ec                	jne    4014d4 <strings_not_equal+0x32>
  4014e8:	ba 00 00 00 00       	mov    $0x0,%edx
  4014ed:	eb 13                	jmp    401502 <strings_not_equal+0x60>
  4014ef:	ba 00 00 00 00       	mov    $0x0,%edx
  4014f4:	eb 0c                	jmp    401502 <strings_not_equal+0x60>
  4014f6:	ba 01 00 00 00       	mov    $0x1,%edx
  4014fb:	eb 05                	jmp    401502 <strings_not_equal+0x60>
  4014fd:	ba 01 00 00 00       	mov    $0x1,%edx
  401502:	89 d0                	mov    %edx,%eax
  401504:	5b                   	pop    %rbx
  401505:	5d                   	pop    %rbp
  401506:	41 5c                	pop    %r12
  401508:	c3                   	retq   

0000000000401509 <initialize_bomb>:
  401509:	53                   	push   %rbx
  40150a:	48 81 ec 50 20 00 00 	sub    $0x2050,%rsp
  401511:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401518:	00 00 
  40151a:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
  401521:	00 
  401522:	31 c0                	xor    %eax,%eax
  401524:	be 09 14 40 00       	mov    $0x401409,%esi
  401529:	bf 02 00 00 00       	mov    $0x2,%edi
  40152e:	e8 bd f6 ff ff       	callq  400bf0 <signal@plt>
  401533:	be 40 00 00 00       	mov    $0x40,%esi
  401538:	48 89 e7             	mov    %rsp,%rdi
  40153b:	e8 30 f7 ff ff       	callq  400c70 <gethostname@plt>
  401540:	85 c0                	test   %eax,%eax
  401542:	75 13                	jne    401557 <initialize_bomb+0x4e>
  401544:	48 8b 3d 35 2e 20 00 	mov    0x202e35(%rip),%rdi        # 604380 <host_table>
  40154b:	bb 88 43 60 00       	mov    $0x604388,%ebx
  401550:	48 85 ff             	test   %rdi,%rdi
  401553:	75 16                	jne    40156b <initialize_bomb+0x62>
  401555:	eb 52                	jmp    4015a9 <initialize_bomb+0xa0>
  401557:	bf 58 28 40 00       	mov    $0x402858,%edi
  40155c:	e8 0f f6 ff ff       	callq  400b70 <puts@plt>
  401561:	bf 08 00 00 00       	mov    $0x8,%edi
  401566:	e8 15 f7 ff ff       	callq  400c80 <exit@plt>
  40156b:	48 89 e6             	mov    %rsp,%rsi
  40156e:	e8 cd f5 ff ff       	callq  400b40 <strcasecmp@plt>
  401573:	85 c0                	test   %eax,%eax
  401575:	74 46                	je     4015bd <initialize_bomb+0xb4>
  401577:	48 83 c3 08          	add    $0x8,%rbx
  40157b:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
  40157f:	48 85 ff             	test   %rdi,%rdi
  401582:	75 e7                	jne    40156b <initialize_bomb+0x62>
  401584:	eb 23                	jmp    4015a9 <initialize_bomb+0xa0>
  401586:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
  40158b:	be 0a 2a 40 00       	mov    $0x402a0a,%esi
  401590:	bf 01 00 00 00       	mov    $0x1,%edi
  401595:	b8 00 00 00 00       	mov    $0x0,%eax
  40159a:	e8 b1 f6 ff ff       	callq  400c50 <__printf_chk@plt>
  40159f:	bf 08 00 00 00       	mov    $0x8,%edi
  4015a4:	e8 d7 f6 ff ff       	callq  400c80 <exit@plt>
  4015a9:	bf 90 28 40 00       	mov    $0x402890,%edi
  4015ae:	e8 bd f5 ff ff       	callq  400b70 <puts@plt>
  4015b3:	bf 08 00 00 00       	mov    $0x8,%edi
  4015b8:	e8 c3 f6 ff ff       	callq  400c80 <exit@plt>
  4015bd:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4015c2:	e8 49 0d 00 00       	callq  402310 <init_driver>
  4015c7:	85 c0                	test   %eax,%eax
  4015c9:	78 bb                	js     401586 <initialize_bomb+0x7d>
  4015cb:	48 8b 84 24 48 20 00 	mov    0x2048(%rsp),%rax
  4015d2:	00 
  4015d3:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4015da:	00 00 
  4015dc:	74 05                	je     4015e3 <initialize_bomb+0xda>
  4015de:	e8 ad f5 ff ff       	callq  400b90 <__stack_chk_fail@plt>
  4015e3:	48 81 c4 50 20 00 00 	add    $0x2050,%rsp
  4015ea:	5b                   	pop    %rbx
  4015eb:	c3                   	retq   

00000000004015ec <initialize_bomb_solve>:
  4015ec:	f3 c3                	repz retq 

00000000004015ee <blank_line>:
  4015ee:	55                   	push   %rbp
  4015ef:	53                   	push   %rbx
  4015f0:	48 83 ec 08          	sub    $0x8,%rsp
  4015f4:	48 89 fd             	mov    %rdi,%rbp
  4015f7:	eb 17                	jmp    401610 <blank_line+0x22>
  4015f9:	e8 c2 f6 ff ff       	callq  400cc0 <__ctype_b_loc@plt>
  4015fe:	48 83 c5 01          	add    $0x1,%rbp
  401602:	48 0f be db          	movsbq %bl,%rbx
  401606:	48 8b 00             	mov    (%rax),%rax
  401609:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
  40160e:	74 0f                	je     40161f <blank_line+0x31>
  401610:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
  401614:	84 db                	test   %bl,%bl
  401616:	75 e1                	jne    4015f9 <blank_line+0xb>
  401618:	b8 01 00 00 00       	mov    $0x1,%eax
  40161d:	eb 05                	jmp    401624 <blank_line+0x36>
  40161f:	b8 00 00 00 00       	mov    $0x0,%eax
  401624:	48 83 c4 08          	add    $0x8,%rsp
  401628:	5b                   	pop    %rbx
  401629:	5d                   	pop    %rbp
  40162a:	c3                   	retq   

000000000040162b <skip>:
  40162b:	53                   	push   %rbx
  40162c:	48 63 05 79 31 20 00 	movslq 0x203179(%rip),%rax        # 6047ac <num_input_strings>
  401633:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
  401637:	48 c1 e7 04          	shl    $0x4,%rdi
  40163b:	48 81 c7 c0 47 60 00 	add    $0x6047c0,%rdi
  401642:	48 8b 15 67 31 20 00 	mov    0x203167(%rip),%rdx        # 6047b0 <infile>
  401649:	be 50 00 00 00       	mov    $0x50,%esi
  40164e:	e8 8d f5 ff ff       	callq  400be0 <fgets@plt>
  401653:	48 89 c3             	mov    %rax,%rbx
  401656:	48 85 c0             	test   %rax,%rax
  401659:	74 0c                	je     401667 <skip+0x3c>
  40165b:	48 89 c7             	mov    %rax,%rdi
  40165e:	e8 8b ff ff ff       	callq  4015ee <blank_line>
  401663:	85 c0                	test   %eax,%eax
  401665:	75 c5                	jne    40162c <skip+0x1>
  401667:	48 89 d8             	mov    %rbx,%rax
  40166a:	5b                   	pop    %rbx
  40166b:	c3                   	retq   

000000000040166c <send_msg>:
  40166c:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  401673:	41 89 f8             	mov    %edi,%r8d
  401676:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40167d:	00 00 
  40167f:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401686:	00 
  401687:	31 c0                	xor    %eax,%eax
  401689:	8b 35 1d 31 20 00    	mov    0x20311d(%rip),%esi        # 6047ac <num_input_strings>
  40168f:	8d 46 ff             	lea    -0x1(%rsi),%eax
  401692:	48 98                	cltq   
  401694:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401698:	48 c1 e2 04          	shl    $0x4,%rdx
  40169c:	48 81 c2 c0 47 60 00 	add    $0x6047c0,%rdx
  4016a3:	b8 00 00 00 00       	mov    $0x0,%eax
  4016a8:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4016af:	48 89 d7             	mov    %rdx,%rdi
  4016b2:	f2 ae                	repnz scas %es:(%rdi),%al
  4016b4:	48 f7 d1             	not    %rcx
  4016b7:	48 83 c1 63          	add    $0x63,%rcx
  4016bb:	48 81 f9 00 20 00 00 	cmp    $0x2000,%rcx
  4016c2:	76 19                	jbe    4016dd <send_msg+0x71>
  4016c4:	be c8 28 40 00       	mov    $0x4028c8,%esi
  4016c9:	bf 01 00 00 00       	mov    $0x1,%edi
  4016ce:	e8 7d f5 ff ff       	callq  400c50 <__printf_chk@plt>
  4016d3:	bf 08 00 00 00       	mov    $0x8,%edi
  4016d8:	e8 a3 f5 ff ff       	callq  400c80 <exit@plt>
  4016dd:	45 85 c0             	test   %r8d,%r8d
  4016e0:	41 b9 2c 2a 40 00    	mov    $0x402a2c,%r9d
  4016e6:	b8 24 2a 40 00       	mov    $0x402a24,%eax
  4016eb:	4c 0f 45 c8          	cmovne %rax,%r9
  4016ef:	52                   	push   %rdx
  4016f0:	56                   	push   %rsi
  4016f1:	44 8b 05 80 2c 20 00 	mov    0x202c80(%rip),%r8d        # 604378 <bomb_id>
  4016f8:	b9 35 2a 40 00       	mov    $0x402a35,%ecx
  4016fd:	ba 00 20 00 00       	mov    $0x2000,%edx
  401702:	be 01 00 00 00       	mov    $0x1,%esi
  401707:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  40170c:	b8 00 00 00 00       	mov    $0x0,%eax
  401711:	e8 ba f5 ff ff       	callq  400cd0 <__sprintf_chk@plt>
  401716:	4c 8d 84 24 10 20 00 	lea    0x2010(%rsp),%r8
  40171d:	00 
  40171e:	b9 00 00 00 00       	mov    $0x0,%ecx
  401723:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
  401728:	be 50 43 60 00       	mov    $0x604350,%esi
  40172d:	bf 68 43 60 00       	mov    $0x604368,%edi
  401732:	e8 ae 0d 00 00       	callq  4024e5 <driver_post>
  401737:	48 83 c4 10          	add    $0x10,%rsp
  40173b:	85 c0                	test   %eax,%eax
  40173d:	79 17                	jns    401756 <send_msg+0xea>
  40173f:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
  401746:	00 
  401747:	e8 24 f4 ff ff       	callq  400b70 <puts@plt>
  40174c:	bf 00 00 00 00       	mov    $0x0,%edi
  401751:	e8 2a f5 ff ff       	callq  400c80 <exit@plt>
  401756:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  40175d:	00 
  40175e:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401765:	00 00 
  401767:	74 05                	je     40176e <send_msg+0x102>
  401769:	e8 22 f4 ff ff       	callq  400b90 <__stack_chk_fail@plt>
  40176e:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  401775:	c3                   	retq   

0000000000401776 <explode_bomb>:
  401776:	48 83 ec 08          	sub    $0x8,%rsp
  40177a:	bf 41 2a 40 00       	mov    $0x402a41,%edi
  40177f:	e8 ec f3 ff ff       	callq  400b70 <puts@plt>
  401784:	bf 4a 2a 40 00       	mov    $0x402a4a,%edi
  401789:	e8 e2 f3 ff ff       	callq  400b70 <puts@plt>
  40178e:	bf 00 00 00 00       	mov    $0x0,%edi
  401793:	e8 d4 fe ff ff       	callq  40166c <send_msg>
  401798:	bf f0 28 40 00       	mov    $0x4028f0,%edi
  40179d:	e8 ce f3 ff ff       	callq  400b70 <puts@plt>
  4017a2:	bf 08 00 00 00       	mov    $0x8,%edi
  4017a7:	e8 d4 f4 ff ff       	callq  400c80 <exit@plt>

00000000004017ac <read_six_numbers>:
  4017ac:	48 83 ec 08          	sub    $0x8,%rsp
  4017b0:	48 89 f2             	mov    %rsi,%rdx
  4017b3:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
  4017b7:	48 8d 46 14          	lea    0x14(%rsi),%rax
  4017bb:	50                   	push   %rax
  4017bc:	48 8d 46 10          	lea    0x10(%rsi),%rax
  4017c0:	50                   	push   %rax
  4017c1:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
  4017c5:	4c 8d 46 08          	lea    0x8(%rsi),%r8
  4017c9:	be 61 2a 40 00       	mov    $0x402a61,%esi
  4017ce:	b8 00 00 00 00       	mov    $0x0,%eax
  4017d3:	e8 68 f4 ff ff       	callq  400c40 <__isoc99_sscanf@plt>
  4017d8:	48 83 c4 10          	add    $0x10,%rsp
  4017dc:	83 f8 05             	cmp    $0x5,%eax
  4017df:	7f 05                	jg     4017e6 <read_six_numbers+0x3a>
  4017e1:	e8 90 ff ff ff       	callq  401776 <explode_bomb>
  4017e6:	48 83 c4 08          	add    $0x8,%rsp
  4017ea:	c3                   	retq   

00000000004017eb <read_line>:
  4017eb:	48 83 ec 08          	sub    $0x8,%rsp
  4017ef:	b8 00 00 00 00       	mov    $0x0,%eax
  4017f4:	e8 32 fe ff ff       	callq  40162b <skip>
  4017f9:	48 85 c0             	test   %rax,%rax
  4017fc:	75 6e                	jne    40186c <read_line+0x81>
  4017fe:	48 8b 05 8b 2f 20 00 	mov    0x202f8b(%rip),%rax        # 604790 <stdin@@GLIBC_2.2.5>
  401805:	48 39 05 a4 2f 20 00 	cmp    %rax,0x202fa4(%rip)        # 6047b0 <infile>
  40180c:	75 14                	jne    401822 <read_line+0x37>
  40180e:	bf 73 2a 40 00       	mov    $0x402a73,%edi
  401813:	e8 58 f3 ff ff       	callq  400b70 <puts@plt>
  401818:	bf 08 00 00 00       	mov    $0x8,%edi
  40181d:	e8 5e f4 ff ff       	callq  400c80 <exit@plt>
  401822:	bf 91 2a 40 00       	mov    $0x402a91,%edi
  401827:	e8 04 f3 ff ff       	callq  400b30 <getenv@plt>
  40182c:	48 85 c0             	test   %rax,%rax
  40182f:	74 0a                	je     40183b <read_line+0x50>
  401831:	bf 00 00 00 00       	mov    $0x0,%edi
  401836:	e8 45 f4 ff ff       	callq  400c80 <exit@plt>
  40183b:	48 8b 05 4e 2f 20 00 	mov    0x202f4e(%rip),%rax        # 604790 <stdin@@GLIBC_2.2.5>
  401842:	48 89 05 67 2f 20 00 	mov    %rax,0x202f67(%rip)        # 6047b0 <infile>
  401849:	b8 00 00 00 00       	mov    $0x0,%eax
  40184e:	e8 d8 fd ff ff       	callq  40162b <skip>
  401853:	48 85 c0             	test   %rax,%rax
  401856:	75 14                	jne    40186c <read_line+0x81>
  401858:	bf 73 2a 40 00       	mov    $0x402a73,%edi
  40185d:	e8 0e f3 ff ff       	callq  400b70 <puts@plt>
  401862:	bf 00 00 00 00       	mov    $0x0,%edi
  401867:	e8 14 f4 ff ff       	callq  400c80 <exit@plt>
  40186c:	8b 35 3a 2f 20 00    	mov    0x202f3a(%rip),%esi        # 6047ac <num_input_strings>
  401872:	48 63 c6             	movslq %esi,%rax
  401875:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401879:	48 c1 e2 04          	shl    $0x4,%rdx
  40187d:	48 81 c2 c0 47 60 00 	add    $0x6047c0,%rdx
  401884:	b8 00 00 00 00       	mov    $0x0,%eax
  401889:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401890:	48 89 d7             	mov    %rdx,%rdi
  401893:	f2 ae                	repnz scas %es:(%rdi),%al
  401895:	48 f7 d1             	not    %rcx
  401898:	48 83 e9 01          	sub    $0x1,%rcx
  40189c:	83 f9 4e             	cmp    $0x4e,%ecx
  40189f:	7e 46                	jle    4018e7 <read_line+0xfc>
  4018a1:	bf 9c 2a 40 00       	mov    $0x402a9c,%edi
  4018a6:	e8 c5 f2 ff ff       	callq  400b70 <puts@plt>
  4018ab:	8b 05 fb 2e 20 00    	mov    0x202efb(%rip),%eax        # 6047ac <num_input_strings>
  4018b1:	8d 50 01             	lea    0x1(%rax),%edx
  4018b4:	89 15 f2 2e 20 00    	mov    %edx,0x202ef2(%rip)        # 6047ac <num_input_strings>
  4018ba:	48 98                	cltq   
  4018bc:	48 6b c0 50          	imul   $0x50,%rax,%rax
  4018c0:	48 bf 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rdi
  4018c7:	75 6e 63 
  4018ca:	48 89 b8 c0 47 60 00 	mov    %rdi,0x6047c0(%rax)
  4018d1:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
  4018d8:	2a 2a 00 
  4018db:	48 89 b8 c8 47 60 00 	mov    %rdi,0x6047c8(%rax)
  4018e2:	e8 8f fe ff ff       	callq  401776 <explode_bomb>
  4018e7:	83 e9 01             	sub    $0x1,%ecx
  4018ea:	48 63 c9             	movslq %ecx,%rcx
  4018ed:	48 63 c6             	movslq %esi,%rax
  4018f0:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4018f4:	48 c1 e0 04          	shl    $0x4,%rax
  4018f8:	c6 84 01 c0 47 60 00 	movb   $0x0,0x6047c0(%rcx,%rax,1)
  4018ff:	00 
  401900:	8d 46 01             	lea    0x1(%rsi),%eax
  401903:	89 05 a3 2e 20 00    	mov    %eax,0x202ea3(%rip)        # 6047ac <num_input_strings>
  401909:	48 89 d0             	mov    %rdx,%rax
  40190c:	48 83 c4 08          	add    $0x8,%rsp
  401910:	c3                   	retq   

0000000000401911 <phase_defused>:
  401911:	48 83 ec 78          	sub    $0x78,%rsp
  401915:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40191c:	00 00 
  40191e:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
  401923:	31 c0                	xor    %eax,%eax
  401925:	bf 01 00 00 00       	mov    $0x1,%edi
  40192a:	e8 3d fd ff ff       	callq  40166c <send_msg>
  40192f:	83 3d 76 2e 20 00 06 	cmpl   $0x6,0x202e76(%rip)        # 6047ac <num_input_strings>
  401936:	75 6d                	jne    4019a5 <phase_defused+0x94>
  401938:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  40193d:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
  401942:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  401947:	be b7 2a 40 00       	mov    $0x402ab7,%esi
  40194c:	bf b0 48 60 00       	mov    $0x6048b0,%edi
  401951:	b8 00 00 00 00       	mov    $0x0,%eax
  401956:	e8 e5 f2 ff ff       	callq  400c40 <__isoc99_sscanf@plt>
  40195b:	83 f8 03             	cmp    $0x3,%eax
  40195e:	75 31                	jne    401991 <phase_defused+0x80>
  401960:	be c0 2a 40 00       	mov    $0x402ac0,%esi
  401965:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  40196a:	e8 33 fb ff ff       	callq  4014a2 <strings_not_equal>
  40196f:	85 c0                	test   %eax,%eax
  401971:	75 1e                	jne    401991 <phase_defused+0x80>
  401973:	bf 18 29 40 00       	mov    $0x402918,%edi
  401978:	e8 f3 f1 ff ff       	callq  400b70 <puts@plt>
  40197d:	bf 40 29 40 00       	mov    $0x402940,%edi
  401982:	e8 e9 f1 ff ff       	callq  400b70 <puts@plt>
  401987:	b8 00 00 00 00       	mov    $0x0,%eax
  40198c:	e8 27 fa ff ff       	callq  4013b8 <secret_phase>
  401991:	bf 78 29 40 00       	mov    $0x402978,%edi
  401996:	e8 d5 f1 ff ff       	callq  400b70 <puts@plt>
  40199b:	bf a8 29 40 00       	mov    $0x4029a8,%edi
  4019a0:	e8 cb f1 ff ff       	callq  400b70 <puts@plt>
  4019a5:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
  4019aa:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4019b1:	00 00 
  4019b3:	74 05                	je     4019ba <phase_defused+0xa9>
  4019b5:	e8 d6 f1 ff ff       	callq  400b90 <__stack_chk_fail@plt>
  4019ba:	48 83 c4 78          	add    $0x78,%rsp
  4019be:	c3                   	retq   

00000000004019bf <sigalrm_handler>:
  4019bf:	48 83 ec 08          	sub    $0x8,%rsp
  4019c3:	b9 00 00 00 00       	mov    $0x0,%ecx
  4019c8:	ba 48 2b 40 00       	mov    $0x402b48,%edx
  4019cd:	be 01 00 00 00       	mov    $0x1,%esi
  4019d2:	48 8b 3d c7 2d 20 00 	mov    0x202dc7(%rip),%rdi        # 6047a0 <stderr@@GLIBC_2.2.5>
  4019d9:	b8 00 00 00 00       	mov    $0x0,%eax
  4019de:	e8 bd f2 ff ff       	callq  400ca0 <__fprintf_chk@plt>
  4019e3:	bf 01 00 00 00       	mov    $0x1,%edi
  4019e8:	e8 93 f2 ff ff       	callq  400c80 <exit@plt>

00000000004019ed <rio_readlineb>:
  4019ed:	41 56                	push   %r14
  4019ef:	41 55                	push   %r13
  4019f1:	41 54                	push   %r12
  4019f3:	55                   	push   %rbp
  4019f4:	53                   	push   %rbx
  4019f5:	48 83 ec 10          	sub    $0x10,%rsp
  4019f9:	48 89 fb             	mov    %rdi,%rbx
  4019fc:	49 89 f5             	mov    %rsi,%r13
  4019ff:	49 89 d6             	mov    %rdx,%r14
  401a02:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401a09:	00 00 
  401a0b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  401a10:	31 c0                	xor    %eax,%eax
  401a12:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  401a18:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
  401a1c:	48 83 fa 01          	cmp    $0x1,%rdx
  401a20:	77 2c                	ja     401a4e <rio_readlineb+0x61>
  401a22:	eb 6d                	jmp    401a91 <rio_readlineb+0xa4>
  401a24:	ba 00 20 00 00       	mov    $0x2000,%edx
  401a29:	48 89 ee             	mov    %rbp,%rsi
  401a2c:	8b 3b                	mov    (%rbx),%edi
  401a2e:	e8 8d f1 ff ff       	callq  400bc0 <read@plt>
  401a33:	89 43 04             	mov    %eax,0x4(%rbx)
  401a36:	85 c0                	test   %eax,%eax
  401a38:	79 0c                	jns    401a46 <rio_readlineb+0x59>
  401a3a:	e8 11 f1 ff ff       	callq  400b50 <__errno_location@plt>
  401a3f:	83 38 04             	cmpl   $0x4,(%rax)
  401a42:	74 0a                	je     401a4e <rio_readlineb+0x61>
  401a44:	eb 6c                	jmp    401ab2 <rio_readlineb+0xc5>
  401a46:	85 c0                	test   %eax,%eax
  401a48:	74 71                	je     401abb <rio_readlineb+0xce>
  401a4a:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  401a4e:	8b 43 04             	mov    0x4(%rbx),%eax
  401a51:	85 c0                	test   %eax,%eax
  401a53:	7e cf                	jle    401a24 <rio_readlineb+0x37>
  401a55:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  401a59:	0f b6 0a             	movzbl (%rdx),%ecx
  401a5c:	88 4c 24 07          	mov    %cl,0x7(%rsp)
  401a60:	48 83 c2 01          	add    $0x1,%rdx
  401a64:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  401a68:	83 e8 01             	sub    $0x1,%eax
  401a6b:	89 43 04             	mov    %eax,0x4(%rbx)
  401a6e:	49 83 c5 01          	add    $0x1,%r13
  401a72:	41 88 4d ff          	mov    %cl,-0x1(%r13)
  401a76:	80 f9 0a             	cmp    $0xa,%cl
  401a79:	75 0a                	jne    401a85 <rio_readlineb+0x98>
  401a7b:	eb 14                	jmp    401a91 <rio_readlineb+0xa4>
  401a7d:	41 83 fc 01          	cmp    $0x1,%r12d
  401a81:	75 0e                	jne    401a91 <rio_readlineb+0xa4>
  401a83:	eb 16                	jmp    401a9b <rio_readlineb+0xae>
  401a85:	41 83 c4 01          	add    $0x1,%r12d
  401a89:	49 63 c4             	movslq %r12d,%rax
  401a8c:	4c 39 f0             	cmp    %r14,%rax
  401a8f:	72 bd                	jb     401a4e <rio_readlineb+0x61>
  401a91:	41 c6 45 00 00       	movb   $0x0,0x0(%r13)
  401a96:	49 63 c4             	movslq %r12d,%rax
  401a99:	eb 05                	jmp    401aa0 <rio_readlineb+0xb3>
  401a9b:	b8 00 00 00 00       	mov    $0x0,%eax
  401aa0:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  401aa5:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  401aac:	00 00 
  401aae:	74 22                	je     401ad2 <rio_readlineb+0xe5>
  401ab0:	eb 1b                	jmp    401acd <rio_readlineb+0xe0>
  401ab2:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401ab9:	eb 05                	jmp    401ac0 <rio_readlineb+0xd3>
  401abb:	b8 00 00 00 00       	mov    $0x0,%eax
  401ac0:	85 c0                	test   %eax,%eax
  401ac2:	74 b9                	je     401a7d <rio_readlineb+0x90>
  401ac4:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401acb:	eb d3                	jmp    401aa0 <rio_readlineb+0xb3>
  401acd:	e8 be f0 ff ff       	callq  400b90 <__stack_chk_fail@plt>
  401ad2:	48 83 c4 10          	add    $0x10,%rsp
  401ad6:	5b                   	pop    %rbx
  401ad7:	5d                   	pop    %rbp
  401ad8:	41 5c                	pop    %r12
  401ada:	41 5d                	pop    %r13
  401adc:	41 5e                	pop    %r14
  401ade:	c3                   	retq   

0000000000401adf <submitr>:
  401adf:	41 57                	push   %r15
  401ae1:	41 56                	push   %r14
  401ae3:	41 55                	push   %r13
  401ae5:	41 54                	push   %r12
  401ae7:	55                   	push   %rbp
  401ae8:	53                   	push   %rbx
  401ae9:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  401af0:	49 89 fd             	mov    %rdi,%r13
  401af3:	89 f5                	mov    %esi,%ebp
  401af5:	48 89 14 24          	mov    %rdx,(%rsp)
  401af9:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  401afe:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  401b03:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
  401b08:	48 8b 9c 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbx
  401b0f:	00 
  401b10:	4c 8b bc 24 a8 a0 00 	mov    0xa0a8(%rsp),%r15
  401b17:	00 
  401b18:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401b1f:	00 00 
  401b21:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  401b28:	00 
  401b29:	31 c0                	xor    %eax,%eax
  401b2b:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  401b32:	00 
  401b33:	ba 00 00 00 00       	mov    $0x0,%edx
  401b38:	be 01 00 00 00       	mov    $0x1,%esi
  401b3d:	bf 02 00 00 00       	mov    $0x2,%edi
  401b42:	e8 99 f1 ff ff       	callq  400ce0 <socket@plt>
  401b47:	85 c0                	test   %eax,%eax
  401b49:	79 50                	jns    401b9b <submitr+0xbc>
  401b4b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401b52:	3a 20 43 
  401b55:	49 89 07             	mov    %rax,(%r15)
  401b58:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401b5f:	20 75 6e 
  401b62:	49 89 47 08          	mov    %rax,0x8(%r15)
  401b66:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401b6d:	74 6f 20 
  401b70:	49 89 47 10          	mov    %rax,0x10(%r15)
  401b74:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  401b7b:	65 20 73 
  401b7e:	49 89 47 18          	mov    %rax,0x18(%r15)
  401b82:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
  401b89:	65 
  401b8a:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
  401b91:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401b96:	e9 12 06 00 00       	jmpq   4021ad <submitr+0x6ce>
  401b9b:	41 89 c4             	mov    %eax,%r12d
  401b9e:	4c 89 ef             	mov    %r13,%rdi
  401ba1:	e8 5a f0 ff ff       	callq  400c00 <gethostbyname@plt>
  401ba6:	48 85 c0             	test   %rax,%rax
  401ba9:	75 6b                	jne    401c16 <submitr+0x137>
  401bab:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  401bb2:	3a 20 44 
  401bb5:	49 89 07             	mov    %rax,(%r15)
  401bb8:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  401bbf:	20 75 6e 
  401bc2:	49 89 47 08          	mov    %rax,0x8(%r15)
  401bc6:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401bcd:	74 6f 20 
  401bd0:	49 89 47 10          	mov    %rax,0x10(%r15)
  401bd4:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  401bdb:	76 65 20 
  401bde:	49 89 47 18          	mov    %rax,0x18(%r15)
  401be2:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  401be9:	72 20 61 
  401bec:	49 89 47 20          	mov    %rax,0x20(%r15)
  401bf0:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
  401bf7:	65 
  401bf8:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
  401bff:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
  401c04:	44 89 e7             	mov    %r12d,%edi
  401c07:	e8 a4 ef ff ff       	callq  400bb0 <close@plt>
  401c0c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401c11:	e9 97 05 00 00       	jmpq   4021ad <submitr+0x6ce>
  401c16:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  401c1d:	00 00 
  401c1f:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  401c26:	00 00 
  401c28:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  401c2f:	48 63 50 14          	movslq 0x14(%rax),%rdx
  401c33:	48 8b 40 18          	mov    0x18(%rax),%rax
  401c37:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  401c3c:	b9 0c 00 00 00       	mov    $0xc,%ecx
  401c41:	48 8b 30             	mov    (%rax),%rsi
  401c44:	e8 c7 ef ff ff       	callq  400c10 <__memmove_chk@plt>
  401c49:	66 c1 cd 08          	ror    $0x8,%bp
  401c4d:	66 89 6c 24 32       	mov    %bp,0x32(%rsp)
  401c52:	ba 10 00 00 00       	mov    $0x10,%edx
  401c57:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  401c5c:	44 89 e7             	mov    %r12d,%edi
  401c5f:	e8 2c f0 ff ff       	callq  400c90 <connect@plt>
  401c64:	85 c0                	test   %eax,%eax
  401c66:	79 5d                	jns    401cc5 <submitr+0x1e6>
  401c68:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  401c6f:	3a 20 55 
  401c72:	49 89 07             	mov    %rax,(%r15)
  401c75:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  401c7c:	20 74 6f 
  401c7f:	49 89 47 08          	mov    %rax,0x8(%r15)
  401c83:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  401c8a:	65 63 74 
  401c8d:	49 89 47 10          	mov    %rax,0x10(%r15)
  401c91:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  401c98:	68 65 20 
  401c9b:	49 89 47 18          	mov    %rax,0x18(%r15)
  401c9f:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
  401ca6:	76 
  401ca7:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
  401cae:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
  401cb3:	44 89 e7             	mov    %r12d,%edi
  401cb6:	e8 f5 ee ff ff       	callq  400bb0 <close@plt>
  401cbb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401cc0:	e9 e8 04 00 00       	jmpq   4021ad <submitr+0x6ce>
  401cc5:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
  401ccc:	b8 00 00 00 00       	mov    $0x0,%eax
  401cd1:	4c 89 c9             	mov    %r9,%rcx
  401cd4:	48 89 df             	mov    %rbx,%rdi
  401cd7:	f2 ae                	repnz scas %es:(%rdi),%al
  401cd9:	48 f7 d1             	not    %rcx
  401cdc:	48 89 ce             	mov    %rcx,%rsi
  401cdf:	4c 89 c9             	mov    %r9,%rcx
  401ce2:	48 8b 3c 24          	mov    (%rsp),%rdi
  401ce6:	f2 ae                	repnz scas %es:(%rdi),%al
  401ce8:	49 89 c8             	mov    %rcx,%r8
  401ceb:	4c 89 c9             	mov    %r9,%rcx
  401cee:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  401cf3:	f2 ae                	repnz scas %es:(%rdi),%al
  401cf5:	48 f7 d1             	not    %rcx
  401cf8:	48 89 ca             	mov    %rcx,%rdx
  401cfb:	4c 89 c9             	mov    %r9,%rcx
  401cfe:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  401d03:	f2 ae                	repnz scas %es:(%rdi),%al
  401d05:	4c 29 c2             	sub    %r8,%rdx
  401d08:	48 29 ca             	sub    %rcx,%rdx
  401d0b:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
  401d10:	48 8d 44 02 7b       	lea    0x7b(%rdx,%rax,1),%rax
  401d15:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  401d1b:	76 73                	jbe    401d90 <submitr+0x2b1>
  401d1d:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  401d24:	3a 20 52 
  401d27:	49 89 07             	mov    %rax,(%r15)
  401d2a:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  401d31:	20 73 74 
  401d34:	49 89 47 08          	mov    %rax,0x8(%r15)
  401d38:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  401d3f:	74 6f 6f 
  401d42:	49 89 47 10          	mov    %rax,0x10(%r15)
  401d46:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  401d4d:	65 2e 20 
  401d50:	49 89 47 18          	mov    %rax,0x18(%r15)
  401d54:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  401d5b:	61 73 65 
  401d5e:	49 89 47 20          	mov    %rax,0x20(%r15)
  401d62:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  401d69:	49 54 52 
  401d6c:	49 89 47 28          	mov    %rax,0x28(%r15)
  401d70:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  401d77:	55 46 00 
  401d7a:	49 89 47 30          	mov    %rax,0x30(%r15)
  401d7e:	44 89 e7             	mov    %r12d,%edi
  401d81:	e8 2a ee ff ff       	callq  400bb0 <close@plt>
  401d86:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401d8b:	e9 1d 04 00 00       	jmpq   4021ad <submitr+0x6ce>
  401d90:	48 8d 94 24 50 40 00 	lea    0x4050(%rsp),%rdx
  401d97:	00 
  401d98:	b9 00 04 00 00       	mov    $0x400,%ecx
  401d9d:	b8 00 00 00 00       	mov    $0x0,%eax
  401da2:	48 89 d7             	mov    %rdx,%rdi
  401da5:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  401da8:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401daf:	48 89 df             	mov    %rbx,%rdi
  401db2:	f2 ae                	repnz scas %es:(%rdi),%al
  401db4:	48 89 c8             	mov    %rcx,%rax
  401db7:	48 f7 d0             	not    %rax
  401dba:	48 83 e8 01          	sub    $0x1,%rax
  401dbe:	85 c0                	test   %eax,%eax
  401dc0:	0f 84 90 04 00 00    	je     402256 <submitr+0x777>
  401dc6:	8d 40 ff             	lea    -0x1(%rax),%eax
  401dc9:	4c 8d 74 03 01       	lea    0x1(%rbx,%rax,1),%r14
  401dce:	48 89 d5             	mov    %rdx,%rbp
  401dd1:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
  401dd8:	00 20 00 
  401ddb:	44 0f b6 03          	movzbl (%rbx),%r8d
  401ddf:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
  401de3:	3c 35                	cmp    $0x35,%al
  401de5:	77 06                	ja     401ded <submitr+0x30e>
  401de7:	49 0f a3 c5          	bt     %rax,%r13
  401deb:	72 0d                	jb     401dfa <submitr+0x31b>
  401ded:	44 89 c0             	mov    %r8d,%eax
  401df0:	83 e0 df             	and    $0xffffffdf,%eax
  401df3:	83 e8 41             	sub    $0x41,%eax
  401df6:	3c 19                	cmp    $0x19,%al
  401df8:	77 0a                	ja     401e04 <submitr+0x325>
  401dfa:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  401dfe:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401e02:	eb 6c                	jmp    401e70 <submitr+0x391>
  401e04:	41 80 f8 20          	cmp    $0x20,%r8b
  401e08:	75 0a                	jne    401e14 <submitr+0x335>
  401e0a:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  401e0e:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401e12:	eb 5c                	jmp    401e70 <submitr+0x391>
  401e14:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  401e18:	3c 5f                	cmp    $0x5f,%al
  401e1a:	76 0a                	jbe    401e26 <submitr+0x347>
  401e1c:	41 80 f8 09          	cmp    $0x9,%r8b
  401e20:	0f 85 a3 03 00 00    	jne    4021c9 <submitr+0x6ea>
  401e26:	45 0f b6 c0          	movzbl %r8b,%r8d
  401e2a:	b9 20 2c 40 00       	mov    $0x402c20,%ecx
  401e2f:	ba 08 00 00 00       	mov    $0x8,%edx
  401e34:	be 01 00 00 00       	mov    $0x1,%esi
  401e39:	48 8d bc 24 50 80 00 	lea    0x8050(%rsp),%rdi
  401e40:	00 
  401e41:	b8 00 00 00 00       	mov    $0x0,%eax
  401e46:	e8 85 ee ff ff       	callq  400cd0 <__sprintf_chk@plt>
  401e4b:	0f b6 84 24 50 80 00 	movzbl 0x8050(%rsp),%eax
  401e52:	00 
  401e53:	88 45 00             	mov    %al,0x0(%rbp)
  401e56:	0f b6 84 24 51 80 00 	movzbl 0x8051(%rsp),%eax
  401e5d:	00 
  401e5e:	88 45 01             	mov    %al,0x1(%rbp)
  401e61:	0f b6 84 24 52 80 00 	movzbl 0x8052(%rsp),%eax
  401e68:	00 
  401e69:	88 45 02             	mov    %al,0x2(%rbp)
  401e6c:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  401e70:	48 83 c3 01          	add    $0x1,%rbx
  401e74:	49 39 de             	cmp    %rbx,%r14
  401e77:	0f 85 5e ff ff ff    	jne    401ddb <submitr+0x2fc>
  401e7d:	e9 d4 03 00 00       	jmpq   402256 <submitr+0x777>
  401e82:	48 89 da             	mov    %rbx,%rdx
  401e85:	48 89 ee             	mov    %rbp,%rsi
  401e88:	44 89 e7             	mov    %r12d,%edi
  401e8b:	e8 f0 ec ff ff       	callq  400b80 <write@plt>
  401e90:	48 85 c0             	test   %rax,%rax
  401e93:	7f 0f                	jg     401ea4 <submitr+0x3c5>
  401e95:	e8 b6 ec ff ff       	callq  400b50 <__errno_location@plt>
  401e9a:	83 38 04             	cmpl   $0x4,(%rax)
  401e9d:	75 12                	jne    401eb1 <submitr+0x3d2>
  401e9f:	b8 00 00 00 00       	mov    $0x0,%eax
  401ea4:	48 01 c5             	add    %rax,%rbp
  401ea7:	48 29 c3             	sub    %rax,%rbx
  401eaa:	75 d6                	jne    401e82 <submitr+0x3a3>
  401eac:	4d 85 ed             	test   %r13,%r13
  401eaf:	79 5f                	jns    401f10 <submitr+0x431>
  401eb1:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401eb8:	3a 20 43 
  401ebb:	49 89 07             	mov    %rax,(%r15)
  401ebe:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401ec5:	20 75 6e 
  401ec8:	49 89 47 08          	mov    %rax,0x8(%r15)
  401ecc:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401ed3:	74 6f 20 
  401ed6:	49 89 47 10          	mov    %rax,0x10(%r15)
  401eda:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  401ee1:	20 74 6f 
  401ee4:	49 89 47 18          	mov    %rax,0x18(%r15)
  401ee8:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
  401eef:	73 65 72 
  401ef2:	49 89 47 20          	mov    %rax,0x20(%r15)
  401ef6:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
  401efd:	00 
  401efe:	44 89 e7             	mov    %r12d,%edi
  401f01:	e8 aa ec ff ff       	callq  400bb0 <close@plt>
  401f06:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401f0b:	e9 9d 02 00 00       	jmpq   4021ad <submitr+0x6ce>
  401f10:	44 89 64 24 40       	mov    %r12d,0x40(%rsp)
  401f15:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%rsp)
  401f1c:	00 
  401f1d:	48 8d 44 24 50       	lea    0x50(%rsp),%rax
  401f22:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  401f27:	ba 00 20 00 00       	mov    $0x2000,%edx
  401f2c:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  401f33:	00 
  401f34:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  401f39:	e8 af fa ff ff       	callq  4019ed <rio_readlineb>
  401f3e:	48 85 c0             	test   %rax,%rax
  401f41:	7f 74                	jg     401fb7 <submitr+0x4d8>
  401f43:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401f4a:	3a 20 43 
  401f4d:	49 89 07             	mov    %rax,(%r15)
  401f50:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401f57:	20 75 6e 
  401f5a:	49 89 47 08          	mov    %rax,0x8(%r15)
  401f5e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401f65:	74 6f 20 
  401f68:	49 89 47 10          	mov    %rax,0x10(%r15)
  401f6c:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  401f73:	66 69 72 
  401f76:	49 89 47 18          	mov    %rax,0x18(%r15)
  401f7a:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  401f81:	61 64 65 
  401f84:	49 89 47 20          	mov    %rax,0x20(%r15)
  401f88:	48 b8 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rax
  401f8f:	6d 20 73 
  401f92:	49 89 47 28          	mov    %rax,0x28(%r15)
  401f96:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
  401f9d:	65 
  401f9e:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
  401fa5:	44 89 e7             	mov    %r12d,%edi
  401fa8:	e8 03 ec ff ff       	callq  400bb0 <close@plt>
  401fad:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401fb2:	e9 f6 01 00 00       	jmpq   4021ad <submitr+0x6ce>
  401fb7:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  401fbe:	00 
  401fbf:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  401fc4:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  401fcb:	00 
  401fcc:	be 27 2c 40 00       	mov    $0x402c27,%esi
  401fd1:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  401fd8:	00 
  401fd9:	b8 00 00 00 00       	mov    $0x0,%eax
  401fde:	e8 5d ec ff ff       	callq  400c40 <__isoc99_sscanf@plt>
  401fe3:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  401fe8:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  401fef:	0f 84 be 00 00 00    	je     4020b3 <submitr+0x5d4>
  401ff5:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  401ffc:	00 
  401ffd:	b9 70 2b 40 00       	mov    $0x402b70,%ecx
  402002:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402009:	be 01 00 00 00       	mov    $0x1,%esi
  40200e:	4c 89 ff             	mov    %r15,%rdi
  402011:	b8 00 00 00 00       	mov    $0x0,%eax
  402016:	e8 b5 ec ff ff       	callq  400cd0 <__sprintf_chk@plt>
  40201b:	44 89 e7             	mov    %r12d,%edi
  40201e:	e8 8d eb ff ff       	callq  400bb0 <close@plt>
  402023:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402028:	e9 80 01 00 00       	jmpq   4021ad <submitr+0x6ce>
  40202d:	ba 00 20 00 00       	mov    $0x2000,%edx
  402032:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402039:	00 
  40203a:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  40203f:	e8 a9 f9 ff ff       	callq  4019ed <rio_readlineb>
  402044:	48 85 c0             	test   %rax,%rax
  402047:	7f 6a                	jg     4020b3 <submitr+0x5d4>
  402049:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402050:	3a 20 43 
  402053:	49 89 07             	mov    %rax,(%r15)
  402056:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40205d:	20 75 6e 
  402060:	49 89 47 08          	mov    %rax,0x8(%r15)
  402064:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40206b:	74 6f 20 
  40206e:	49 89 47 10          	mov    %rax,0x10(%r15)
  402072:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  402079:	68 65 61 
  40207c:	49 89 47 18          	mov    %rax,0x18(%r15)
  402080:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402087:	66 72 6f 
  40208a:	49 89 47 20          	mov    %rax,0x20(%r15)
  40208e:	48 b8 6d 20 73 65 72 	movabs $0x726576726573206d,%rax
  402095:	76 65 72 
  402098:	49 89 47 28          	mov    %rax,0x28(%r15)
  40209c:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
  4020a1:	44 89 e7             	mov    %r12d,%edi
  4020a4:	e8 07 eb ff ff       	callq  400bb0 <close@plt>
  4020a9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4020ae:	e9 fa 00 00 00       	jmpq   4021ad <submitr+0x6ce>
  4020b3:	80 bc 24 50 20 00 00 	cmpb   $0xd,0x2050(%rsp)
  4020ba:	0d 
  4020bb:	0f 85 6c ff ff ff    	jne    40202d <submitr+0x54e>
  4020c1:	80 bc 24 51 20 00 00 	cmpb   $0xa,0x2051(%rsp)
  4020c8:	0a 
  4020c9:	0f 85 5e ff ff ff    	jne    40202d <submitr+0x54e>
  4020cf:	80 bc 24 52 20 00 00 	cmpb   $0x0,0x2052(%rsp)
  4020d6:	00 
  4020d7:	0f 85 50 ff ff ff    	jne    40202d <submitr+0x54e>
  4020dd:	ba 00 20 00 00       	mov    $0x2000,%edx
  4020e2:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4020e9:	00 
  4020ea:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4020ef:	e8 f9 f8 ff ff       	callq  4019ed <rio_readlineb>
  4020f4:	48 85 c0             	test   %rax,%rax
  4020f7:	7f 70                	jg     402169 <submitr+0x68a>
  4020f9:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402100:	3a 20 43 
  402103:	49 89 07             	mov    %rax,(%r15)
  402106:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40210d:	20 75 6e 
  402110:	49 89 47 08          	mov    %rax,0x8(%r15)
  402114:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40211b:	74 6f 20 
  40211e:	49 89 47 10          	mov    %rax,0x10(%r15)
  402122:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  402129:	73 74 61 
  40212c:	49 89 47 18          	mov    %rax,0x18(%r15)
  402130:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402137:	65 73 73 
  40213a:	49 89 47 20          	mov    %rax,0x20(%r15)
  40213e:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  402145:	72 6f 6d 
  402148:	49 89 47 28          	mov    %rax,0x28(%r15)
  40214c:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
  402153:	65 72 00 
  402156:	49 89 47 30          	mov    %rax,0x30(%r15)
  40215a:	44 89 e7             	mov    %r12d,%edi
  40215d:	e8 4e ea ff ff       	callq  400bb0 <close@plt>
  402162:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402167:	eb 44                	jmp    4021ad <submitr+0x6ce>
  402169:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402170:	00 
  402171:	4c 89 ff             	mov    %r15,%rdi
  402174:	e8 e7 e9 ff ff       	callq  400b60 <strcpy@plt>
  402179:	44 89 e7             	mov    %r12d,%edi
  40217c:	e8 2f ea ff ff       	callq  400bb0 <close@plt>
  402181:	41 0f b6 17          	movzbl (%r15),%edx
  402185:	b8 4f 00 00 00       	mov    $0x4f,%eax
  40218a:	29 d0                	sub    %edx,%eax
  40218c:	75 15                	jne    4021a3 <submitr+0x6c4>
  40218e:	41 0f b6 57 01       	movzbl 0x1(%r15),%edx
  402193:	b8 4b 00 00 00       	mov    $0x4b,%eax
  402198:	29 d0                	sub    %edx,%eax
  40219a:	75 07                	jne    4021a3 <submitr+0x6c4>
  40219c:	41 0f b6 47 02       	movzbl 0x2(%r15),%eax
  4021a1:	f7 d8                	neg    %eax
  4021a3:	85 c0                	test   %eax,%eax
  4021a5:	0f 95 c0             	setne  %al
  4021a8:	0f b6 c0             	movzbl %al,%eax
  4021ab:	f7 d8                	neg    %eax
  4021ad:	48 8b 8c 24 58 a0 00 	mov    0xa058(%rsp),%rcx
  4021b4:	00 
  4021b5:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4021bc:	00 00 
  4021be:	0f 84 12 01 00 00    	je     4022d6 <submitr+0x7f7>
  4021c4:	e9 08 01 00 00       	jmpq   4022d1 <submitr+0x7f2>
  4021c9:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4021d0:	3a 20 52 
  4021d3:	49 89 07             	mov    %rax,(%r15)
  4021d6:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4021dd:	20 73 74 
  4021e0:	49 89 47 08          	mov    %rax,0x8(%r15)
  4021e4:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  4021eb:	63 6f 6e 
  4021ee:	49 89 47 10          	mov    %rax,0x10(%r15)
  4021f2:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  4021f9:	20 61 6e 
  4021fc:	49 89 47 18          	mov    %rax,0x18(%r15)
  402200:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402207:	67 61 6c 
  40220a:	49 89 47 20          	mov    %rax,0x20(%r15)
  40220e:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  402215:	6e 70 72 
  402218:	49 89 47 28          	mov    %rax,0x28(%r15)
  40221c:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402223:	6c 65 20 
  402226:	49 89 47 30          	mov    %rax,0x30(%r15)
  40222a:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  402231:	63 74 65 
  402234:	49 89 47 38          	mov    %rax,0x38(%r15)
  402238:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
  40223f:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
  402244:	44 89 e7             	mov    %r12d,%edi
  402247:	e8 64 e9 ff ff       	callq  400bb0 <close@plt>
  40224c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402251:	e9 57 ff ff ff       	jmpq   4021ad <submitr+0x6ce>
  402256:	48 8d 9c 24 50 20 00 	lea    0x2050(%rsp),%rbx
  40225d:	00 
  40225e:	48 83 ec 08          	sub    $0x8,%rsp
  402262:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
  402269:	00 
  40226a:	50                   	push   %rax
  40226b:	ff 74 24 20          	pushq  0x20(%rsp)
  40226f:	ff 74 24 30          	pushq  0x30(%rsp)
  402273:	4c 8b 4c 24 28       	mov    0x28(%rsp),%r9
  402278:	4c 8b 44 24 20       	mov    0x20(%rsp),%r8
  40227d:	b9 a0 2b 40 00       	mov    $0x402ba0,%ecx
  402282:	ba 00 20 00 00       	mov    $0x2000,%edx
  402287:	be 01 00 00 00       	mov    $0x1,%esi
  40228c:	48 89 df             	mov    %rbx,%rdi
  40228f:	b8 00 00 00 00       	mov    $0x0,%eax
  402294:	e8 37 ea ff ff       	callq  400cd0 <__sprintf_chk@plt>
  402299:	b8 00 00 00 00       	mov    $0x0,%eax
  40229e:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4022a5:	48 89 df             	mov    %rbx,%rdi
  4022a8:	f2 ae                	repnz scas %es:(%rdi),%al
  4022aa:	48 89 c8             	mov    %rcx,%rax
  4022ad:	48 f7 d0             	not    %rax
  4022b0:	4c 8d 68 ff          	lea    -0x1(%rax),%r13
  4022b4:	48 83 c4 20          	add    $0x20,%rsp
  4022b8:	4c 89 eb             	mov    %r13,%rbx
  4022bb:	48 8d ac 24 50 20 00 	lea    0x2050(%rsp),%rbp
  4022c2:	00 
  4022c3:	4d 85 ed             	test   %r13,%r13
  4022c6:	0f 85 b6 fb ff ff    	jne    401e82 <submitr+0x3a3>
  4022cc:	e9 3f fc ff ff       	jmpq   401f10 <submitr+0x431>
  4022d1:	e8 ba e8 ff ff       	callq  400b90 <__stack_chk_fail@plt>
  4022d6:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  4022dd:	5b                   	pop    %rbx
  4022de:	5d                   	pop    %rbp
  4022df:	41 5c                	pop    %r12
  4022e1:	41 5d                	pop    %r13
  4022e3:	41 5e                	pop    %r14
  4022e5:	41 5f                	pop    %r15
  4022e7:	c3                   	retq   

00000000004022e8 <init_timeout>:
  4022e8:	85 ff                	test   %edi,%edi
  4022ea:	74 22                	je     40230e <init_timeout+0x26>
  4022ec:	53                   	push   %rbx
  4022ed:	89 fb                	mov    %edi,%ebx
  4022ef:	be bf 19 40 00       	mov    $0x4019bf,%esi
  4022f4:	bf 0e 00 00 00       	mov    $0xe,%edi
  4022f9:	e8 f2 e8 ff ff       	callq  400bf0 <signal@plt>
  4022fe:	85 db                	test   %ebx,%ebx
  402300:	bf 00 00 00 00       	mov    $0x0,%edi
  402305:	0f 49 fb             	cmovns %ebx,%edi
  402308:	e8 93 e8 ff ff       	callq  400ba0 <alarm@plt>
  40230d:	5b                   	pop    %rbx
  40230e:	f3 c3                	repz retq 

0000000000402310 <init_driver>:
  402310:	55                   	push   %rbp
  402311:	53                   	push   %rbx
  402312:	48 83 ec 28          	sub    $0x28,%rsp
  402316:	48 89 fd             	mov    %rdi,%rbp
  402319:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402320:	00 00 
  402322:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402327:	31 c0                	xor    %eax,%eax
  402329:	be 01 00 00 00       	mov    $0x1,%esi
  40232e:	bf 0d 00 00 00       	mov    $0xd,%edi
  402333:	e8 b8 e8 ff ff       	callq  400bf0 <signal@plt>
  402338:	be 01 00 00 00       	mov    $0x1,%esi
  40233d:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402342:	e8 a9 e8 ff ff       	callq  400bf0 <signal@plt>
  402347:	be 01 00 00 00       	mov    $0x1,%esi
  40234c:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402351:	e8 9a e8 ff ff       	callq  400bf0 <signal@plt>
  402356:	ba 00 00 00 00       	mov    $0x0,%edx
  40235b:	be 01 00 00 00       	mov    $0x1,%esi
  402360:	bf 02 00 00 00       	mov    $0x2,%edi
  402365:	e8 76 e9 ff ff       	callq  400ce0 <socket@plt>
  40236a:	85 c0                	test   %eax,%eax
  40236c:	79 4f                	jns    4023bd <init_driver+0xad>
  40236e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402375:	3a 20 43 
  402378:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40237c:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402383:	20 75 6e 
  402386:	48 89 45 08          	mov    %rax,0x8(%rbp)
  40238a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402391:	74 6f 20 
  402394:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402398:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  40239f:	65 20 73 
  4023a2:	48 89 45 18          	mov    %rax,0x18(%rbp)
  4023a6:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  4023ad:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  4023b3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4023b8:	e9 0c 01 00 00       	jmpq   4024c9 <init_driver+0x1b9>
  4023bd:	89 c3                	mov    %eax,%ebx
  4023bf:	bf 38 2c 40 00       	mov    $0x402c38,%edi
  4023c4:	e8 37 e8 ff ff       	callq  400c00 <gethostbyname@plt>
  4023c9:	48 85 c0             	test   %rax,%rax
  4023cc:	75 68                	jne    402436 <init_driver+0x126>
  4023ce:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4023d5:	3a 20 44 
  4023d8:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4023dc:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  4023e3:	20 75 6e 
  4023e6:	48 89 45 08          	mov    %rax,0x8(%rbp)
  4023ea:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4023f1:	74 6f 20 
  4023f4:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4023f8:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  4023ff:	76 65 20 
  402402:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402406:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  40240d:	72 20 61 
  402410:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402414:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  40241b:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402421:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402425:	89 df                	mov    %ebx,%edi
  402427:	e8 84 e7 ff ff       	callq  400bb0 <close@plt>
  40242c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402431:	e9 93 00 00 00       	jmpq   4024c9 <init_driver+0x1b9>
  402436:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  40243d:	00 
  40243e:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402445:	00 00 
  402447:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  40244d:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402451:	48 8b 40 18          	mov    0x18(%rax),%rax
  402455:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  40245a:	b9 0c 00 00 00       	mov    $0xc,%ecx
  40245f:	48 8b 30             	mov    (%rax),%rsi
  402462:	e8 a9 e7 ff ff       	callq  400c10 <__memmove_chk@plt>
  402467:	66 c7 44 24 02 3b 6e 	movw   $0x6e3b,0x2(%rsp)
  40246e:	ba 10 00 00 00       	mov    $0x10,%edx
  402473:	48 89 e6             	mov    %rsp,%rsi
  402476:	89 df                	mov    %ebx,%edi
  402478:	e8 13 e8 ff ff       	callq  400c90 <connect@plt>
  40247d:	85 c0                	test   %eax,%eax
  40247f:	79 32                	jns    4024b3 <init_driver+0x1a3>
  402481:	41 b8 38 2c 40 00    	mov    $0x402c38,%r8d
  402487:	b9 f8 2b 40 00       	mov    $0x402bf8,%ecx
  40248c:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402493:	be 01 00 00 00       	mov    $0x1,%esi
  402498:	48 89 ef             	mov    %rbp,%rdi
  40249b:	b8 00 00 00 00       	mov    $0x0,%eax
  4024a0:	e8 2b e8 ff ff       	callq  400cd0 <__sprintf_chk@plt>
  4024a5:	89 df                	mov    %ebx,%edi
  4024a7:	e8 04 e7 ff ff       	callq  400bb0 <close@plt>
  4024ac:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024b1:	eb 16                	jmp    4024c9 <init_driver+0x1b9>
  4024b3:	89 df                	mov    %ebx,%edi
  4024b5:	e8 f6 e6 ff ff       	callq  400bb0 <close@plt>
  4024ba:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  4024c0:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  4024c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4024c9:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  4024ce:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4024d5:	00 00 
  4024d7:	74 05                	je     4024de <init_driver+0x1ce>
  4024d9:	e8 b2 e6 ff ff       	callq  400b90 <__stack_chk_fail@plt>
  4024de:	48 83 c4 28          	add    $0x28,%rsp
  4024e2:	5b                   	pop    %rbx
  4024e3:	5d                   	pop    %rbp
  4024e4:	c3                   	retq   

00000000004024e5 <driver_post>:
  4024e5:	53                   	push   %rbx
  4024e6:	4c 89 c3             	mov    %r8,%rbx
  4024e9:	85 c9                	test   %ecx,%ecx
  4024eb:	74 24                	je     402511 <driver_post+0x2c>
  4024ed:	be 47 2c 40 00       	mov    $0x402c47,%esi
  4024f2:	bf 01 00 00 00       	mov    $0x1,%edi
  4024f7:	b8 00 00 00 00       	mov    $0x0,%eax
  4024fc:	e8 4f e7 ff ff       	callq  400c50 <__printf_chk@plt>
  402501:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402506:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  40250a:	b8 00 00 00 00       	mov    $0x0,%eax
  40250f:	eb 41                	jmp    402552 <driver_post+0x6d>
  402511:	48 85 ff             	test   %rdi,%rdi
  402514:	74 2e                	je     402544 <driver_post+0x5f>
  402516:	80 3f 00             	cmpb   $0x0,(%rdi)
  402519:	74 29                	je     402544 <driver_post+0x5f>
  40251b:	41 50                	push   %r8
  40251d:	52                   	push   %rdx
  40251e:	41 b9 5e 2c 40 00    	mov    $0x402c5e,%r9d
  402524:	49 89 f0             	mov    %rsi,%r8
  402527:	48 89 f9             	mov    %rdi,%rcx
  40252a:	ba 6b 2c 40 00       	mov    $0x402c6b,%edx
  40252f:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
  402534:	bf 38 2c 40 00       	mov    $0x402c38,%edi
  402539:	e8 a1 f5 ff ff       	callq  401adf <submitr>
  40253e:	48 83 c4 10          	add    $0x10,%rsp
  402542:	eb 0e                	jmp    402552 <driver_post+0x6d>
  402544:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402549:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  40254d:	b8 00 00 00 00       	mov    $0x0,%eax
  402552:	5b                   	pop    %rbx
  402553:	c3                   	retq   
  402554:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40255b:	00 00 00 
  40255e:	66 90                	xchg   %ax,%ax

0000000000402560 <__libc_csu_init>:
  402560:	41 57                	push   %r15
  402562:	41 56                	push   %r14
  402564:	41 89 ff             	mov    %edi,%r15d
  402567:	41 55                	push   %r13
  402569:	41 54                	push   %r12
  40256b:	4c 8d 25 9e 18 20 00 	lea    0x20189e(%rip),%r12        # 603e10 <__frame_dummy_init_array_entry>
  402572:	55                   	push   %rbp
  402573:	48 8d 2d 9e 18 20 00 	lea    0x20189e(%rip),%rbp        # 603e18 <__init_array_end>
  40257a:	53                   	push   %rbx
  40257b:	49 89 f6             	mov    %rsi,%r14
  40257e:	49 89 d5             	mov    %rdx,%r13
  402581:	4c 29 e5             	sub    %r12,%rbp
  402584:	48 83 ec 08          	sub    $0x8,%rsp
  402588:	48 c1 fd 03          	sar    $0x3,%rbp
  40258c:	e8 6f e5 ff ff       	callq  400b00 <_init>
  402591:	48 85 ed             	test   %rbp,%rbp
  402594:	74 20                	je     4025b6 <__libc_csu_init+0x56>
  402596:	31 db                	xor    %ebx,%ebx
  402598:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40259f:	00 
  4025a0:	4c 89 ea             	mov    %r13,%rdx
  4025a3:	4c 89 f6             	mov    %r14,%rsi
  4025a6:	44 89 ff             	mov    %r15d,%edi
  4025a9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4025ad:	48 83 c3 01          	add    $0x1,%rbx
  4025b1:	48 39 eb             	cmp    %rbp,%rbx
  4025b4:	75 ea                	jne    4025a0 <__libc_csu_init+0x40>
  4025b6:	48 83 c4 08          	add    $0x8,%rsp
  4025ba:	5b                   	pop    %rbx
  4025bb:	5d                   	pop    %rbp
  4025bc:	41 5c                	pop    %r12
  4025be:	41 5d                	pop    %r13
  4025c0:	41 5e                	pop    %r14
  4025c2:	41 5f                	pop    %r15
  4025c4:	c3                   	retq   
  4025c5:	90                   	nop
  4025c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4025cd:	00 00 00 

00000000004025d0 <__libc_csu_fini>:
  4025d0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004025d4 <_fini>:
  4025d4:	48 83 ec 08          	sub    $0x8,%rsp
  4025d8:	48 83 c4 08          	add    $0x8,%rsp
  4025dc:	c3                   	retq   
