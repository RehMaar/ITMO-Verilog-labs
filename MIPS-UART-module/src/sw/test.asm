.global entry
.data
    .word   0x1     /* 0x200*/
    .word   0x100 /* 0x6acfc0 */ /* 0x201*/
    /*.ascii "Hello, world!"*/
    .word   0x48    /* H */ /* 0x202*/
    .word   0x65    /* e */ /* 0x203*/
    .word   0x6c    /* l */ /* 0x204*/
    .word   0x6c    /* l */ /* 0x205*/
    .word   0x6f    /* o */ /* 0x206*/
    .word   0x2c    /* , */ /* 0x207*/
    .word   0x20    /*   */ /* 0x208*/
    .word   0x77    /* w */ /* 0x209*/
    .word   0x6f    /* o */ /* 0x20a*/
    .word   0x72    /* r */ /* 0x20b*/
    .word   0x6c    /* l */ /* 0x20c*/
    .word   0x64    /* d */ /* 0x20d*/
    .word   0x21    /* ! */ /* 0x20e*/

    .word   0x0d            /* 0x20f*/
    .word   0x0a            /* 0x210 */
.text
.ent entry
entry:

    lw $t0, 0x400  /*  load sw */
    lw $t2, 0x200   /* $t2 = 0x1 */
    beq $t0, $t2, SEND_MODE /* if sw[0] == 1 jmp to SEND */

    ECHO_MODE:
        andi $t0, 0x0
        lw $t1, 0x800 /* Check status reg */
        beq $t1, $t0, entry
        lw $t1, 0x801
        sw $t1, 0x400
        sw $t1, 0x801
        j entry

    SEND_MODE:
        lw $t0, 0x201   /* $t0 = time*/
        andi $t2, 0x0    /* $t2 = 0 */
        dec_loop:
            addi $t0, $t0, -1
            beq $t0, $t2, to_send
            j dec_loop
        to_send:
        andi $t0, 0
        andi $t2, 0
        addi $t0, 0x202   /* $t0 = ptr to str */
        addi $t2, 0x211   /* $t0 =  ptr to last symbol*/
        send_to_uart_loop:
            lw $t1, ($t0)
            sw $t1, 0x801
            addi $t0, $t0, 0x1
            beq $t0, $t2, entry
            j send_to_uart_loop
    j entry
.end entry
