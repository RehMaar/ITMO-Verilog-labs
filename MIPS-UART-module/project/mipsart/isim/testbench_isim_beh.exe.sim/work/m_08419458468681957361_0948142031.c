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
static const char *ng0 = "/home/maar/Code/Git/Verilog/MIPS-UART-module/src/hdl/uart/fifo.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static unsigned int ng3[] = {1U, 0U};



static void Cont_32_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 4984U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 4072);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 6176);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 6048);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_33_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 5232U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 3912);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 6240);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 6064);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Always_35_2(char *t0)
{
    char t13[8];
    char t14[8];
    char t17[8];
    char t18[8];
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
    char *t15;
    char *t16;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    int t30;
    char *t31;
    unsigned int t32;
    int t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    int t37;
    int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    char *t68;
    unsigned int t69;
    char *t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    int t74;
    int t75;

LAB0:    t1 = (t0 + 5480U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 6080);
    *((int *)t2) = 1;
    t3 = (t0 + 5512);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(35, ng0);

LAB5:    xsi_set_current_line(36, ng0);
    t4 = (t0 + 1752U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(43, ng0);

LAB15:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 2072U);
    t3 = *((char **)t2);
    t2 = (t0 + 3912);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t13, 0, 8);
    t11 = (t5 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB19;

LAB17:    if (*((unsigned int *)t11) == 0)
        goto LAB16;

LAB18:    t12 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t12) = 1;

LAB19:    t29 = *((unsigned int *)t3);
    t32 = *((unsigned int *)t13);
    t35 = (t29 & t32);
    *((unsigned int *)t14) = t35;
    t15 = (t3 + 4);
    t16 = (t13 + 4);
    t19 = (t14 + 4);
    t36 = *((unsigned int *)t15);
    t39 = *((unsigned int *)t16);
    t40 = (t36 | t39);
    *((unsigned int *)t19) = t40;
    t41 = *((unsigned int *)t19);
    t42 = (t41 != 0);
    if (t42 == 1)
        goto LAB20;

LAB21:
LAB22:    t22 = (t14 + 4);
    t59 = *((unsigned int *)t22);
    t60 = (~(t59));
    t61 = *((unsigned int *)t14);
    t62 = (t61 & t60);
    t63 = (t62 != 0);
    if (t63 > 0)
        goto LAB23;

LAB24:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1912U);
    t3 = *((char **)t2);
    t2 = (t0 + 2552U);
    t4 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t4 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB32;

LAB30:    if (*((unsigned int *)t2) == 0)
        goto LAB29;

LAB31:    t5 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t5) = 1;

LAB32:    t29 = *((unsigned int *)t3);
    t32 = *((unsigned int *)t13);
    t35 = (t29 & t32);
    *((unsigned int *)t14) = t35;
    t11 = (t3 + 4);
    t12 = (t13 + 4);
    t15 = (t14 + 4);
    t36 = *((unsigned int *)t11);
    t39 = *((unsigned int *)t12);
    t40 = (t36 | t39);
    *((unsigned int *)t15) = t40;
    t41 = *((unsigned int *)t15);
    t42 = (t41 != 0);
    if (t42 == 1)
        goto LAB33;

LAB34:
LAB35:    t20 = (t14 + 4);
    t59 = *((unsigned int *)t20);
    t60 = (~(t59));
    t61 = *((unsigned int *)t14);
    t62 = (t61 & t60);
    t63 = (t62 != 0);
    if (t63 > 0)
        goto LAB36;

LAB37:
LAB38:
LAB25:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(36, ng0);

LAB9:    xsi_set_current_line(37, ng0);
    xsi_set_current_line(37, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3112);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 32);

LAB10:    t2 = (t0 + 3112);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 472);
    t11 = *((char **)t5);
    t5 = ((char*)((ng2)));
    memset(t13, 0, 8);
    xsi_vlog_signed_minus(t13, 32, t11, 32, t5, 32);
    memset(t14, 0, 8);
    xsi_vlog_signed_leq(t14, 32, t4, 32, t13, 32);
    t12 = (t14 + 4);
    t6 = *((unsigned int *)t12);
    t7 = (~(t6));
    t8 = *((unsigned int *)t14);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB11;

LAB12:    xsi_set_current_line(39, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3592);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3432);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2952);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);
    goto LAB8;

LAB11:    xsi_set_current_line(38, ng0);
    t15 = ((char*)((ng1)));
    t16 = (t0 + 3272);
    t19 = (t0 + 3272);
    t20 = (t19 + 72U);
    t21 = *((char **)t20);
    t22 = (t0 + 3272);
    t23 = (t22 + 64U);
    t24 = *((char **)t23);
    t25 = (t0 + 3112);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    xsi_vlog_generic_convert_array_indices(t17, t18, t21, t24, 2, 1, t27, 32, 1);
    t28 = (t17 + 4);
    t29 = *((unsigned int *)t28);
    t30 = (!(t29));
    t31 = (t18 + 4);
    t32 = *((unsigned int *)t31);
    t33 = (!(t32));
    t34 = (t30 && t33);
    if (t34 == 1)
        goto LAB13;

LAB14:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 3112);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t13, 0, 8);
    xsi_vlog_signed_add(t13, 32, t4, 32, t5, 32);
    t11 = (t0 + 3112);
    xsi_vlogvar_assign_value(t11, t13, 0, 0, 32);
    goto LAB10;

LAB13:    t35 = *((unsigned int *)t17);
    t36 = *((unsigned int *)t18);
    t37 = (t35 - t36);
    t38 = (t37 + 1);
    xsi_vlogvar_wait_assign_value(t16, t15, 0, *((unsigned int *)t18), t38, 0LL);
    goto LAB14;

LAB16:    *((unsigned int *)t13) = 1;
    goto LAB19;

LAB20:    t43 = *((unsigned int *)t14);
    t44 = *((unsigned int *)t19);
    *((unsigned int *)t14) = (t43 | t44);
    t20 = (t3 + 4);
    t21 = (t13 + 4);
    t45 = *((unsigned int *)t3);
    t46 = (~(t45));
    t47 = *((unsigned int *)t20);
    t48 = (~(t47));
    t49 = *((unsigned int *)t13);
    t50 = (~(t49));
    t51 = *((unsigned int *)t21);
    t52 = (~(t51));
    t30 = (t46 & t48);
    t33 = (t50 & t52);
    t53 = (~(t30));
    t54 = (~(t33));
    t55 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t55 & t53);
    t56 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t56 & t54);
    t57 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t57 & t53);
    t58 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t58 & t54);
    goto LAB22;

LAB23:    xsi_set_current_line(44, ng0);

LAB26:    xsi_set_current_line(45, ng0);
    t23 = (t0 + 2232U);
    t24 = *((char **)t23);
    t23 = (t0 + 3272);
    t25 = (t0 + 3272);
    t26 = (t25 + 72U);
    t27 = *((char **)t26);
    t28 = (t0 + 3272);
    t31 = (t28 + 64U);
    t64 = *((char **)t31);
    t65 = (t0 + 3592);
    t66 = (t65 + 56U);
    t67 = *((char **)t66);
    xsi_vlog_generic_convert_array_indices(t17, t18, t27, t64, 2, 1, t67, 4, 2);
    t68 = (t17 + 4);
    t69 = *((unsigned int *)t68);
    t34 = (!(t69));
    t70 = (t18 + 4);
    t71 = *((unsigned int *)t70);
    t37 = (!(t71));
    t38 = (t34 && t37);
    if (t38 == 1)
        goto LAB27;

LAB28:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 3592);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 4, t4, 4, t5, 4);
    t11 = (t0 + 3592);
    xsi_vlogvar_wait_assign_value(t11, t13, 0, 0, 4, 0LL);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 744);
    t3 = *((char **)t2);
    t2 = (t0 + 3752);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    goto LAB25;

LAB27:    t72 = *((unsigned int *)t17);
    t73 = *((unsigned int *)t18);
    t74 = (t72 - t73);
    t75 = (t74 + 1);
    xsi_vlogvar_wait_assign_value(t23, t24, 0, *((unsigned int *)t18), t75, 0LL);
    goto LAB28;

LAB29:    *((unsigned int *)t13) = 1;
    goto LAB32;

LAB33:    t43 = *((unsigned int *)t14);
    t44 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t43 | t44);
    t16 = (t3 + 4);
    t19 = (t13 + 4);
    t45 = *((unsigned int *)t3);
    t46 = (~(t45));
    t47 = *((unsigned int *)t16);
    t48 = (~(t47));
    t49 = *((unsigned int *)t13);
    t50 = (~(t49));
    t51 = *((unsigned int *)t19);
    t52 = (~(t51));
    t30 = (t46 & t48);
    t33 = (t50 & t52);
    t53 = (~(t30));
    t54 = (~(t33));
    t55 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t55 & t53);
    t56 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t56 & t54);
    t57 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t57 & t53);
    t58 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t58 & t54);
    goto LAB35;

LAB36:    xsi_set_current_line(49, ng0);

LAB39:    xsi_set_current_line(50, ng0);
    t21 = (t0 + 3272);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t0 + 3272);
    t25 = (t24 + 72U);
    t26 = *((char **)t25);
    t27 = (t0 + 3272);
    t28 = (t27 + 64U);
    t31 = *((char **)t28);
    t64 = (t0 + 3432);
    t65 = (t64 + 56U);
    t66 = *((char **)t65);
    xsi_vlog_generic_get_array_select_value(t17, 8, t23, t26, t31, 2, 1, t66, 4, 2);
    t67 = (t0 + 2952);
    xsi_vlogvar_wait_assign_value(t67, t17, 0, 0, 8, 0LL);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 3432);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 4, t4, 4, t5, 4);
    t11 = (t0 + 3432);
    xsi_vlogvar_wait_assign_value(t11, t13, 0, 0, 4, 0LL);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 880);
    t3 = *((char **)t2);
    t2 = (t0 + 3752);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    goto LAB38;

}

static void Always_57_3(char *t0)
{
    char t15[8];
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
    char *t14;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;

LAB0:    t1 = (t0 + 5728U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 6096);
    *((int *)t2) = 1;
    t3 = (t0 + 5760);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(58, ng0);
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

LAB6:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 3752);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB9:    t5 = (t0 + 880);
    t11 = *((char **)t5);
    t13 = xsi_vlog_unsigned_case_compare(t4, 1, t11, 32);
    if (t13 == 1)
        goto LAB10;

LAB11:    t2 = (t0 + 744);
    t3 = *((char **)t2);
    t13 = xsi_vlog_unsigned_case_compare(t4, 1, t3, 32);
    if (t13 == 1)
        goto LAB12;

LAB13:
LAB14:
LAB7:    goto LAB2;

LAB5:    xsi_set_current_line(58, ng0);

LAB8:    xsi_set_current_line(59, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3912);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 1, 0LL);
    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4072);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB7;

LAB10:    xsi_set_current_line(65, ng0);

LAB15:    xsi_set_current_line(66, ng0);
    t5 = ((char*)((ng1)));
    t12 = (t0 + 3912);
    xsi_vlogvar_wait_assign_value(t12, t5, 0, 0, 1, 0LL);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 3592);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t11 = (t0 + 3432);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memset(t15, 0, 8);
    t16 = (t5 + 4);
    t17 = (t14 + 4);
    t6 = *((unsigned int *)t5);
    t7 = *((unsigned int *)t14);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t16);
    t10 = *((unsigned int *)t17);
    t18 = (t9 ^ t10);
    t19 = (t8 | t18);
    t20 = *((unsigned int *)t16);
    t21 = *((unsigned int *)t17);
    t22 = (t20 | t21);
    t23 = (~(t22));
    t24 = (t19 & t23);
    if (t24 != 0)
        goto LAB19;

LAB16:    if (t22 != 0)
        goto LAB18;

LAB17:    *((unsigned int *)t15) = 1;

LAB19:    t26 = (t15 + 4);
    t27 = *((unsigned int *)t26);
    t28 = (~(t27));
    t29 = *((unsigned int *)t15);
    t30 = (t29 & t28);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB20;

LAB21:    xsi_set_current_line(70, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4072);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB22:    goto LAB14;

LAB12:    xsi_set_current_line(73, ng0);

LAB23:    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng1)));
    t5 = (t0 + 4072);
    xsi_vlogvar_wait_assign_value(t5, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 3592);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t11 = (t0 + 3432);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memset(t15, 0, 8);
    t16 = (t5 + 4);
    t17 = (t14 + 4);
    t6 = *((unsigned int *)t5);
    t7 = *((unsigned int *)t14);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t16);
    t10 = *((unsigned int *)t17);
    t18 = (t9 ^ t10);
    t19 = (t8 | t18);
    t20 = *((unsigned int *)t16);
    t21 = *((unsigned int *)t17);
    t22 = (t20 | t21);
    t23 = (~(t22));
    t24 = (t19 & t23);
    if (t24 != 0)
        goto LAB27;

LAB24:    if (t22 != 0)
        goto LAB26;

LAB25:    *((unsigned int *)t15) = 1;

LAB27:    t26 = (t15 + 4);
    t27 = *((unsigned int *)t26);
    t28 = (~(t27));
    t29 = *((unsigned int *)t15);
    t30 = (t29 & t28);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB28;

LAB29:    xsi_set_current_line(78, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3912);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB30:    goto LAB14;

LAB18:    t25 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB19;

LAB20:    xsi_set_current_line(68, ng0);
    t32 = ((char*)((ng2)));
    t33 = (t0 + 4072);
    xsi_vlogvar_wait_assign_value(t33, t32, 0, 0, 1, 0LL);
    goto LAB22;

LAB26:    t25 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB27;

LAB28:    xsi_set_current_line(76, ng0);
    t32 = ((char*)((ng2)));
    t33 = (t0 + 3912);
    xsi_vlogvar_wait_assign_value(t33, t32, 0, 0, 1, 0LL);
    goto LAB30;

}


extern void work_m_08419458468681957361_0948142031_init()
{
	static char *pe[] = {(void *)Cont_32_0,(void *)Cont_33_1,(void *)Always_35_2,(void *)Always_57_3};
	xsi_register_didat("work_m_08419458468681957361_0948142031", "isim/testbench_isim_beh.exe.sim/work/m_08419458468681957361_0948142031.didat");
	xsi_register_executes(pe);
}
