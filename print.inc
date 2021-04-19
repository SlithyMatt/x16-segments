.ifndef PRINT_INC
PRINT_INC = 1

.include "x16.inc"

RETURN = $0D

.macro PRINT_LINE str
   ldx #0
:  lda str,x
   beq :+
   jsr CHROUT
   inx
   bra :-
:  lda #RETURN
   jsr CHROUT
.endmacro

.endif
