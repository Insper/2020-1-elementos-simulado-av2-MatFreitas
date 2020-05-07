;---------------------------------------------------------
; Transcreva o pseudocódigo a seguir para assembly do Z01.1:
;
; 
;    if ( RAM[1] == 1 && RAM[2] > 2 ):
;        RAM[5] = 1
;    else
;        RAM5[6] = -2
;
;---------------------------------------------------------
movw $1, %A
movw (%A), %D
subw %D, %A, %D
leaw $else, %A
jne %D
nop
leaw $2, %A
movw (%A), %D
leaw $3, %A
subw %D, %A, %D
leaw $else, %A
jne %D
nop
leaw $5, %A
movw 1, (%A)
leaw $end
jmp
nop
else:
leaw $2, %A
movw %A, %D
negw %D
leaw $6, %A
movw %D, (%A)
end:
nop
