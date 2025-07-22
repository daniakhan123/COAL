INCLUDE Irvine32.inc
;Take a string as input. Count the number of vowels using a loop and conditional branching.
.data
input byte "enter any string: "
buffer byte 30 dup(?)
lg dword ?
count dword ?
a byte ?
e byte ?
i byte ?
o byte ?
u byte ?

.code
main PROC

mov edx , offset input
call writestring

mov edx , offset buffer
mov ecx , 30
call readstring
mov lg , eax

mov ecx , lg
mov esi , offset buffer

vowel:
mov al , [esi]
cmp al , 'a'
je foundvowel
cmp al , 'e'
je foundvowel
cmp al , 'i'
je foundvowel
cmp al , 'o'
je foundvowel
cmp al , 'u'
je foundvowel
jmp nextchar


foundvowel:
add count,1

nextchar:
add esi , 1
loop vowel

mov eax , count
call writedec
    exit
main ENDP
END main 
