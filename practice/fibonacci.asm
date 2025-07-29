Include Irvine32.inc
.data
fibarray dword 50 dup (0)
.code
main PROC
mov esi , offset fibarray

call fibonacci
mov esi , offset fibarray
mov ecx , lengthof fibarray
l2:
mov eax , [esi]
call writedec
call crlf
add esi , 4
loop l2

fibonacci proc
mov eax , 0
mov [esi] , eax
add esi , 4
mov ebx , 1
mov eax , ebx
mov [esi] , eax
add esi , 4
mov ecx , 48
mov edx , 0
mov eax ,0
l1:
add eax , ebx
mov [esi] , eax
add esi , 4
mov edx , ebx
mov ebx , eax
mov eax , edx
loop l1
ret
fibonacci endp

exit
main endp
end main
