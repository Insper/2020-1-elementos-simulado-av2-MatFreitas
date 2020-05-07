; Preenche a memória RAM
; com um contador progresssivo. O valor
; da RAM[2] tem o tamanho total do vetor.
; O vetor deve começar em RAM[3]
;
; RAM[0] e RAM[1] podem ser usados livremente
;
; ------------------------------------
; antes       | depois
;             |
; RAM[0]:     | RAM[0]:  
; RAM[1]:     | RAM[1]:  
; RAM[2]:  4  | RAM[2]:  4
; RAM[3]:  0  | RAM[3]:  0 -
; RAM[4]:  0  | RAM[4]:  1 | vetor
; RAM[5]:  0  | RAM[5]:  2 | 
; RAM[6]:  0  | RAM[6]:  3 -
; RAM[7]:  0  | RAM[7]:  0

inicio:
leaw $counter, %A
movw (%A), %D
leaw $2, %A
subw (%A), %D, %D
leaw $fim, %A
je %D
nop
leaw $counter, %A
movw (%A), %D
movw %D, (%A)
leaw $3, %A 
addw %D, %A, %A
movw %D, (%A)
leaw $counter, %A
incw %D
movw %D, (%A)
leaw $inicio, %A
jmp
nop
fim:
nop

