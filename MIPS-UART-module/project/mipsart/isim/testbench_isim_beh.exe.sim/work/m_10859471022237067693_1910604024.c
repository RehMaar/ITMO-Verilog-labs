/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/maar/Code/Git/Verilog/MIPS-UART-module/src/hdl/uart/rx.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {7U, 0U};
static unsigned int ng5[] = {2U, 0U};
static int ng6[] = {1, 0};



static void Always_27_0(char *t0)
{
    char t13[8];
    char t22[8];
    char t37[8];
    char t45[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    char *t36;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    int t69;
    int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    char *t83;
    char *t84;

LAB0:    t1 = (t0 + 4320U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 4640);
    *((int *)t2) = 1;
    t3 = (t0 + 4352);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(27, ng0);

LAB5:    xsi_set_current_line(28, ng0);
    t4 = (t0 + 1888U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(36, ng0);

LAB10:    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3248);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    memset(t13, 0, 8);
    t11 = (t2 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t11);
    t17 = *((unsigned int *)t12);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB14;

LAB11:    if (t18 != 0)
        goto LAB13;

LAB12:    *((unsigned int *)t13) = 1;

LAB14:    memset(t22, 0, 8);
    t23 = (t13 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t13);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB15;

LAB16:    if (*((unsigned int *)t23) != 0)
        goto LAB17;

LAB18:    t30 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t30);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB19;

LAB20:    memcpy(t45, t22, 8);

LAB21:    t77 = (t45 + 4);
    t78 = *((unsigned int *)t77);
    t79 = (~(t78));
    t80 = *((unsigned int *)t45);
    t81 = (t80 & t79);
    t82 = (t81 != 0);
    if (t82 > 0)
        goto LAB29;

LAB30:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 2048U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t2) != 0)
        goto LAB35;

LAB36:    t5 = (t13 + 4);
    t14 = *((unsigned int *)t13);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB37;

LAB38:    memcpy(t45, t13, 8);

LAB39:    t50 = (t45 + 4);
    t68 = *((unsigned int *)t50);
    t71 = (~(t68));
    t72 = *((unsigned int *)t45);
    t73 = (t72 & t71);
    t74 = (t73 != 0);
    if (t74 > 0)
        goto LAB51;

LAB52:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 2048U);
    t3 = *((char **)t2);
    t2 = (t0 + 3408);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);

LAB53:
LAB31:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(28, ng0);

LAB9:    xsi_set_current_line(29, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3248);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 2, 0LL);
    xsi_set_current_line(30, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(31, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2768);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(32, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(33, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);
    xsi_set_current_line(34, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);
    goto LAB8;

LAB13:    t21 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB14;

LAB15:    *((unsigned int *)t22) = 1;
    goto LAB18;

LAB17:    t29 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB18;

LAB19:    t34 = (t0 + 2768);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memset(t37, 0, 8);
    t38 = (t36 + 4);
    t39 = *((unsigned int *)t38);
    t40 = (~(t39));
    t41 = *((unsigned int *)t36);
    t42 = (t41 & t40);
    t43 = (t42 & 1U);
    if (t43 != 0)
        goto LAB22;

LAB23:    if (*((unsigned int *)t38) != 0)
        goto LAB24;

LAB25:    t46 = *((unsigned int *)t22);
    t47 = *((unsigned int *)t37);
    t48 = (t46 & t47);
    *((unsigned int *)t45) = t48;
    t49 = (t22 + 4);
    t50 = (t37 + 4);
    t51 = (t45 + 4);
    t52 = *((unsigned int *)t49);
    t53 = *((unsigned int *)t50);
    t54 = (t52 | t53);
    *((unsigned int *)t51) = t54;
    t55 = *((unsigned int *)t51);
    t56 = (t55 != 0);
    if (t56 == 1)
        goto LAB26;

LAB27:
LAB28:    goto LAB21;

LAB22:    *((unsigned int *)t37) = 1;
    goto LAB25;

LAB24:    t44 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t44) = 1;
    goto LAB25;

LAB26:    t57 = *((unsigned int *)t45);
    t58 = *((unsigned int *)t51);
    *((unsigned int *)t45) = (t57 | t58);
    t59 = (t22 + 4);
    t60 = (t37 + 4);
    t61 = *((unsigned int *)t22);
    t62 = (~(t61));
    t63 = *((unsigned int *)t59);
    t64 = (~(t63));
    t65 = *((unsigned int *)t37);
    t66 = (~(t65));
    t67 = *((unsigned int *)t60);
    t68 = (~(t67));
    t69 = (t62 & t64);
    t70 = (t66 & t68);
    t71 = (~(t69));
    t72 = (~(t70));
    t73 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t73 & t71);
    t74 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t74 & t72);
    t75 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t75 & t71);
    t76 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t76 & t72);
    goto LAB28;

LAB29:    xsi_set_current_line(37, ng0);

LAB32:    xsi_set_current_line(38, ng0);
    t83 = ((char*)((ng1)));
    t84 = (t0 + 2768);
    xsi_vlogvar_wait_assign_value(t84, t83, 0, 0, 1, 0LL);
    goto LAB31;

LAB33:    *((unsigned int *)t13) = 1;
    goto LAB36;

LAB35:    t4 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB36;

LAB37:    t11 = (t0 + 3408);
    t12 = (t11 + 56U);
    t21 = *((char **)t12);
    memset(t22, 0, 8);
    t23 = (t21 + 4);
    t17 = *((unsigned int *)t23);
    t18 = (~(t17));
    t19 = *((unsigned int *)t21);
    t20 = (t19 & t18);
    t24 = (t20 & 1U);
    if (t24 != 0)
        goto LAB43;

LAB41:    if (*((unsigned int *)t23) == 0)
        goto LAB40;

LAB42:    t29 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t29) = 1;

LAB43:    memset(t37, 0, 8);
    t30 = (t22 + 4);
    t25 = *((unsigned int *)t30);
    t26 = (~(t25));
    t27 = *((unsigned int *)t22);
    t28 = (t27 & t26);
    t31 = (t28 & 1U);
    if (t31 != 0)
        goto LAB44;

LAB45:    if (*((unsigned int *)t30) != 0)
        goto LAB46;

LAB47:    t32 = *((unsigned int *)t13);
    t33 = *((unsigned int *)t37);
    t39 = (t32 & t33);
    *((unsigned int *)t45) = t39;
    t35 = (t13 + 4);
    t36 = (t37 + 4);
    t38 = (t45 + 4);
    t40 = *((unsigned int *)t35);
    t41 = *((unsigned int *)t36);
    t42 = (t40 | t41);
    *((unsigned int *)t38) = t42;
    t43 = *((unsigned int *)t38);
    t46 = (t43 != 0);
    if (t46 == 1)
        goto LAB48;

LAB49:
LAB50:    goto LAB39;

LAB40:    *((unsigned int *)t22) = 1;
    goto LAB43;

LAB44:    *((unsigned int *)t37) = 1;
    goto LAB47;

LAB46:    t34 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB47;

LAB48:    t47 = *((unsigned int *)t45);
    t48 = *((unsigned int *)t38);
    *((unsigned int *)t45) = (t47 | t48);
    t44 = (t13 + 4);
    t49 = (t37 + 4);
    t52 = *((unsigned int *)t13);
    t53 = (~(t52));
    t54 = *((unsigned int *)t44);
    t55 = (~(t54));
    t56 = *((unsigned int *)t37);
    t57 = (~(t56));
    t58 = *((unsigned int *)t49);
    t61 = (~(t58));
    t69 = (t53 & t55);
    t70 = (t57 & t61);
    t62 = (~(t69));
    t63 = (~(t70));
    t64 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t64 & t62);
    t65 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t65 & t63);
    t66 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t66 & t62);
    t67 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t67 & t63);
    goto LAB50;

LAB51:    xsi_set_current_line(40, ng0);

LAB54:    xsi_set_current_line(41, ng0);
    t51 = (t0 + 2048U);
    t59 = *((char **)t51);
    t51 = (t0 + 3408);
    xsi_vlogvar_wait_assign_value(t51, t59, 0, 0, 1, 0LL);
    xsi_set_current_line(42, ng0);
    t2 = (t0 + 3248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB55:    t5 = ((char*)((ng2)));
    t69 = xsi_vlog_unsigned_case_compare(t4, 2, t5, 2);
    if (t69 == 1)
        goto LAB56;

LAB57:    t2 = ((char*)((ng3)));
    t69 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t69 == 1)
        goto LAB58;

LAB59:    t2 = ((char*)((ng5)));
    t69 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t69 == 1)
        goto LAB60;

LAB61:
LAB62:    goto LAB53;

LAB56:    xsi_set_current_line(44, ng0);

LAB63:    xsi_set_current_line(45, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 2768);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 1, 0LL);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 472);
    t3 = *((char **)t2);
    t2 = (t0 + 2208U);
    t5 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t3 + 4);
    t11 = (t5 + 4);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t2);
    t10 = *((unsigned int *)t11);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t2);
    t17 = *((unsigned int *)t11);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB67;

LAB64:    if (t18 != 0)
        goto LAB66;

LAB65:    *((unsigned int *)t13) = 1;

LAB67:    t21 = (t13 + 4);
    t24 = *((unsigned int *)t21);
    t25 = (~(t24));
    t26 = *((unsigned int *)t13);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB68;

LAB69:
LAB70:    goto LAB62;

LAB58:    xsi_set_current_line(51, ng0);

LAB72:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 3088);
    t5 = (t3 + 56U);
    t11 = *((char **)t5);
    t12 = ((char*)((ng3)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 3, t11, 3, t12, 3);
    t21 = (t0 + 3088);
    xsi_vlogvar_wait_assign_value(t21, t13, 0, 0, 3, 0LL);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2928);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t22, 0, 8);
    t11 = (t22 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (t6 >> 1);
    *((unsigned int *)t22) = t7;
    t8 = *((unsigned int *)t12);
    t9 = (t8 >> 1);
    *((unsigned int *)t11) = t9;
    t10 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t10 & 127U);
    t14 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t14 & 127U);
    t21 = (t0 + 2208U);
    t23 = *((char **)t21);
    xsi_vlogtype_concat(t13, 8, 8, 2U, t23, 1, t22, 7);
    t21 = (t0 + 2928);
    xsi_vlogvar_wait_assign_value(t21, t13, 0, 0, 8, 0LL);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3088);
    t5 = (t3 + 56U);
    t11 = *((char **)t5);
    memset(t13, 0, 8);
    t12 = (t2 + 4);
    t21 = (t11 + 4);
    t6 = *((unsigned int *)t2);
    t7 = *((unsigned int *)t11);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t12);
    t10 = *((unsigned int *)t21);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t12);
    t17 = *((unsigned int *)t21);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB76;

LAB73:    if (t18 != 0)
        goto LAB75;

LAB74:    *((unsigned int *)t13) = 1;

LAB76:    t29 = (t13 + 4);
    t24 = *((unsigned int *)t29);
    t25 = (~(t24));
    t26 = *((unsigned int *)t13);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB77;

LAB78:
LAB79:    goto LAB62;

LAB60:    xsi_set_current_line(61, ng0);

LAB81:    xsi_set_current_line(62, ng0);
    t3 = (t0 + 608);
    t5 = *((char **)t3);
    t3 = (t0 + 2208U);
    t11 = *((char **)t3);
    memset(t13, 0, 8);
    t3 = (t5 + 4);
    t12 = (t11 + 4);
    t6 = *((unsigned int *)t5);
    t7 = *((unsigned int *)t11);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t12);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t3);
    t17 = *((unsigned int *)t12);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB85;

LAB82:    if (t18 != 0)
        goto LAB84;

LAB83:    *((unsigned int *)t13) = 1;

LAB85:    t23 = (t13 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t13);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB86;

LAB87:
LAB88:    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB62;

LAB66:    t12 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB67;

LAB68:    xsi_set_current_line(46, ng0);

LAB71:    xsi_set_current_line(47, ng0);
    t23 = ((char*)((ng3)));
    t29 = (t0 + 3248);
    xsi_vlogvar_wait_assign_value(t29, t23, 0, 0, 2, 0LL);
    goto LAB70;

LAB75:    t23 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB76;

LAB77:    xsi_set_current_line(55, ng0);

LAB80:    xsi_set_current_line(56, ng0);
    t30 = ((char*)((ng5)));
    t34 = (t0 + 3248);
    xsi_vlogvar_wait_assign_value(t34, t30, 0, 0, 2, 0LL);
    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB79;

LAB84:    t21 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB85;

LAB86:    xsi_set_current_line(62, ng0);

LAB89:    xsi_set_current_line(63, ng0);
    t29 = ((char*)((ng6)));
    t30 = (t0 + 2768);
    xsi_vlogvar_wait_assign_value(t30, t29, 0, 0, 1, 0LL);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2928);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t11 = (t0 + 2608);
    xsi_vlogvar_wait_assign_value(t11, t5, 0, 0, 8, 0LL);
    goto LAB88;

}


extern void work_m_10859471022237067693_1910604024_init()
{
	static char *pe[] = {(void *)Always_27_0};
	xsi_register_didat("work_m_10859471022237067693_1910604024", "isim/testbench_isim_beh.exe.sim/work/m_10859471022237067693_1910604024.didat");
	xsi_register_executes(pe);
}
