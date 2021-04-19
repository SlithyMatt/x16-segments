.org $0400
.segment "CODE"

   jmp start

.include "print.inc"

golden: .asciiz "golden ram"

start:
   PRINT_LINE golden
   rts
