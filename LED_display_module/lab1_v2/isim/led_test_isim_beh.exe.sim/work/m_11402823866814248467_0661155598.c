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
static const char *ng0 = "/home/maar/stdy/Schema/lab1_v2/lab1_v2/led.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {32768U, 0U};
static int ng5[] = {2, 0};
static unsigned int ng6[] = {49152U, 0U};
static int ng7[] = {3, 0};
static unsigned int ng8[] = {57344U, 0U};
static int ng9[] = {4, 0};
static unsigned int ng10[] = {61440U, 0U};
static int ng11[] = {5, 0};
static unsigned int ng12[] = {63488U, 0U};
static int ng13[] = {6, 0};
static unsigned int ng14[] = {64512U, 0U};
static int ng15[] = {7, 0};
static unsigned int ng16[] = {65024U, 0U};
static int ng17[] = {8, 0};
static unsigned int ng18[] = {65280U, 0U};
static int ng19[] = {9, 0};
static unsigned int ng20[] = {65408U, 0U};
static int ng21[] = {10, 0};
static unsigned int ng22[] = {65472U, 0U};
static int ng23[] = {11, 0};
static unsigned int ng24[] = {65504U, 0U};
static int ng25[] = {12, 0};
static unsigned int ng26[] = {65520U, 0U};
static int ng27[] = {13, 0};
static unsigned int ng28[] = {65528U, 0U};
static int ng29[] = {14, 0};
static unsigned int ng30[] = {65532U, 0U};
static int ng31[] = {15, 0};
static unsigned int ng32[] = {65534U, 0U};
static int ng33[] = {16, 0};
static unsigned int ng34[] = {65535U, 0U};
static int ng35[] = {17, 0};
static int ng36[] = {18, 0};
static int ng37[] = {19, 0};
static int ng38[] = {20, 0};
static int ng39[] = {21, 0};
static int ng40[] = {22, 0};
static int ng41[] = {23, 0};
static int ng42[] = {24, 0};
static int ng43[] = {25, 0};
static int ng44[] = {26, 0};
static int ng45[] = {27, 0};
static int ng46[] = {28, 0};
static int ng47[] = {29, 0};
static int ng48[] = {30, 0};
static int ng49[] = {31, 0};



static void Cont_95_0(char *t0)
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

LAB0:    t1 = (t0 + 2680U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3344);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 65535U;
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
    xsi_driver_vfirst_trans(t5, 0, 15);
    t18 = (t0 + 3248);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Always_97_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 2928U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 3264);
    *((int *)t2) = 1;
    t3 = (t0 + 2960);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(98, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);

LAB5:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t4, 32);
    if (t6 == 1)
        goto LAB6;

LAB7:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB8;

LAB9:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB10;

LAB11:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng17)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng19)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng21)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng23)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB28;

LAB29:    t2 = ((char*)((ng25)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB30;

LAB31:    t2 = ((char*)((ng27)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB32;

LAB33:    t2 = ((char*)((ng29)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB34;

LAB35:    t2 = ((char*)((ng31)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB36;

LAB37:    t2 = ((char*)((ng33)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB38;

LAB39:    t2 = ((char*)((ng35)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB40;

LAB41:    t2 = ((char*)((ng36)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB42;

LAB43:    t2 = ((char*)((ng37)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB44;

LAB45:    t2 = ((char*)((ng38)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB46;

LAB47:    t2 = ((char*)((ng39)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB48;

LAB49:    t2 = ((char*)((ng40)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB50;

LAB51:    t2 = ((char*)((ng41)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB52;

LAB53:    t2 = ((char*)((ng42)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB54;

LAB55:    t2 = ((char*)((ng43)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB56;

LAB57:    t2 = ((char*)((ng44)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB58;

LAB59:    t2 = ((char*)((ng45)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB60;

LAB61:    t2 = ((char*)((ng46)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB62;

LAB63:    t2 = ((char*)((ng47)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB64;

LAB65:    t2 = ((char*)((ng48)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB66;

LAB67:    t2 = ((char*)((ng49)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB68;

LAB69:
LAB70:    goto LAB2;

LAB6:    xsi_set_current_line(99, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 16, 0LL);
    goto LAB70;

LAB8:    xsi_set_current_line(100, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB10:    xsi_set_current_line(101, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB12:    xsi_set_current_line(102, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB14:    xsi_set_current_line(103, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB16:    xsi_set_current_line(104, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB18:    xsi_set_current_line(105, ng0);
    t3 = ((char*)((ng14)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB20:    xsi_set_current_line(106, ng0);
    t3 = ((char*)((ng16)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB22:    xsi_set_current_line(107, ng0);
    t3 = ((char*)((ng18)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB24:    xsi_set_current_line(108, ng0);
    t3 = ((char*)((ng20)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB26:    xsi_set_current_line(109, ng0);
    t3 = ((char*)((ng22)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB28:    xsi_set_current_line(110, ng0);
    t3 = ((char*)((ng24)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB30:    xsi_set_current_line(111, ng0);
    t3 = ((char*)((ng26)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB32:    xsi_set_current_line(112, ng0);
    t3 = ((char*)((ng28)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB34:    xsi_set_current_line(113, ng0);
    t3 = ((char*)((ng30)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB36:    xsi_set_current_line(114, ng0);
    t3 = ((char*)((ng32)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB38:    xsi_set_current_line(115, ng0);
    t3 = ((char*)((ng34)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB40:    xsi_set_current_line(116, ng0);
    t3 = ((char*)((ng32)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB42:    xsi_set_current_line(117, ng0);
    t3 = ((char*)((ng30)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB44:    xsi_set_current_line(118, ng0);
    t3 = ((char*)((ng28)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB46:    xsi_set_current_line(119, ng0);
    t3 = ((char*)((ng26)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB48:    xsi_set_current_line(120, ng0);
    t3 = ((char*)((ng24)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB50:    xsi_set_current_line(121, ng0);
    t3 = ((char*)((ng22)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB52:    xsi_set_current_line(122, ng0);
    t3 = ((char*)((ng20)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB54:    xsi_set_current_line(123, ng0);
    t3 = ((char*)((ng18)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB56:    xsi_set_current_line(124, ng0);
    t3 = ((char*)((ng16)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB58:    xsi_set_current_line(125, ng0);
    t3 = ((char*)((ng14)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB60:    xsi_set_current_line(126, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB62:    xsi_set_current_line(127, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB64:    xsi_set_current_line(128, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB66:    xsi_set_current_line(129, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

LAB68:    xsi_set_current_line(130, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB70;

}


extern void work_m_11402823866814248467_0661155598_init()
{
	static char *pe[] = {(void *)Cont_95_0,(void *)Always_97_1};
	xsi_register_didat("work_m_11402823866814248467_0661155598", "isim/led_test_isim_beh.exe.sim/work/m_11402823866814248467_0661155598.didat");
	xsi_register_executes(pe);
}
