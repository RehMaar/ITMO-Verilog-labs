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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_09548762525185702339_1166870255_init();
    work_m_08993434099062906083_0046991852_init();
    work_m_18339119574849610918_1893592179_init();
    work_m_13239813336298989171_1387581993_init();
    work_m_11402823866814248467_0661155598_init();
    work_m_02298579978661516296_3354928681_init();
    work_m_15316769363586088842_1563588933_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_15316769363586088842_1563588933");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
