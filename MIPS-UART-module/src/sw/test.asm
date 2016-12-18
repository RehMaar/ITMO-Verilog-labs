.global entry
.data
    .word   0x1             /* 0x200*/
    .word   0xf4240         /* 0x201*/
    .ascii  "Hello, world!"  /* 0x202*/
    .byte    0x0a
    .byte    0x0d           /* 0x211*/
.text
.ent entry
entry:

    lw $t0, 0x400  /*  load sw */
    lw $t2, 0x200   /* $t2 = 0x1 */
    beq $t0, $t2, SEND_MODE /* if sw[0] == 1 jmp to SEND */

    ECHO_MODE:
        lw $t1, 0x800
        sw $t1, 0x400
        sw $t1, 0x800
        j entry

    SEND_MODE:
        lw $t0, 0x201   /* $t0 = time*/
        andi $t2, 0x0    /* $t2 = 0 */
        dec_loop:
            sub $t0, $t0, 1
            beq $t0, $t2, to_send
            j dec_loop
        to_send:
        lw $t0, 0x202   /* $t0 = ptr to str */
        lw $t2, 0x211  /* $t0 =  ptr to last symbol*/
        send_to_uart_loop:
            lw $t1, ($t0)
            sw $t1, 0x400
            addi $t0, 0x1
            beq $t0, $t2, entry
            j send_to_uart_loop
    j entry
.end entry
