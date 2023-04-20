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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Student/Desktop/152alab10am/tenamlab1/model_uart.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static int ng3[] = {0, 0};
static int ng4[] = {10, 0};
static int ng5[] = {1, 0};
static int ng6[] = {8, 0};
static int ng7[] = {3, 0};
static int ng8[] = {7, 0};
static int ng9[] = {4, 0};
static const char *ng10 = "%d %s Received byte %02x (%s)";
static int ng11[] = {1095914544, 0, 85, 0};
static int ng12[] = {6, 0};



static int sp_tskRxData(char *t1, char *t2)
{
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 1256);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(58, ng0);

LAB5:    xsi_set_current_line(59, ng0);
    t5 = (t2 + 88U);
    t6 = *((char **)t5);
    t7 = (t6 + 0U);
    xsi_wp_set_status(t7, 1);
    *((char **)t3) = &&LAB6;

LAB1:    return t0;
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;
    goto LAB1;

LAB6:    xsi_set_current_line(60, ng0);
    t4 = (t1 + 2880);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t1 + 3360);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 8);
    goto LAB4;

}

static int sp_tskTxData(char *t1, char *t2)
{
    char t5[8];
    char t7[8];
    int t0;
    char *t3;
    char *t4;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 1688);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(68, ng0);

LAB5:    xsi_set_current_line(69, ng0);
    t6 = ((char*)((ng1)));
    t8 = (t1 + 3520);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memset(t7, 0, 8);
    t11 = (t7 + 4);
    t12 = (t10 + 4);
    t13 = *((unsigned int *)t10);
    t14 = (t13 >> 0);
    *((unsigned int *)t7) = t14;
    t15 = *((unsigned int *)t12);
    t16 = (t15 >> 0);
    *((unsigned int *)t11) = t16;
    t17 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t17 & 255U);
    t18 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t18 & 255U);
    t19 = ((char*)((ng2)));
    xsi_vlogtype_concat(t5, 10, 10, 3U, t19, 1, t7, 8, t6, 1);
    t20 = (t1 + 3680);
    xsi_vlogvar_assign_value(t20, t5, 0, 0, 10);
    xsi_set_current_line(70, ng0);
    xsi_set_current_line(70, ng0);
    t4 = ((char*)((ng3)));
    t6 = (t1 + 3840);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 32);

LAB6:    t4 = (t1 + 3840);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    t9 = ((char*)((ng4)));
    memset(t5, 0, 8);
    xsi_vlog_signed_less(t5, 32, t8, 32, t9, 32);
    t10 = (t5 + 4);
    t13 = *((unsigned int *)t10);
    t14 = (~(t13));
    t15 = *((unsigned int *)t5);
    t16 = (t15 & t14);
    t17 = (t16 != 0);
    if (t17 > 0)
        goto LAB7;

LAB8:    xsi_set_current_line(76, ng0);
    t4 = (t1 + 7032);
    xsi_trigger(t4, -1, -1);

LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;

LAB1:    return t0;
LAB7:    xsi_set_current_line(71, ng0);

LAB9:    xsi_set_current_line(72, ng0);
    t11 = (t1 + 3680);
    t12 = (t11 + 56U);
    t19 = *((char **)t12);
    t20 = (t1 + 3680);
    t21 = (t20 + 72U);
    t22 = *((char **)t21);
    t23 = (t1 + 3840);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    xsi_vlog_generic_get_index_select_value(t7, 1, t19, t22, 2, t25, 32, 1);
    t26 = (t1 + 2720);
    xsi_vlogvar_assign_value(t26, t7, 0, 0, 1);
    xsi_set_current_line(73, ng0);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    xsi_process_wait(t6, 1000000LL);
    *((char **)t3) = &&LAB10;
    t0 = 1;
    goto LAB1;

LAB10:    xsi_set_current_line(74, ng0);
    t4 = (t1 + 6864);
    xsi_trigger(t4, -1, -1);
    xsi_set_current_line(70, ng0);
    t4 = (t1 + 3840);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    t9 = ((char*)((ng5)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t8, 32, t9, 32);
    t10 = (t1 + 3840);
    xsi_vlogvar_assign_value(t10, t5, 0, 0, 32);
    goto LAB6;

}

static void Initial_26_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(27, ng0);

LAB2:    xsi_set_current_line(28, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 2720);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(29, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3200);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 3);

LAB1:    return;
}

static void Always_32_1(char *t0)
{
    char t12[8];
    char t13[8];
    char t24[8];
    char t25[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    int t9;
    char *t10;
    char *t11;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t26;
    unsigned int t27;
    int t28;
    int t29;
    char *t30;
    unsigned int t31;
    int t32;
    int t33;
    unsigned int t34;
    int t35;
    unsigned int t36;
    unsigned int t37;
    int t38;
    int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;

LAB0:    t1 = (t0 + 5008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 5328);
    *((int *)t2) = 1;
    t3 = (t0 + 5040);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(33, ng0);

LAB5:    xsi_set_current_line(34, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 2880);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(35, ng0);
    t2 = (t0 + 4816);
    xsi_process_wait(t2, 500000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(36, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t2 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (~(t6));
    t8 = *((unsigned int *)t2);
    t9 = (t8 & t7);
    t4 = (t0 + 7808);
    *((int *)t4) = t9;

LAB7:    t5 = (t0 + 7808);
    if (*((int *)t5) > 0)
        goto LAB8;

LAB9:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 6696);
    xsi_trigger(t2, -1, -1);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 3200);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng7)));
    memset(t12, 0, 8);
    t10 = (t4 + 4);
    if (*((unsigned int *)t10) != 0)
        goto LAB13;

LAB12:    t11 = (t5 + 4);
    if (*((unsigned int *)t11) != 0)
        goto LAB13;

LAB16:    if (*((unsigned int *)t4) > *((unsigned int *)t5))
        goto LAB15;

LAB14:    *((unsigned int *)t12) = 1;

LAB15:    t18 = (t12 + 4);
    t6 = *((unsigned int *)t18);
    t7 = (~(t6));
    t8 = *((unsigned int *)t12);
    t14 = (t8 & t7);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB17;

LAB18:
LAB19:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 3200);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t12, 0, 8);
    xsi_vlog_unsigned_add(t12, 32, t4, 3, t5, 32);
    t10 = (t0 + 3200);
    xsi_vlogvar_assign_value(t10, t12, 0, 0, 3);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 3200);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng9)));
    memset(t12, 0, 8);
    t10 = (t4 + 4);
    t11 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t14 = *((unsigned int *)t10);
    t15 = *((unsigned int *)t11);
    t16 = (t14 ^ t15);
    t26 = (t8 | t16);
    t27 = *((unsigned int *)t10);
    t31 = *((unsigned int *)t11);
    t34 = (t27 | t31);
    t36 = (~(t34));
    t37 = (t26 & t36);
    if (t37 != 0)
        goto LAB26;

LAB23:    if (t34 != 0)
        goto LAB25;

LAB24:    *((unsigned int *)t12) = 1;

LAB26:    t18 = (t12 + 4);
    t40 = *((unsigned int *)t18);
    t41 = (~(t40));
    t42 = *((unsigned int *)t12);
    t43 = (t42 & t41);
    t44 = (t43 != 0);
    if (t44 > 0)
        goto LAB27;

LAB28:
LAB29:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 3200);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng12)));
    memset(t12, 0, 8);
    t10 = (t4 + 4);
    t11 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t14 = *((unsigned int *)t10);
    t15 = *((unsigned int *)t11);
    t16 = (t14 ^ t15);
    t26 = (t8 | t16);
    t27 = *((unsigned int *)t10);
    t31 = *((unsigned int *)t11);
    t34 = (t27 | t31);
    t36 = (~(t34));
    t37 = (t26 & t36);
    if (t37 != 0)
        goto LAB34;

LAB31:    if (t34 != 0)
        goto LAB33;

LAB32:    *((unsigned int *)t12) = 1;

LAB34:    t18 = (t12 + 4);
    t40 = *((unsigned int *)t18);
    t41 = (~(t40));
    t42 = *((unsigned int *)t12);
    t43 = (t42 & t41);
    t44 = (t43 != 0);
    if (t44 > 0)
        goto LAB35;

LAB36:
LAB37:    goto LAB2;

LAB8:    xsi_set_current_line(37, ng0);

LAB10:    xsi_set_current_line(38, ng0);
    t10 = (t0 + 4816);
    xsi_process_wait(t10, 1000000LL);
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB11:    xsi_set_current_line(38, ng0);
    t11 = (t0 + 6528);
    xsi_trigger(t11, -1, -1);
    xsi_set_current_line(40, ng0);
    t2 = (t0 + 2880);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t5 = (t13 + 4);
    t10 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 1);
    *((unsigned int *)t13) = t7;
    t8 = *((unsigned int *)t10);
    t14 = (t8 >> 1);
    *((unsigned int *)t5) = t14;
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 & 127U);
    t16 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t16 & 127U);
    t11 = (t0 + 2320U);
    t17 = *((char **)t11);
    xsi_vlogtype_concat(t12, 8, 8, 2U, t17, 1, t13, 7);
    t11 = (t0 + 2880);
    xsi_vlogvar_assign_value(t11, t12, 0, 0, 8);
    t2 = (t0 + 7808);
    t9 = *((int *)t2);
    *((int *)t2) = (t9 - 1);
    goto LAB7;

LAB13:    t17 = (t12 + 4);
    *((unsigned int *)t12) = 1;
    *((unsigned int *)t17) = 1;
    goto LAB15;

LAB17:    xsi_set_current_line(43, ng0);

LAB20:    xsi_set_current_line(44, ng0);
    t19 = (t0 + 3040);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = ((char*)((ng6)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_lshift(t13, 32, t21, 32, t22, 32);
    t23 = (t0 + 3040);
    xsi_vlogvar_assign_value(t23, t13, 0, 0, 32);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 2880);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t12, 0, 8);
    t5 = (t12 + 4);
    t10 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    *((unsigned int *)t12) = t7;
    t8 = *((unsigned int *)t10);
    t14 = (t8 >> 0);
    *((unsigned int *)t5) = t14;
    t15 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t15 & 255U);
    t16 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t16 & 255U);
    t11 = (t0 + 3040);
    t17 = (t0 + 3040);
    t18 = (t17 + 72U);
    t19 = *((char **)t18);
    t20 = ((char*)((ng8)));
    t21 = ((char*)((ng3)));
    xsi_vlog_convert_partindices(t13, t24, t25, ((int*)(t19)), 2, t20, 32, 1, t21, 32, 1);
    t22 = (t13 + 4);
    t26 = *((unsigned int *)t22);
    t9 = (!(t26));
    t23 = (t24 + 4);
    t27 = *((unsigned int *)t23);
    t28 = (!(t27));
    t29 = (t9 && t28);
    t30 = (t25 + 4);
    t31 = *((unsigned int *)t30);
    t32 = (!(t31));
    t33 = (t29 && t32);
    if (t33 == 1)
        goto LAB21;

LAB22:    goto LAB19;

LAB21:    t34 = *((unsigned int *)t25);
    t35 = (t34 + 0);
    t36 = *((unsigned int *)t13);
    t37 = *((unsigned int *)t24);
    t38 = (t36 - t37);
    t39 = (t38 + 1);
    xsi_vlogvar_assign_value(t11, t12, t35, *((unsigned int *)t24), t39);
    goto LAB22;

LAB25:    t17 = (t12 + 4);
    *((unsigned int *)t12) = 1;
    *((unsigned int *)t17) = 1;
    goto LAB26;

LAB27:    xsi_set_current_line(49, ng0);

LAB30:    xsi_set_current_line(50, ng0);
    *((int *)t13) = xsi_vlog_stime(1000.0000000000000, 1000.0000000000000);
    t19 = (t13 + 4);
    *((int *)t19) = 0;
    t20 = ((char*)((ng11)));
    t21 = (t0 + 3040);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t30 = (t0 + 3040);
    t45 = (t30 + 56U);
    t46 = *((char **)t45);
    xsi_vlogfile_write(1, 0, 0, ng10, 5, t0, (char)118, t13, 32, (char)118, t20, 40, (char)118, t23, 32, (char)118, t46, 32);
    goto LAB29;

LAB33:    t17 = (t12 + 4);
    *((unsigned int *)t12) = 1;
    *((unsigned int *)t17) = 1;
    goto LAB34;

LAB35:    xsi_set_current_line(52, ng0);

LAB38:    xsi_set_current_line(53, ng0);
    t19 = ((char*)((ng3)));
    t20 = (t0 + 3200);
    xsi_vlogvar_assign_value(t20, t19, 0, 0, 3);
    goto LAB37;

}


extern void work_m_00000000003097011173_1746683258_init()
{
	static char *pe[] = {(void *)Initial_26_0,(void *)Always_32_1};
	static char *se[] = {(void *)sp_tskRxData,(void *)sp_tskTxData};
	xsi_register_didat("work_m_00000000003097011173_1746683258", "isim/tb_isim_beh.exe.sim/work/m_00000000003097011173_1746683258.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
