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
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_3488768496604610246_503743352(char *, unsigned char , unsigned char );


char *work_p_0927401562_sub_16272786942359672271_2818443766(char *t1, char *t2, char *t3, char *t4, unsigned char t5)
{
    char t6[128];
    char t7[24];
    char t10[16];
    char *t0;
    char *t8;
    unsigned int t9;
    char *t11;
    int t12;
    char *t13;
    int t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;
    int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    unsigned char t28;
    char *t29;
    char *t30;
    char *t31;
    int t32;
    char *t33;
    int t34;
    char *t35;
    int t36;
    int t37;
    int t38;
    int t39;
    int t40;
    char *t41;
    int t42;
    char *t43;
    int t44;
    int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    unsigned char t49;
    unsigned char t50;
    char *t51;
    char *t52;
    int t53;
    char *t54;
    int t55;
    int t56;
    unsigned int t57;
    char *t58;
    int t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;

LAB0:    t8 = (t4 + 12U);
    t9 = *((unsigned int *)t8);
    t9 = (t9 * 1U);
    t11 = (t4 + 0U);
    t12 = *((int *)t11);
    t13 = (t4 + 4U);
    t14 = *((int *)t13);
    t15 = (t4 + 8U);
    t16 = *((int *)t15);
    t17 = (t10 + 0U);
    t18 = (t17 + 0U);
    *((int *)t18) = t12;
    t18 = (t17 + 4U);
    *((int *)t18) = t14;
    t18 = (t17 + 8U);
    *((int *)t18) = t16;
    t19 = (t14 - t12);
    t20 = (t19 * t16);
    t20 = (t20 + 1);
    t18 = (t17 + 12U);
    *((unsigned int *)t18) = t20;
    t18 = (t6 + 4U);
    t21 = ((IEEE_P_2592010699) + 4000);
    t22 = (t18 + 88U);
    *((char **)t22) = t21;
    t23 = (char *)alloca(t9);
    t24 = (t18 + 56U);
    *((char **)t24) = t23;
    xsi_type_set_default_value(t21, t23, t10);
    t25 = (t18 + 64U);
    *((char **)t25) = t10;
    t26 = (t18 + 80U);
    *((unsigned int *)t26) = t9;
    t27 = (t7 + 4U);
    t28 = (t3 != 0);
    if (t28 == 1)
        goto LAB3;

LAB2:    t29 = (t7 + 12U);
    *((char **)t29) = t4;
    t30 = (t7 + 20U);
    *((unsigned char *)t30) = t5;
    t31 = (t4 + 8U);
    t32 = *((int *)t31);
    t33 = (t4 + 4U);
    t34 = *((int *)t33);
    t35 = (t4 + 0U);
    t36 = *((int *)t35);
    t37 = t36;
    t38 = t34;

LAB4:    t39 = (t38 * t32);
    t40 = (t37 * t32);
    if (t40 <= t39)
        goto LAB5;

LAB7:    t8 = (t18 + 56U);
    t11 = *((char **)t8);
    t8 = (t10 + 12U);
    t9 = *((unsigned int *)t8);
    t9 = (t9 * 1U);
    t0 = xsi_get_transient_memory(t9);
    memcpy(t0, t11, t9);
    t13 = (t10 + 0U);
    t12 = *((int *)t13);
    t15 = (t10 + 4U);
    t14 = *((int *)t15);
    t17 = (t10 + 8U);
    t16 = *((int *)t17);
    t21 = (t2 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = t12;
    t22 = (t21 + 4U);
    *((int *)t22) = t14;
    t22 = (t21 + 8U);
    *((int *)t22) = t16;
    t19 = (t14 - t12);
    t20 = (t19 * t16);
    t20 = (t20 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t20;

LAB1:    return t0;
LAB3:    *((char **)t27) = t3;
    goto LAB2;

LAB5:    t41 = (t4 + 0U);
    t42 = *((int *)t41);
    t43 = (t4 + 8U);
    t44 = *((int *)t43);
    t45 = (t37 - t42);
    t20 = (t45 * t44);
    t46 = (1U * t20);
    t47 = (0 + t46);
    t48 = (t3 + t47);
    t49 = *((unsigned char *)t48);
    t50 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t49, t5);
    t51 = (t18 + 56U);
    t52 = *((char **)t51);
    t51 = (t10 + 0U);
    t53 = *((int *)t51);
    t54 = (t10 + 8U);
    t55 = *((int *)t54);
    t56 = (t37 - t53);
    t57 = (t56 * t55);
    t58 = (t10 + 4U);
    t59 = *((int *)t58);
    xsi_vhdl_check_range_of_index(t53, t59, t55, t37);
    t60 = (1U * t57);
    t61 = (0 + t60);
    t62 = (t52 + t61);
    *((unsigned char *)t62) = t50;

LAB6:    if (t37 == t38)
        goto LAB7;

LAB8:    t12 = (t37 + t32);
    t37 = t12;
    goto LAB4;

LAB9:;
}


extern void work_p_0927401562_init()
{
	static char *se[] = {(void *)work_p_0927401562_sub_16272786942359672271_2818443766};
	xsi_register_didat("work_p_0927401562", "isim/testbench_isim_beh.exe.sim/work/p_0927401562.didat");
	xsi_register_subprogram_executes(se);
}
