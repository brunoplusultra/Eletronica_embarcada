      .cdecls C,NOLIST,"msp430g2553.h"
      .global    funcao
      .sect ".text"
funcao:    .asmfunc
	mov.b	#02h,&P1SEL
	mov.b 	#02h,&P1DIR

   .if ($defined(__MSP430_HAS_MSP430XV2_CPU__) | $defined(__MSP430_HAS_MSP430X_CPU__))
        reta
   .else
        ret
   .endif
         .endasmfunc

        .end

