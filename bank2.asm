.org $A000
.segment "CODE"

   jmp start

.include "print.inc"

bank2: .asciiz "ram bank 2"

start:
   PRINT_LINE bank2
   rts
