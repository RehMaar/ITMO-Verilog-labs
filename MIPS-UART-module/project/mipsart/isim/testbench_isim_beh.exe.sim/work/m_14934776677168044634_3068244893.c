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
static const char *ng0 = "/home/maar/Code/Git/Verilog/MIPS-UART-module/src/hdl/ram_wb/wb_ram_sc_sw.v";
static unsigned int ng1[] = {512U, 0U};
static const char *ng2 = "data.rom";
static int ng3[] = {0, 0};
static unsigned int ng4[] = {1023U, 0U};
static unsigned int ng5[] = {0U, 0U};



static void NetDecl_12_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 3568U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(12, ng0);
    t2 = (t0 + 1616U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_minus(t4, 32, t3, 32, t2, 32);
    t5 = (t0 + 4480);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31U);
    t10 = (t0 + 4384);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Initial_16_1(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;

LAB0:    xsi_set_current_line(16, ng0);

LAB2:    xsi_set_current_line(17, ng0);
    t1 = (t0 + 2656);
    t2 = ((char*)((ng3)));
    t3 = ((char*)((ng4)));
    t4 = ((char*)((ng1)));
    memset(t5, 0, 8);
    xsi_vlog_unsigned_minus(t5, 32, t3, 32, t4, 32);
    xsi_vlogfile_readmemh(ng2, 0, t1, 1, *((unsigned int *)t2), 1, *((unsigned int *)t5));

LAB1:    return;
}

static void Always_20_2(char *t0)
{
    char t7[8];
    char t24[8];
    char t30[8];
    char t36[8];
    char t72[8];
    char t73[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    int t56;
    int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    char *t70;
    char *t71;
    char *t74;
    char *t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    char *t80;
    char *t81;
    unsigned int t82;
    int t83;
    char *t84;
    unsigned int t85;
    int t86;
    int t87;
    unsigned int t88;
    unsigned int t89;
    int t90;
    int t91;

LAB0:    t1 = (t0 + 4064U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(20, ng0);
    t2 = (t0 + 4400);
    *((int *)t2) = 1;
    t3 = (t0 + 4096);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(20, ng0);

LAB5:    xsi_set_current_line(21, ng0);
    t4 = (t0 + 2656);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t0 + 2656);
    t9 = (t8 + 72U);
    t10 = *((char **)t9);
    t11 = (t0 + 2656);
    t12 = (t11 + 64U);
    t13 = *((char **)t12);
    t14 = (t0 + 2096U);
    t15 = *((char **)t14);
    xsi_vlog_generic_get_array_select_value(t7, 32, t6, t10, t13, 2, 1, t15, 32, 2);
    t14 = (t0 + 2496);
    xsi_vlogvar_wait_assign_value(t14, t7, 0, 0, 32, 0LL);
    xsi_set_current_line(23, ng0);
    t2 = (t0 + 1776U);
    t3 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t3 + 4);
    t16 = *((unsigned int *)t2);
    t17 = (~(t16));
    t18 = *((unsigned int *)t3);
    t19 = (t18 & t17);
    t20 = (t19 & 1U);
    if (t20 != 0)
        goto LAB6;

LAB7:    if (*((unsigned int *)t2) != 0)
        goto LAB8;

LAB9:    t5 = (t7 + 4);
    t21 = *((unsigned int *)t7);
    t22 = *((unsigned int *)t5);
    t23 = (t21 || t22);
    if (t23 > 0)
        goto LAB10;

LAB11:    memcpy(t36, t7, 8);

LAB12:    t64 = (t36 + 4);
    t65 = *((unsigned int *)t64);
    t66 = (~(t65));
    t67 = *((unsigned int *)t36);
    t68 = (t67 & t66);
    t69 = (t68 != 0);
    if (t69 > 0)
        goto LAB24;

LAB25:
LAB26:    goto LAB2;

LAB6:    *((unsigned int *)t7) = 1;
    goto LAB9;

LAB8:    t4 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB10:    t6 = ((char*)((ng5)));
    memset(t24, 0, 8);
    t8 = (t6 + 4);
    t25 = *((unsigned int *)t8);
    t26 = (~(t25));
    t27 = *((unsigned int *)t6);
    t28 = (t27 & t26);
    t29 = (t28 & 1U);
    if (t29 != 0)
        goto LAB16;

LAB14:    if (*((unsigned int *)t8) == 0)
        goto LAB13;

LAB15:    t9 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t9) = 1;

LAB16:    memset(t30, 0, 8);
    t10 = (t24 + 4);
    t31 = *((unsigned int *)t10);
    t32 = (~(t31));
    t33 = *((unsigned int *)t24);
    t34 = (t33 & t32);
    t35 = (t34 & 1U);
    if (t35 != 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t10) != 0)
        goto LAB19;

LAB20:    t37 = *((unsigned int *)t7);
    t38 = *((unsigned int *)t30);
    t39 = (t37 & t38);
    *((unsigned int *)t36) = t39;
    t12 = (t7 + 4);
    t13 = (t30 + 4);
    t14 = (t36 + 4);
    t40 = *((unsigned int *)t12);
    t41 = *((unsigned int *)t13);
    t42 = (t40 | t41);
    *((unsigned int *)t14) = t42;
    t43 = *((unsigned int *)t14);
    t44 = (t43 != 0);
    if (t44 == 1)
        goto LAB21;

LAB22:
LAB23:    goto LAB12;

LAB13:    *((unsigned int *)t24) = 1;
    goto LAB16;

LAB17:    *((unsigned int *)t30) = 1;
    goto LAB20;

LAB19:    t11 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB20;

LAB21:    t45 = *((unsigned int *)t36);
    t46 = *((unsigned int *)t14);
    *((unsigned int *)t36) = (t45 | t46);
    t15 = (t7 + 4);
    t47 = (t30 + 4);
    t48 = *((unsigned int *)t7);
    t49 = (~(t48));
    t50 = *((unsigned int *)t15);
    t51 = (~(t50));
    t52 = *((unsigned int *)t30);
    t53 = (~(t52));
    t54 = *((unsigned int *)t47);
    t55 = (~(t54));
    t56 = (t49 & t51);
    t57 = (t53 & t55);
    t58 = (~(t56));
    t59 = (~(t57));
    t60 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t60 & t58);
    t61 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t61 & t59);
    t62 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t62 & t58);
    t63 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t63 & t59);
    goto LAB23;

LAB24:    xsi_set_current_line(24, ng0);
    t70 = (t0 + 1456U);
    t71 = *((char **)t70);
    t70 = (t0 + 2656);
    t74 = (t0 + 2656);
    t75 = (t74 + 72U);
    t76 = *((char **)t75);
    t77 = (t0 + 2656);
    t78 = (t77 + 64U);
    t79 = *((char **)t78);
    t80 = (t0 + 2096U);
    t81 = *((char **)t80);
    xsi_vlog_generic_convert_array_indices(t72, t73, t76, t79, 2, 1, t81, 32, 2);
    t80 = (t72 + 4);
    t82 = *((unsigned int *)t80);
    t83 = (!(t82));
    t84 = (t73 + 4);
    t85 = *((unsigned int *)t84);
    t86 = (!(t85));
    t87 = (t83 && t86);
    if (t87 == 1)
        goto LAB27;

LAB28:    goto LAB26;

LAB27:    t88 = *((unsigned int *)t72);
    t89 = *((unsigned int *)t73);
    t90 = (t88 - t89);
    t91 = (t90 + 1);
    xsi_vlogvar_wait_assign_value(t70, t71, 0, *((unsigned int *)t73), t91, 0LL);
    goto LAB28;

}


extern void work_m_14934776677168044634_3068244893_init()
{
	static char *pe[] = {(void *)NetDecl_12_0,(void *)Initial_16_1,(void *)Always_20_2};
	xsi_register_didat("work_m_14934776677168044634_3068244893", "isim/testbench_isim_beh.exe.sim/work/m_14934776677168044634_3068244893.didat");
	xsi_register_executes(pe);
}
