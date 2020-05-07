;Calcule a série de fibonacci, sendo
; RAM[0] o valor que define o tamanho da
; série e RAM[5] o seu inicio
;
; RAM[0]:  5     <--- Tamanho da série (sempre > 2)
; RAM[1]:        ---- livre para uso!     
; RAM[2]:        ---- livre para uso!
; ....
; RAM[5]:  1       -- inicio
; RAM[6]:  1       |
; RAM[7]:  2       |
; RAM[8]:  3       |
; RAM[9]:  5       v série (N=5)

; -- variaveis
leaw $cont, %A
movw $0, (%A)

;-- valores iniciais fibonacci
leaw $4, %A
movw $0, (%A)
leaw $5, %A
movw $1, (%A)

; -- verifica se executou ate tam vezes, se sim vai pro fim
loop:
leaw $0, %A ; tam
movw (%A), %D
leaw $cont, %A
subw %D, (%A), %D
leaw $fim, %A
je %D
nop

; pega posicao do indice atual
leaw $cont, %A
movw (%A), %D
leaw $5, %A
addw %D, %A, %A ; A = indice da pos atual

; soma = atual
movw (%A), %D
leaw $soma, %A
movw %D, (%A)

leaw $cont, %A
movw (%A), %D
leaw $4, %A
addw %D, %A, %A ; A = indice da pos anterior

; D = soma + ant
movw (%A), %D
leaw $soma, %A
addw %D, (%A), %D

; soma = soma + ant (D)
leaw $soma, %A
movw %D, (%A)

; pega indice futuro e soma um no contador
leaw $cont, %A
movw (%A), %D
incw %D
movw %D, (%A)
leaw $5, %A
addw %D, %A, %D ; D = indice do indice futuro

; copia resultado no indice futuro
leaw $index, %A
movw %D, (%A)

leaw $soma, %A
movw (%A), %D

leaw $index, %A
movw (%A), %A
movw %D, (%A)

; volta pro loop
leaw $loop, %A
jmp
nop

fim:
nop


