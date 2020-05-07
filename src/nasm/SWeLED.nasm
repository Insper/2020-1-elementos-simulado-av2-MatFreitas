; Arquivo: SWeLED.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Faça os LEDs exibirem 
; LED = SW9 OFF ON ON ON OFF !SW3 !SW2 ON OFF
;        0  0   1  1  1   0   0   0    1  0
;               2+32+64+128 
; 1100 = 
leaw $21185, %A
movw (%A), %D
notw %D
leaw $12, %A
andw %D, %A, %D
leaw $var1
movw %D, (%A)
leaw $21185, %A
movw (%A), %D
leaw $512, %A
andw %D, %A, %D
leaw $226, %A
orw %A, %D, %D
leaw $var1, %A
orw (%A), %D, %D
leaw $21184, %A
movw %D, (%A)
