.global entry

.data
        .word 0x00010001
        .word 0x11011111
        .word 0x00000000
        .word 0xFFFFFFFF
.text
.ent entry
entry:
    lw $t0, 0x200
    clo $t1, $t0
    sw $t1, 0x400
    lw $t0, 0x201
    clz $t2, $t0
    sw $t2, 0x400
    lw $t0, 0x202
    clo $t1, $t0 */
    sw $t1, 0x400
    clz $t2, $t0
    sw $t2, 0x400
    lw $t0, 0x203
    clo $t1, $t0 
    sw $t1, 0x400
    clz $t2, $t1
    sw $t2, 0x400
.end entry
