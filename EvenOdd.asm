Include Irvine32.inc

;Author: shami
;Created: 29Dec,2021
;Description: CHECKING WETHER A NUMBER IS ODD OR EVEN


.data

	odd_str BYTE "ODD NUMBER",0

	

	even_str BYTE "EVEN NUMBER",0

.code
main PROC

	mov eax, 8h

	AND eax, 1h

	JZ evnn

	mov edx, offset odd_str

	call writestring

	jmp outprog
	


	evnn:
		mov edx, offset even_str
		call writestring
		


	outprog:
		exit


		
	
main endp
end main