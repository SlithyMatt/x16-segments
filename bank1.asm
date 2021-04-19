.org $A000
.segment "CODE"

   jmp start

.include "print.inc"

bank1: .asciiz "ram bank 1"

start:
   PRINT_LINE bank1
   rts
