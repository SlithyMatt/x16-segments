.org $080D
.segment "STARTUP"
.segment "INIT"
.segment "ONCE"
.segment "CODE"

.include "x16.inc"
.include "print.inc"

   jmp start

GOLDEN_START = $0400

main: .asciiz "main program"
golden_fn: .byte "golden.prg"
bank1_fn: .byte "bank1.prg"
bank2_fn: .byte "bank2.prg"
end_filenames:

start:
   lda #1
   ldx #8
   ldy #1
   jsr SETLFS
   lda #(bank1_fn-golden_fn)
   ldx #<golden_fn
   ldy #>golden_fn
   jsr SETNAM
   lda #1
   jsr LOAD
   lda #(bank2_fn-bank1_fn)
   ldx #<bank1_fn
   ldy #>bank1_fn
   jsr SETNAM
   lda #1
   sta RAM_BANK
   jsr LOAD
   lda #(end_filenames-bank2_fn)
   ldx #<bank2_fn
   ldy #>bank2_fn
   jsr SETNAM
   lda #2
   sta RAM_BANK
   lda #1
   jsr LOAD
   PRINT_LINE main
   jsr GOLDEN_START
   JSRFAR RAM_WIN, 1
   JSRFAR RAM_WIN, 2
   rts
