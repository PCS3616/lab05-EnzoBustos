@ /000
    GD /000 
    MM /020
    GD /000
    MM /140
    GD /000
    MM /022
    SC PRIMEIRO
    SC SEGUNDO
    LD /020
    AD /022
    MM /024 ;soma
    SC TESTE
    LD /122
    PD /100
    HM /000

@ /050
PRIMEIRO K /0
    LD /020
    SB CONST
    MM /020
    RS PRIMEIRO
 
@ /060
SEGUNDO K /0
    LD /022
    SB CONST
    MM /022
    RS SEGUNDO
    
@ /070
TESTE K /0
    LD /024
    DV HEXA ;dividindo a soma pela base 0x010
    ML HEXA
    MM /026 ;soma - resto
    LD /024
    SB /026
    SB CARRY
    JN /100
    LD /024
    SB CARRY
    AD OUT
    AD CONST 
    MM /122 ;guarda soma com carry
    RS TESTE
	
 @ /030
CONST K /3030
HEXA K /010  
CARRY K /00A
OUT K /100


@ /100
LD /024
AD CONST
MM /120 ;guarda soma sem carry
PD /100
HM /000



