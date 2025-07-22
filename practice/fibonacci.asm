INCLUDE Irvine32.inc
;fibonacci series till 10 numbers
.data

.code
main PROC
mov ebx , 0
mov edx , 0

mov eax , 0
call writedec
call crlf
mov eax , 1
call writedec
call crlf

mov ecx , 8
mov edx , 1
mov eax , 0
l1:
add eax , edx
call writedec
call crlf
mov ebx , eax
mov eax ,edx
mov edx , ebx

loop l1

exit
main endp
END main 
