#!/bin/sh

cl65 -t cx16 -o SEGMENTS.PRG -l segments.list segments.asm
cl65 -t cx16 -C x16_golden.cfg -o GOLDEN.PRG -l golden.list golden.asm
cl65 -t cx16 -C x16_rambank.cfg -o BANK1.PRG -l bank1.list bank1.asm
cl65 -t cx16 -C x16_rambank.cfg -o BANK2.PRG -l bank2.list bank2.asm
