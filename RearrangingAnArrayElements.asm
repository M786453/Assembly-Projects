Include Irvine32.inc

;Author: shami
;Created: 29Dec,2021
;Description: Rearranging the elements of array to : 3,1,2


.data

	var DWORD 1,2,3

.code
main PROC

	mov eax, var[0]

	xchg eax, var[8]

	mov var[0], eax
	
	mov eax, var[4]

	xchg eax, var[8]

	mov var[4], eax

	mov eax, var[0]		; store first element of rearranged array in eax in order to print it

	call writeint		; print first element of rearranged array

	mov eax, var[4]		; store second element of rearranged array in eax in order to print it		

	call writeint

	mov eax, var[8]		; store third element of rearranged array in eax in order to print it

	call writeint

	exit
main endp
end main