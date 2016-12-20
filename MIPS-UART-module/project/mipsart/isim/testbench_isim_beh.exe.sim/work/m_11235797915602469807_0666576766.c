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
static const char *ng0 = "/home/maar/Code/Git/Verilog/MIPS-UART-module/src/hdl/uart/tx.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {1U, 0U};
static unsigned int ng5[] = {2U, 0U};
static int ng6[] = {7, 0};
static unsigned int ng7[] = {3U, 0U};
static unsigned int ng8[] = {4U, 0U};



static void Always_33_0(char *t0)
{
    char t13[8];
    char t22[8];
    char t36[8];
    char t43[8];
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
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    int t67;
    int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;
    char *t82;

LAB0:    t1 = (t0 + 5528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 5848);
    *((int *)t2) = 1;
    t3 = (t0 + 5560);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(34, ng0);
    t4 = (t0 + 2296U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB5;

LAB6:    xsi_set_current_line(42, ng0);

LAB9:    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4136);
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
        goto LAB13;

LAB10:    if (t18 != 0)
        goto LAB12;

LAB11:    *((unsigned int *)t13) = 1;

LAB13:    memset(t22, 0, 8);
    t23 = (t13 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t13);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t23) != 0)
        goto LAB16;

LAB17:    t30 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t30);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB18;

LAB19:    memcpy(t43, t22, 8);

LAB20:    t75 = (t43 + 4);
    t76 = *((unsigned int *)t75);
    t77 = (~(t76));
    t78 = *((unsigned int *)t43);
    t79 = (t78 & t77);
    t80 = (t79 != 0);
    if (t80 > 0)
        goto LAB28;

LAB29:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 2456U);
    t3 = *((char **)t2);
    t2 = (t0 + 4296);
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
        goto LAB35;

LAB33:    if (*((unsigned int *)t11) == 0)
        goto LAB32;

LAB34:    t12 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t12) = 1;

LAB35:    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t13);
    t16 = (t14 & t15);
    *((unsigned int *)t22) = t16;
    t21 = (t3 + 4);
    t23 = (t13 + 4);
    t29 = (t22 + 4);
    t17 = *((unsigned int *)t21);
    t18 = *((unsigned int *)t23);
    t19 = (t17 | t18);
    *((unsigned int *)t29) = t19;
    t20 = *((unsigned int *)t29);
    t24 = (t20 != 0);
    if (t24 == 1)
        goto LAB36;

LAB37:
LAB38:    t35 = (t22 + 4);
    t51 = *((unsigned int *)t35);
    t52 = (~(t51));
    t53 = *((unsigned int *)t22);
    t54 = (t53 & t52);
    t55 = (t54 != 0);
    if (t55 > 0)
        goto LAB39;

LAB40:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 2456U);
    t3 = *((char **)t2);
    t2 = (t0 + 4296);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);

LAB41:
LAB30:
LAB7:    goto LAB2;

LAB5:    xsi_set_current_line(34, ng0);

LAB8:    xsi_set_current_line(35, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 4136);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 3, 0LL);
    xsi_set_current_line(36, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3816);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3976);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(38, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3656);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);
    xsi_set_current_line(39, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3176);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3336);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB7;

LAB12:    t21 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB13;

LAB14:    *((unsigned int *)t22) = 1;
    goto LAB17;

LAB16:    t29 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB17;

LAB18:    t34 = (t0 + 2776U);
    t35 = *((char **)t34);
    memset(t36, 0, 8);
    t34 = (t35 + 4);
    t37 = *((unsigned int *)t34);
    t38 = (~(t37));
    t39 = *((unsigned int *)t35);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t34) != 0)
        goto LAB23;

LAB24:    t44 = *((unsigned int *)t22);
    t45 = *((unsigned int *)t36);
    t46 = (t44 & t45);
    *((unsigned int *)t43) = t46;
    t47 = (t22 + 4);
    t48 = (t36 + 4);
    t49 = (t43 + 4);
    t50 = *((unsigned int *)t47);
    t51 = *((unsigned int *)t48);
    t52 = (t50 | t51);
    *((unsigned int *)t49) = t52;
    t53 = *((unsigned int *)t49);
    t54 = (t53 != 0);
    if (t54 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB20;

LAB21:    *((unsigned int *)t36) = 1;
    goto LAB24;

LAB23:    t42 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t42) = 1;
    goto LAB24;

LAB25:    t55 = *((unsigned int *)t43);
    t56 = *((unsigned int *)t49);
    *((unsigned int *)t43) = (t55 | t56);
    t57 = (t22 + 4);
    t58 = (t36 + 4);
    t59 = *((unsigned int *)t22);
    t60 = (~(t59));
    t61 = *((unsigned int *)t57);
    t62 = (~(t61));
    t63 = *((unsigned int *)t36);
    t64 = (~(t63));
    t65 = *((unsigned int *)t58);
    t66 = (~(t65));
    t67 = (t60 & t62);
    t68 = (t64 & t66);
    t69 = (~(t67));
    t70 = (~(t68));
    t71 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t71 & t69);
    t72 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t72 & t70);
    t73 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t73 & t69);
    t74 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t74 & t70);
    goto LAB27;

LAB28:    xsi_set_current_line(43, ng0);

LAB31:    xsi_set_current_line(44, ng0);
    t81 = ((char*)((ng4)));
    t82 = (t0 + 4136);
    xsi_vlogvar_wait_assign_value(t82, t81, 0, 0, 3, 0LL);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 2616U);
    t3 = *((char **)t2);
    t2 = (t0 + 3656);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 8, 0LL);
    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3336);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2456U);
    t3 = *((char **)t2);
    t2 = (t0 + 4296);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    goto LAB30;

LAB32:    *((unsigned int *)t13) = 1;
    goto LAB35;

LAB36:    t25 = *((unsigned int *)t22);
    t26 = *((unsigned int *)t29);
    *((unsigned int *)t22) = (t25 | t26);
    t30 = (t3 + 4);
    t34 = (t13 + 4);
    t27 = *((unsigned int *)t3);
    t28 = (~(t27));
    t31 = *((unsigned int *)t30);
    t32 = (~(t31));
    t33 = *((unsigned int *)t13);
    t37 = (~(t33));
    t38 = *((unsigned int *)t34);
    t39 = (~(t38));
    t67 = (t28 & t32);
    t68 = (t37 & t39);
    t40 = (~(t67));
    t41 = (~(t68));
    t44 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t44 & t40);
    t45 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t45 & t41);
    t46 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t46 & t40);
    t50 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t50 & t41);
    goto LAB38;

LAB39:    xsi_set_current_line(50, ng0);

LAB42:    xsi_set_current_line(51, ng0);
    t42 = (t0 + 2456U);
    t47 = *((char **)t42);
    t42 = (t0 + 4296);
    xsi_vlogvar_assign_value(t42, t47, 0, 0, 1);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 4136);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB43:    t5 = ((char*)((ng4)));
    t67 = xsi_vlog_unsigned_case_compare(t4, 3, t5, 3);
    if (t67 == 1)
        goto LAB44;

LAB45:    t2 = ((char*)((ng5)));
    t67 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t67 == 1)
        goto LAB46;

LAB47:    t2 = ((char*)((ng7)));
    t67 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t67 == 1)
        goto LAB48;

LAB49:    t2 = ((char*)((ng8)));
    t67 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t67 == 1)
        goto LAB50;

LAB51:
LAB52:    goto LAB41;

LAB44:    xsi_set_current_line(54, ng0);

LAB53:    xsi_set_current_line(55, ng0);
    t11 = ((char*)((ng5)));
    t12 = (t0 + 4136);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 3, 0LL);
    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3176);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB52;

LAB46:    xsi_set_current_line(59, ng0);

LAB54:    xsi_set_current_line(60, ng0);
    t3 = (t0 + 3656);
    t5 = (t3 + 56U);
    t11 = *((char **)t5);
    memset(t13, 0, 8);
    t12 = (t13 + 4);
    t21 = (t11 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (t6 >> 0);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t21);
    t10 = (t9 >> 0);
    t14 = (t10 & 1);
    *((unsigned int *)t12) = t14;
    t23 = (t0 + 3176);
    xsi_vlogvar_wait_assign_value(t23, t13, 0, 0, 1, 0LL);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 3656);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t11 = ((char*)((ng3)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_rshift(t13, 8, t5, 8, t11, 32);
    t12 = (t0 + 3656);
    xsi_vlogvar_wait_assign_value(t12, t13, 0, 0, 8, 0LL);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 3976);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t11 = ((char*)((ng4)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 3, t5, 3, t11, 3);
    t12 = (t0 + 3976);
    xsi_vlogvar_wait_assign_value(t12, t13, 0, 0, 3, 0LL);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3976);
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
        goto LAB58;

LAB55:    if (t18 != 0)
        goto LAB57;

LAB56:    *((unsigned int *)t13) = 1;

LAB58:    t29 = (t13 + 4);
    t24 = *((unsigned int *)t29);
    t25 = (~(t24));
    t26 = *((unsigned int *)t13);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB59;

LAB60:
LAB61:    goto LAB52;

LAB48:    xsi_set_current_line(69, ng0);

LAB63:    xsi_set_current_line(70, ng0);
    t3 = ((char*)((ng8)));
    t5 = (t0 + 4136);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 3, 0LL);
    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3176);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB52;

LAB50:    xsi_set_current_line(74, ng0);

LAB64:    xsi_set_current_line(75, ng0);
    t3 = (t0 + 3816);
    t5 = (t3 + 56U);
    t11 = *((char **)t5);
    t12 = ((char*)((ng4)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 5, t11, 5, t12, 5);
    t21 = (t0 + 3816);
    xsi_vlogvar_wait_assign_value(t21, t13, 0, 0, 5, 0LL);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 3816);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t11 = (t0 + 1424);
    t12 = *((char **)t11);
    memset(t13, 0, 8);
    t11 = (t5 + 4);
    t21 = (t12 + 4);
    t6 = *((unsigned int *)t5);
    t7 = *((unsigned int *)t12);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t21);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t11);
    t17 = *((unsigned int *)t21);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB68;

LAB65:    if (t18 != 0)
        goto LAB67;

LAB66:    *((unsigned int *)t13) = 1;

LAB68:    t29 = (t13 + 4);
    t24 = *((unsigned int *)t29);
    t25 = (~(t24));
    t26 = *((unsigned int *)t13);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB69;

LAB70:
LAB71:    goto LAB52;

LAB57:    t23 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB58;

LAB59:    xsi_set_current_line(63, ng0);

LAB62:    xsi_set_current_line(64, ng0);
    t30 = ((char*)((ng7)));
    t34 = (t0 + 4136);
    xsi_vlogvar_wait_assign_value(t34, t30, 0, 0, 3, 0LL);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3976);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB61;

LAB67:    t23 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB68;

LAB69:    xsi_set_current_line(76, ng0);

LAB72:    xsi_set_current_line(77, ng0);
    t30 = ((char*)((ng1)));
    t34 = (t0 + 4136);
    xsi_vlogvar_wait_assign_value(t34, t30, 0, 0, 3, 0LL);
    xsi_set_current_line(78, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3816);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3336);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB71;

}


extern void work_m_11235797915602469807_0666576766_init()
{
	static char *pe[] = {(void *)Always_33_0};
	xsi_register_didat("work_m_11235797915602469807_0666576766", "isim/testbench_isim_beh.exe.sim/work/m_11235797915602469807_0666576766.didat");
	xsi_register_executes(pe);
}
