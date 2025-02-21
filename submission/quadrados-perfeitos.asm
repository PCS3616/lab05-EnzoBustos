; ----- Calcula o quadrado de N
@/100
JP 034 ; AC = N
ML 02C ; AC = AC*2
AD 030 ; AC = AC+1
AD 036 ; AC = AC + somatório

;------ Salva o valor na memória e no somatório
MM 102 ; mem[endereço] = AC
MM 036 ; somatorio = AC

; ----- Analisa se chegou ao final
LD 034 ; AC = N
SB 032 ; AC = AC - 63
JZ 024 ; Se AC = 0, desvia para o fim

; ----- Atualiza o endereço de escrita
LD 02A ; AC = endereço
AD 02C ; AC = AC + 2 (incrementa endereço)
MM 02A ; atualiza o endereço
AD 02E ; AC = Ac + 9000
MM 008 ; Atualiza endereço de escrita

; ----- Atualiza o valor de N
LD 034 ; AC = N
AD 030 ; AC = AC + 1 (incrementa N)
MM 034 ; salva N

     
; ----- Recomeça o processo
JP 000 ; Desvio para o início
LV 000 ; AC = 0
MM 100 ; mem[0100] = 0
HM 0DE ; fim


002A 0102 ; endereço
JP 002 ; 2
MM 000 ; 9000
JP 001 ; 1
JP 03F ; 63 (parada)

JP 000 ; N
JP 000 ; somatório
