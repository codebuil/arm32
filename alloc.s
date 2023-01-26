.data
msg:	.asciz	"\nhello world\n"
msg1:	.asciz	"..............................................................."
msg3:	.asciz	"\033c\033[42;31m"
a:	.word	0
b:	.word	500


.text
.global main
.extern strcpy
.extern printf
.extern malloc
.extern free

main:
	push {ip,lr}
	ldr r0,=msg3
	bl printf
	ldr r1,=b
	ldr r0,[r1]

	bl malloc
	ldr r2,=a
	str r0,[r2]	

	ldr r1,=msg
	bl strcpy

	ldr r1,=a
	ldr r0,[r1]
	bl printf

	ldr r1,=a
	ldr r0,[r1]

	bl free


	pop {ip,pc}










