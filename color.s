.data
msg: .asciz "%c[%dm"
msg1: .asciz "\007\033c"
msg2: .asciz "                                        "
msg3: .asciz "\033c\033[42;30m"
a: .word	0
b: .word	1
c: .word	50

.text
.global main
.extern printf

main:
	push {ip,lr}
	ldr r0,=msg3
	bl printf
	ldr r0,=c
	ldr r3,[r0]
	ldr r0,=a
	ldr r1,[r0]
	ldr r0,=b
	ldr r4,[r0]


	ldr r0,=msg1
	bl printf

	mov r1,#27
	mov r2,#42
	ldr r0,=msg
	bl printf

	mov r1,#30
	mov r2,#42
	ldr r0,=msg
	bl printf



for1:
	ldr r0,=msg2
	bl printf
	ldr r0,=c
	ldr r3,[r0]
	ldr r0,=a
	ldr r1,[r0]
	ldr r0,=b
	ldr r4,[r0]
	add r1,r1,r4
	ldr r0,=a
	str r1,[r0]
	cmp r1,r3
	bne for1
	pop {ip,pc}










