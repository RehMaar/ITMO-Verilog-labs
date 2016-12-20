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
static const char *ng0 = "/home/maar/Code/Git/Verilog/MIPS-UART-module/src/hdl/master_wb.v";
static unsigned int ng1[] = {15U, 0U};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {0, 0};
static unsigned int ng4[] = {1U, 0U};



static void Cont_49_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 5784U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6432);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 15U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 3);

LAB1:    return;
}

static void Always_59_1(char *t0)
{
    char t14[8];
    char t20[8];
    char t31[8];
    char t39[8];
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
    int t13;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    char *t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    int t63;
    int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    char *t78;

LAB0:    t1 = (t0 + 6032U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 6352);
    *((int *)t2) = 1;
    t3 = (t0 + 6064);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(61, ng0);
    t4 = (t0 + 1752U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB5;

LAB6:    xsi_set_current_line(75, ng0);

LAB9:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 1912U);
    t3 = *((char **)t2);
    t2 = (t0 + 4712);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 2072U);
    t3 = *((char **)t2);
    t2 = (t0 + 4872);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(80, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3432);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 4552);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB10:    t5 = (t0 + 472);
    t11 = *((char **)t5);
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t11, 32);
    if (t13 == 1)
        goto LAB11;

LAB12:    t2 = (t0 + 608);
    t3 = *((char **)t2);
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t3, 32);
    if (t13 == 1)
        goto LAB13;

LAB14:    t2 = (t0 + 744);
    t3 = *((char **)t2);
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t3, 32);
    if (t13 == 1)
        goto LAB15;

LAB16:    t2 = (t0 + 880);
    t3 = *((char **)t2);
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t3, 32);
    if (t13 == 1)
        goto LAB17;

LAB18:
LAB19:
LAB7:    goto LAB2;

LAB5:    xsi_set_current_line(61, ng0);

LAB8:    xsi_set_current_line(62, ng0);
    t11 = (t0 + 472);
    t12 = *((char **)t11);
    t11 = (t0 + 4552);
    xsi_vlogvar_wait_assign_value(t11, t12, 0, 0, 2, 0LL);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3432);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4072);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3752);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3912);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4392);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4232);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3592);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4712);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4872);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB7;

LAB11:    xsi_set_current_line(84, ng0);
    t5 = (t0 + 2072U);
    t12 = *((char **)t5);
    memset(t14, 0, 8);
    t5 = (t12 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (~(t6));
    t8 = *((unsigned int *)t12);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB20;

LAB21:    if (*((unsigned int *)t5) != 0)
        goto LAB22;

LAB23:    t16 = (t14 + 4);
    t17 = *((unsigned int *)t14);
    t18 = *((unsigned int *)t16);
    t19 = (t17 || t18);
    if (t19 > 0)
        goto LAB24;

LAB25:    memcpy(t39, t14, 8);

LAB26:    t71 = (t39 + 4);
    t72 = *((unsigned int *)t71);
    t73 = (~(t72));
    t74 = *((unsigned int *)t39);
    t75 = (t74 & t73);
    t76 = (t75 != 0);
    if (t76 > 0)
        goto LAB38;

LAB39:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 1912U);
    t3 = *((char **)t2);
    memset(t14, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t2) != 0)
        goto LAB44;

LAB45:    t11 = (t14 + 4);
    t17 = *((unsigned int *)t14);
    t18 = *((unsigned int *)t11);
    t19 = (t17 || t18);
    if (t19 > 0)
        goto LAB46;

LAB47:    memcpy(t39, t14, 8);

LAB48:    t45 = (t39 + 4);
    t72 = *((unsigned int *)t45);
    t73 = (~(t72));
    t74 = *((unsigned int *)t39);
    t75 = (t74 & t73);
    t76 = (t75 != 0);
    if (t76 > 0)
        goto LAB60;

LAB61:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 2552U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB64;

LAB65:
LAB66:
LAB62:
LAB40:    goto LAB19;

LAB13:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 2872U);
    t5 = *((char **)t2);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB68;

LAB69:
LAB70:    goto LAB19;

LAB15:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 2872U);
    t5 = *((char **)t2);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB72;

LAB73:
LAB74:    goto LAB19;

LAB17:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 2552U);
    t5 = *((char **)t2);
    memset(t14, 0, 8);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB79;

LAB77:    if (*((unsigned int *)t2) == 0)
        goto LAB76;

LAB78:    t11 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t11) = 1;

LAB79:    t12 = (t14 + 4);
    t17 = *((unsigned int *)t12);
    t18 = (~(t17));
    t19 = *((unsigned int *)t14);
    t25 = (t19 & t18);
    t26 = (t25 != 0);
    if (t26 > 0)
        goto LAB80;

LAB81:
LAB82:    goto LAB19;

LAB20:    *((unsigned int *)t14) = 1;
    goto LAB23;

LAB22:    t15 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB23;

LAB24:    t21 = (t0 + 4872);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memset(t20, 0, 8);
    t24 = (t23 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t23);
    t28 = (t27 & t26);
    t29 = (t28 & 1U);
    if (t29 != 0)
        goto LAB30;

LAB28:    if (*((unsigned int *)t24) == 0)
        goto LAB27;

LAB29:    t30 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t30) = 1;

LAB30:    memset(t31, 0, 8);
    t32 = (t20 + 4);
    t33 = *((unsigned int *)t32);
    t34 = (~(t33));
    t35 = *((unsigned int *)t20);
    t36 = (t35 & t34);
    t37 = (t36 & 1U);
    if (t37 != 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t32) != 0)
        goto LAB33;

LAB34:    t40 = *((unsigned int *)t14);
    t41 = *((unsigned int *)t31);
    t42 = (t40 & t41);
    *((unsigned int *)t39) = t42;
    t43 = (t14 + 4);
    t44 = (t31 + 4);
    t45 = (t39 + 4);
    t46 = *((unsigned int *)t43);
    t47 = *((unsigned int *)t44);
    t48 = (t46 | t47);
    *((unsigned int *)t45) = t48;
    t49 = *((unsigned int *)t45);
    t50 = (t49 != 0);
    if (t50 == 1)
        goto LAB35;

LAB36:
LAB37:    goto LAB26;

LAB27:    *((unsigned int *)t20) = 1;
    goto LAB30;

LAB31:    *((unsigned int *)t31) = 1;
    goto LAB34;

LAB33:    t38 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB34;

LAB35:    t51 = *((unsigned int *)t39);
    t52 = *((unsigned int *)t45);
    *((unsigned int *)t39) = (t51 | t52);
    t53 = (t14 + 4);
    t54 = (t31 + 4);
    t55 = *((unsigned int *)t14);
    t56 = (~(t55));
    t57 = *((unsigned int *)t53);
    t58 = (~(t57));
    t59 = *((unsigned int *)t31);
    t60 = (~(t59));
    t61 = *((unsigned int *)t54);
    t62 = (~(t61));
    t63 = (t56 & t58);
    t64 = (t60 & t62);
    t65 = (~(t63));
    t66 = (~(t64));
    t67 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t67 & t65);
    t68 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t68 & t66);
    t69 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t69 & t65);
    t70 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t70 & t66);
    goto LAB37;

LAB38:    xsi_set_current_line(84, ng0);

LAB41:    xsi_set_current_line(85, ng0);
    t77 = (t0 + 2232U);
    t78 = *((char **)t77);
    t77 = (t0 + 4072);
    xsi_vlogvar_wait_assign_value(t77, t78, 0, 0, 32, 0LL);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 2392U);
    t3 = *((char **)t2);
    t2 = (t0 + 3752);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(87, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3912);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(88, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4392);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(89, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4232);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 608);
    t3 = *((char **)t2);
    t2 = (t0 + 4552);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 2, 0LL);
    goto LAB40;

LAB42:    *((unsigned int *)t14) = 1;
    goto LAB45;

LAB44:    t5 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t5) = 1;
    goto LAB45;

LAB46:    t12 = (t0 + 4712);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memset(t20, 0, 8);
    t21 = (t16 + 4);
    t25 = *((unsigned int *)t21);
    t26 = (~(t25));
    t27 = *((unsigned int *)t16);
    t28 = (t27 & t26);
    t29 = (t28 & 1U);
    if (t29 != 0)
        goto LAB52;

LAB50:    if (*((unsigned int *)t21) == 0)
        goto LAB49;

LAB51:    t22 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t22) = 1;

LAB52:    memset(t31, 0, 8);
    t23 = (t20 + 4);
    t33 = *((unsigned int *)t23);
    t34 = (~(t33));
    t35 = *((unsigned int *)t20);
    t36 = (t35 & t34);
    t37 = (t36 & 1U);
    if (t37 != 0)
        goto LAB53;

LAB54:    if (*((unsigned int *)t23) != 0)
        goto LAB55;

LAB56:    t40 = *((unsigned int *)t14);
    t41 = *((unsigned int *)t31);
    t42 = (t40 & t41);
    *((unsigned int *)t39) = t42;
    t30 = (t14 + 4);
    t32 = (t31 + 4);
    t38 = (t39 + 4);
    t46 = *((unsigned int *)t30);
    t47 = *((unsigned int *)t32);
    t48 = (t46 | t47);
    *((unsigned int *)t38) = t48;
    t49 = *((unsigned int *)t38);
    t50 = (t49 != 0);
    if (t50 == 1)
        goto LAB57;

LAB58:
LAB59:    goto LAB48;

LAB49:    *((unsigned int *)t20) = 1;
    goto LAB52;

LAB53:    *((unsigned int *)t31) = 1;
    goto LAB56;

LAB55:    t24 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB56;

LAB57:    t51 = *((unsigned int *)t39);
    t52 = *((unsigned int *)t38);
    *((unsigned int *)t39) = (t51 | t52);
    t43 = (t14 + 4);
    t44 = (t31 + 4);
    t55 = *((unsigned int *)t14);
    t56 = (~(t55));
    t57 = *((unsigned int *)t43);
    t58 = (~(t57));
    t59 = *((unsigned int *)t31);
    t60 = (~(t59));
    t61 = *((unsigned int *)t44);
    t62 = (~(t61));
    t13 = (t56 & t58);
    t63 = (t60 & t62);
    t65 = (~(t13));
    t66 = (~(t63));
    t67 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t67 & t65);
    t68 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t68 & t66);
    t69 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t69 & t65);
    t70 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t70 & t66);
    goto LAB59;

LAB60:    xsi_set_current_line(92, ng0);

LAB63:    xsi_set_current_line(93, ng0);
    t53 = (t0 + 2232U);
    t54 = *((char **)t53);
    t53 = (t0 + 4072);
    xsi_vlogvar_wait_assign_value(t53, t54, 0, 0, 32, 0LL);
    xsi_set_current_line(94, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4392);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(95, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4232);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 744);
    t3 = *((char **)t2);
    t2 = (t0 + 4552);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 2, 0LL);
    goto LAB62;

LAB64:    xsi_set_current_line(98, ng0);

LAB67:    xsi_set_current_line(99, ng0);
    t5 = ((char*)((ng4)));
    t11 = (t0 + 3432);
    xsi_vlogvar_wait_assign_value(t11, t5, 0, 0, 1, 0LL);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 880);
    t3 = *((char **)t2);
    t2 = (t0 + 4552);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 2, 0LL);
    goto LAB66;

LAB68:    xsi_set_current_line(103, ng0);

LAB71:    xsi_set_current_line(104, ng0);
    t11 = ((char*)((ng2)));
    t12 = (t0 + 3912);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 1, 0LL);
    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4392);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(106, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4232);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(108, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3432);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 472);
    t3 = *((char **)t2);
    t2 = (t0 + 4552);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 2, 0LL);
    goto LAB70;

LAB72:    xsi_set_current_line(112, ng0);

LAB75:    xsi_set_current_line(113, ng0);
    t11 = ((char*)((ng2)));
    t12 = (t0 + 4392);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 1, 0LL);
    xsi_set_current_line(114, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4232);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(116, ng0);
    t2 = (t0 + 2712U);
    t3 = *((char **)t2);
    t2 = (t0 + 3592);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(118, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3432);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(119, ng0);
    t2 = (t0 + 472);
    t3 = *((char **)t2);
    t2 = (t0 + 4552);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 2, 0LL);
    goto LAB74;

LAB76:    *((unsigned int *)t14) = 1;
    goto LAB79;

LAB80:    xsi_set_current_line(123, ng0);
    t15 = (t0 + 472);
    t16 = *((char **)t15);
    t15 = (t0 + 4552);
    xsi_vlogvar_wait_assign_value(t15, t16, 0, 0, 2, 0LL);
    goto LAB82;

}


extern void work_m_06964795277565337652_1681646350_init()
{
	static char *pe[] = {(void *)Cont_49_0,(void *)Always_59_1};
	xsi_register_didat("work_m_06964795277565337652_1681646350", "isim/testbench_isim_beh.exe.sim/work/m_06964795277565337652_1681646350.didat");
	xsi_register_executes(pe);
}
