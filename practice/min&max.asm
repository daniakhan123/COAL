
INCLUDE Irvine32.inc

.data
prompt1 byte "maximum number: ",0
prompt2 byte "minimum number: ",0
prompt3 byte "enter array values:",0
arr dword 5 dup(?)

.code
main PROC

mov edx , offset prompt3
call writestring
call crlf
mov esi , offset arr
mov ecx , lengthof arr
l1:
call readint
mov [esi] , eax
add esi , 4
loop l1

mov edx  , offset prompt1
call writestring
call maxfd
mov eax , edx
call writedec
call crlf

mov edx  , offset prompt2
call writestring
call minfd
mov eax , edx
call writedec
call crlf

    exit
main ENDP


maxfd proc
mov esi , offset arr
mov ecx , 4
mov edx , [esi]
add esi , 4

l2:
cmp edx , [esi]
jl max
jmp skip


max:
mov edx , [esi]

skip:
add esi ,4
loop l2

ret
maxfd endp


minfd proc
mov esi , offset arr
mov ecx , 4
mov edx , [esi]
add esi , 4

l3:
cmp edx , [esi]
jg min
jmp skip


min:
mov edx , [esi]

skip:
add esi ,4
loop l3

ret
minfd endp


END main
