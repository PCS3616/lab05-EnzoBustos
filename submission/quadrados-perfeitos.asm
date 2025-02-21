; ----- Calcula o quadrado de N
0000 8034 ; AC = N
0002 602C ; AC = AC*2
0004 4030 ; AC = AC+1
0006 4036 ; AC = AC + somatório

;------ Salva o valor na memória e no somatório
0008 9102 ; mem[endereço] = AC
000A 9036 ; somatorio = AC

; ----- Analisa se chegou ao final
000C 8034 ; AC = N
000E 5032 ; AC = AC - 63
0010 1024 ; Se AC = 0, desvia para o fim

; ----- Atualiza o endereço de escrita
0012 802A ; AC = endereço
0014 402C ; AC = AC + 2 (incrementa endereço)
0016 902A ; atualiza o endereço
0018 402E ; AC = Ac + 9000
001A 9008 ; Atualiza endereço de escrita

; ----- Atualiza o valor de N
001C 8034 ; AC = N
001E 4030 ; AC = AC + 1 (incrementa N)
0020 9034 ; salva N

     
; ----- Recomeça o processo
0022 0000 ; Desvio para o início
0024 3000 ; AC = 0
0026 9100 ; mem[0100] = 0
0028 C0DE ; fim


002A 0102 ; endereço
002C 0002 ; 2
002E 9000 ; 9000
0030 0001 ; 1
0032 003F ; 63 (parada)

0034 0000 ; N
0036 0000 ; somatório
