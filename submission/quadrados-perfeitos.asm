@ /000
    LD ZERO
    MM /100
    MM /090 ;guarda i
    MM /092 ;guarda soma
LP  SC SUB 
    LD /090 
    SB /080 ;checar se e 64
    JZ /098 ;condicao de parada
    LD /090
    AD UM
    MM /090
    JP LP
 
@ /020
ZERO K /000
UM K /001
DOIS K /002
ADRESS K /9100  

@ /034
SUB K /0
    	LD /090
    	ML DOIS
    	AD UM
    	AD /092
    	MM /092
    	LD ADRESS
   	AD DOIS
    	MM ADRESS
    	MM SALVA
    	LD /092
SALVA   K /0000     
    	RS SUB
    
    ;valor maximo = 0F81 (63^2)
    
@ /080
 K /03E ;62 em hexadecimal
    
@ /098
    HM /000
    
