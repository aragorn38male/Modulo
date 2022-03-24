;modulo.asm
org 0x0100
mov ah, 0x13	; 19 / 3
mov al, 0x03
modulo:
cmp ah, al
je void
sub ah, al
jns modulo

smtg:
mov bl, 2
int 0x20
void:
mov bl, 1
int 0x20
