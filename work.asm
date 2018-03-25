;SysProg Work.asm



segment .data
eof db "eof", 0
segment .bss
retadr resw 1
length resw 1
bugger resb 4096

segment .text

first:
		mov retadr, first
c_loop:
		call rdrec
		mov eax, length
		cmp length, 0
		je endfil
		call wrrec
		jmp short c_loop

endfil:
		mov eax, eof
		mov buffer, eax
		mov dword[length], 3
		call wrrec
		mov ecx, retadr
		ret

rdrec:
		mov ecx, 0
		mov eax, 0

rloop:


wrrec:

wloop:
