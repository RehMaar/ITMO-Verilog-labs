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
static const char *ng0 = "/home/maar/Code/Git/Verilog/MIPS-UART-module/src/hdl/uart/tx_ctl.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};



static void Always_26_0(char *t0)
{
    char t14[8];
    char t18[8];
    char t27[8];
    char t35[8];
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
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    int t59;
    int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    char *t74;

LAB0:    t1 = (t0 + 4960U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 5280);
    *((int *)t2) = 1;
    t3 = (t0 + 4992);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(27, ng0);
    t4 = (t0 + 1888U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB5;

LAB6:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 4048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB9:    t5 = (t0 + 472);
    t11 = *((char **)t5);
    t13 = xsi_vlog_unsigned_case_compare(t4, 3, t11, 32);
    if (t13 == 1)
        goto LAB10;

LAB11:    t2 = (t0 + 608);
    t3 = *((char **)t2);
    t13 = xsi_vlog_unsigned_case_compare(t4, 3, t3, 32);
    if (t13 == 1)
        goto LAB12;

LAB13:    t2 = (t0 + 744);
    t3 = *((char **)t2);
    t13 = xsi_vlog_unsigned_case_compare(t4, 3, t3, 32);
    if (t13 == 1)
        goto LAB14;

LAB15:    t2 = (t0 + 880);
    t3 = *((char **)t2);
    t13 = xsi_vlog_unsigned_case_compare(t4, 3, t3, 32);
    if (t13 == 1)
        goto LAB16;

LAB17:    t2 = (t0 + 1016);
    t3 = *((char **)t2);
    t13 = xsi_vlog_unsigned_case_compare(t4, 3, t3, 32);
    if (t13 == 1)
        goto LAB18;

LAB19:
LAB20:
LAB7:    goto LAB2;

LAB5:    xsi_set_current_line(27, ng0);

LAB8:    xsi_set_current_line(28, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3728);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 1, 0LL);
    xsi_set_current_line(29, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(30, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(31, ng0);
    t2 = (t0 + 472);
    t3 = *((char **)t2);
    t2 = (t0 + 4048);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 3, 0LL);
    goto LAB7;

LAB10:    xsi_set_current_line(35, ng0);

LAB21:    xsi_set_current_line(36, ng0);
    t5 = ((char*)((ng1)));
    t12 = (t0 + 3728);
    xsi_vlogvar_wait_assign_value(t12, t5, 0, 0, 1, 0LL);
    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(38, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(39, ng0);
    t2 = (t0 + 608);
    t3 = *((char **)t2);
    t2 = (t0 + 4048);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 3, 0LL);
    goto LAB20;

LAB12:    xsi_set_current_line(42, ng0);

LAB22:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2688U);
    t5 = *((char **)t2);
    memset(t14, 0, 8);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB23;

LAB24:    if (*((unsigned int *)t2) != 0)
        goto LAB25;

LAB26:    t12 = (t14 + 4);
    t15 = *((unsigned int *)t14);
    t16 = *((unsigned int *)t12);
    t17 = (t15 || t16);
    if (t17 > 0)
        goto LAB27;

LAB28:    memcpy(t35, t14, 8);

LAB29:    t67 = (t35 + 4);
    t68 = *((unsigned int *)t67);
    t69 = (~(t68));
    t70 = *((unsigned int *)t35);
    t71 = (t70 & t69);
    t72 = (t71 != 0);
    if (t72 > 0)
        goto LAB41;

LAB42:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 2368U);
    t3 = *((char **)t2);
    memset(t14, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB44;

LAB45:    if (*((unsigned int *)t2) != 0)
        goto LAB46;

LAB47:    t11 = (t14 + 4);
    t15 = *((unsigned int *)t14);
    t16 = *((unsigned int *)t11);
    t17 = (t15 || t16);
    if (t17 > 0)
        goto LAB48;

LAB49:    memcpy(t35, t14, 8);

LAB50:    t50 = (t35 + 4);
    t68 = *((unsigned int *)t50);
    t69 = (~(t68));
    t70 = *((unsigned int *)t35);
    t71 = (t70 & t69);
    t72 = (t71 != 0);
    if (t72 > 0)
        goto LAB62;

LAB63:
LAB64:
LAB43:    goto LAB20;

LAB14:    xsi_set_current_line(49, ng0);

LAB65:    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng2)));
    t5 = (t0 + 3728);
    xsi_vlogvar_wait_assign_value(t5, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1016);
    t3 = *((char **)t2);
    t2 = (t0 + 4048);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 3, 0LL);
    goto LAB20;

LAB16:    xsi_set_current_line(54, ng0);

LAB66:    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng2)));
    t5 = (t0 + 3568);
    xsi_vlogvar_wait_assign_value(t5, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 472);
    t3 = *((char **)t2);
    t2 = (t0 + 4048);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 3, 0LL);
    goto LAB20;

LAB18:    xsi_set_current_line(59, ng0);

LAB67:    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng1)));
    t5 = (t0 + 3728);
    xsi_vlogvar_wait_assign_value(t5, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 472);
    t3 = *((char **)t2);
    t2 = (t0 + 4048);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 3, 0LL);
    goto LAB20;

LAB23:    *((unsigned int *)t14) = 1;
    goto LAB26;

LAB25:    t11 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB26;

LAB27:    t19 = (t0 + 3168U);
    t20 = *((char **)t19);
    memset(t18, 0, 8);
    t19 = (t20 + 4);
    t21 = *((unsigned int *)t19);
    t22 = (~(t21));
    t23 = *((unsigned int *)t20);
    t24 = (t23 & t22);
    t25 = (t24 & 1U);
    if (t25 != 0)
        goto LAB33;

LAB31:    if (*((unsigned int *)t19) == 0)
        goto LAB30;

LAB32:    t26 = (t18 + 4);
    *((unsigned int *)t18) = 1;
    *((unsigned int *)t26) = 1;

LAB33:    memset(t27, 0, 8);
    t28 = (t18 + 4);
    t29 = *((unsigned int *)t28);
    t30 = (~(t29));
    t31 = *((unsigned int *)t18);
    t32 = (t31 & t30);
    t33 = (t32 & 1U);
    if (t33 != 0)
        goto LAB34;

LAB35:    if (*((unsigned int *)t28) != 0)
        goto LAB36;

LAB37:    t36 = *((unsigned int *)t14);
    t37 = *((unsigned int *)t27);
    t38 = (t36 & t37);
    *((unsigned int *)t35) = t38;
    t39 = (t14 + 4);
    t40 = (t27 + 4);
    t41 = (t35 + 4);
    t42 = *((unsigned int *)t39);
    t43 = *((unsigned int *)t40);
    t44 = (t42 | t43);
    *((unsigned int *)t41) = t44;
    t45 = *((unsigned int *)t41);
    t46 = (t45 != 0);
    if (t46 == 1)
        goto LAB38;

LAB39:
LAB40:    goto LAB29;

LAB30:    *((unsigned int *)t18) = 1;
    goto LAB33;

LAB34:    *((unsigned int *)t27) = 1;
    goto LAB37;

LAB36:    t34 = (t27 + 4);
    *((unsigned int *)t27) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB37;

LAB38:    t47 = *((unsigned int *)t35);
    t48 = *((unsigned int *)t41);
    *((unsigned int *)t35) = (t47 | t48);
    t49 = (t14 + 4);
    t50 = (t27 + 4);
    t51 = *((unsigned int *)t14);
    t52 = (~(t51));
    t53 = *((unsigned int *)t49);
    t54 = (~(t53));
    t55 = *((unsigned int *)t27);
    t56 = (~(t55));
    t57 = *((unsigned int *)t50);
    t58 = (~(t57));
    t59 = (t52 & t54);
    t60 = (t56 & t58);
    t61 = (~(t59));
    t62 = (~(t60));
    t63 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t63 & t61);
    t64 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t64 & t62);
    t65 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t65 & t61);
    t66 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t66 & t62);
    goto LAB40;

LAB41:    xsi_set_current_line(44, ng0);
    t73 = (t0 + 744);
    t74 = *((char **)t73);
    t73 = (t0 + 4048);
    xsi_vlogvar_wait_assign_value(t73, t74, 0, 0, 3, 0LL);
    goto LAB43;

LAB44:    *((unsigned int *)t14) = 1;
    goto LAB47;

LAB46:    t5 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t5) = 1;
    goto LAB47;

LAB48:    t12 = (t0 + 3008U);
    t19 = *((char **)t12);
    memset(t18, 0, 8);
    t12 = (t19 + 4);
    t21 = *((unsigned int *)t12);
    t22 = (~(t21));
    t23 = *((unsigned int *)t19);
    t24 = (t23 & t22);
    t25 = (t24 & 1U);
    if (t25 != 0)
        goto LAB54;

LAB52:    if (*((unsigned int *)t12) == 0)
        goto LAB51;

LAB53:    t20 = (t18 + 4);
    *((unsigned int *)t18) = 1;
    *((unsigned int *)t20) = 1;

LAB54:    memset(t27, 0, 8);
    t26 = (t18 + 4);
    t29 = *((unsigned int *)t26);
    t30 = (~(t29));
    t31 = *((unsigned int *)t18);
    t32 = (t31 & t30);
    t33 = (t32 & 1U);
    if (t33 != 0)
        goto LAB55;

LAB56:    if (*((unsigned int *)t26) != 0)
        goto LAB57;

LAB58:    t36 = *((unsigned int *)t14);
    t37 = *((unsigned int *)t27);
    t38 = (t36 & t37);
    *((unsigned int *)t35) = t38;
    t34 = (t14 + 4);
    t39 = (t27 + 4);
    t40 = (t35 + 4);
    t42 = *((unsigned int *)t34);
    t43 = *((unsigned int *)t39);
    t44 = (t42 | t43);
    *((unsigned int *)t40) = t44;
    t45 = *((unsigned int *)t40);
    t46 = (t45 != 0);
    if (t46 == 1)
        goto LAB59;

LAB60:
LAB61:    goto LAB50;

LAB51:    *((unsigned int *)t18) = 1;
    goto LAB54;

LAB55:    *((unsigned int *)t27) = 1;
    goto LAB58;

LAB57:    t28 = (t27 + 4);
    *((unsigned int *)t27) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB58;

LAB59:    t47 = *((unsigned int *)t35);
    t48 = *((unsigned int *)t40);
    *((unsigned int *)t35) = (t47 | t48);
    t41 = (t14 + 4);
    t49 = (t27 + 4);
    t51 = *((unsigned int *)t14);
    t52 = (~(t51));
    t53 = *((unsigned int *)t41);
    t54 = (~(t53));
    t55 = *((unsigned int *)t27);
    t56 = (~(t55));
    t57 = *((unsigned int *)t49);
    t58 = (~(t57));
    t13 = (t52 & t54);
    t59 = (t56 & t58);
    t61 = (~(t13));
    t62 = (~(t59));
    t63 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t63 & t61);
    t64 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t64 & t62);
    t65 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t65 & t61);
    t66 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t66 & t62);
    goto LAB61;

LAB62:    xsi_set_current_line(46, ng0);
    t67 = (t0 + 880);
    t73 = *((char **)t67);
    t67 = (t0 + 4048);
    xsi_vlogvar_wait_assign_value(t67, t73, 0, 0, 3, 0LL);
    goto LAB64;

}


extern void work_m_08085148810611842349_1507917000_init()
{
	static char *pe[] = {(void *)Always_26_0};
	xsi_register_didat("work_m_08085148810611842349_1507917000", "isim/testbench_isim_beh.exe.sim/work/m_08085148810611842349_1507917000.didat");
	xsi_register_executes(pe);
}
