section .data

Output db "Simple example demonstrating basic Subtraction."
Output1 db "THREE - TWO"
Output2 db "Answer: "
Two db 2
Three db 3
EndLine db 0xA, 0xD

section .bss

Answer resb 1

section .text
	global _start


_start:

	mov rax, 1
	mov rdi, 1
	mov rsi, Output
	mov rdx, 44
	syscall

	mov rax, 1
	mov rdi, 1
	mov rsi, EndLine
	mov rdx, 1
	syscall

	mov rax, 1
	mov rdi, 1
	mov rsi, Output1
	mov rdx, 11
	syscall

	xor rax, rax
	mov al , byte[Three]
	sub al, byte[Two]
	add al, 48
	mov byte[Answer] , al

	mov rax, 1
	mov rdi, 1
	mov rsi, EndLine
	mov rdx, 1
	syscall


	mov rax, 1
	mov rdi, 1
	mov rsi, Output2
	mov rdx, 8
	syscall

	mov rax, 1
	mov rdi, 1
	mov rsi, Answer
	mov rdx, 1
	syscall

	mov rax, 1
	mov rdi, 1
	mov rsi, EndLine
	mov rdx, 1
	syscall

	mov rax, 60
	mov rdi, 0
	syscall