      .cdecls C,NOLIST,"msp430.h"       ; Processor specific definitions

       
;============================================================================
; set_port
;============================================================================
      .global    funcao               ; Declare symbol to be exported
      .sect ".text"                     ; Code is relocatable
funcao:    .asmfunc
	mov.b	#01h,&P1OUT	      ;
	mov.b	#01h,&P1DIR
	mov.b	#02h,&P1SEL
	mov.b 	#02h,&P1DIR
	mov.b	#04h,&P1OUT
	mov.b	#04h,&P1REN
	mov.b	#04h,&P1IES
	bic.b	#04h,&P1IFG
	mov.b	#04h,&P1IE
	mov.b	#08h,&P1OUT
	mov.b	#08h,&P1REN
	mov.b	#08h,&P1IES
	bic.b	#08h,&P1IFG
	mov.b	#08h,&P1IE


   .if ($defined(__MSP430_HAS_MSP430XV2_CPU__) | $defined(__MSP430_HAS_MSP430X_CPU__))
        reta
   .else
        ret
   .endif
         .endasmfunc

        .end

