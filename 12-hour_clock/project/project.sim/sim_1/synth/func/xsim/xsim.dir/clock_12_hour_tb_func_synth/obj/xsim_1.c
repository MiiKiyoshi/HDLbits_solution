/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_289(char*, char *);
IKI_DLLESPEC extern void execute_290(char*, char *);
IKI_DLLESPEC extern void execute_593(char*, char *);
IKI_DLLESPEC extern void execute_594(char*, char *);
IKI_DLLESPEC extern void execute_595(char*, char *);
IKI_DLLESPEC extern void execute_296(char*, char *);
IKI_DLLESPEC extern void execute_297(char*, char *);
IKI_DLLESPEC extern void execute_299(char*, char *);
IKI_DLLESPEC extern void execute_300(char*, char *);
IKI_DLLESPEC extern void execute_301(char*, char *);
IKI_DLLESPEC extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_35(char*, char *);
IKI_DLLESPEC extern void execute_376(char*, char *);
IKI_DLLESPEC extern void execute_377(char*, char *);
IKI_DLLESPEC extern void execute_378(char*, char *);
IKI_DLLESPEC extern void execute_379(char*, char *);
IKI_DLLESPEC extern void execute_380(char*, char *);
IKI_DLLESPEC extern void execute_381(char*, char *);
IKI_DLLESPEC extern void execute_382(char*, char *);
IKI_DLLESPEC extern void execute_383(char*, char *);
IKI_DLLESPEC extern void execute_375(char*, char *);
IKI_DLLESPEC extern void execute_38(char*, char *);
IKI_DLLESPEC extern void execute_39(char*, char *);
IKI_DLLESPEC extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_57(char*, char *);
IKI_DLLESPEC extern void execute_58(char*, char *);
IKI_DLLESPEC extern void execute_65(char*, char *);
IKI_DLLESPEC extern void execute_400(char*, char *);
IKI_DLLESPEC extern void execute_401(char*, char *);
IKI_DLLESPEC extern void execute_402(char*, char *);
IKI_DLLESPEC extern void execute_403(char*, char *);
IKI_DLLESPEC extern void execute_399(char*, char *);
IKI_DLLESPEC extern void execute_67(char*, char *);
IKI_DLLESPEC extern void execute_68(char*, char *);
IKI_DLLESPEC extern void execute_69(char*, char *);
IKI_DLLESPEC extern void execute_404(char*, char *);
IKI_DLLESPEC extern void execute_405(char*, char *);
IKI_DLLESPEC extern void execute_406(char*, char *);
IKI_DLLESPEC extern void execute_85(char*, char *);
IKI_DLLESPEC extern void execute_86(char*, char *);
IKI_DLLESPEC extern void execute_125(char*, char *);
IKI_DLLESPEC extern void execute_459(char*, char *);
IKI_DLLESPEC extern void execute_460(char*, char *);
IKI_DLLESPEC extern void execute_458(char*, char *);
IKI_DLLESPEC extern void execute_292(char*, char *);
IKI_DLLESPEC extern void execute_293(char*, char *);
IKI_DLLESPEC extern void execute_294(char*, char *);
IKI_DLLESPEC extern void execute_295(char*, char *);
IKI_DLLESPEC extern void execute_596(char*, char *);
IKI_DLLESPEC extern void execute_597(char*, char *);
IKI_DLLESPEC extern void execute_598(char*, char *);
IKI_DLLESPEC extern void execute_599(char*, char *);
IKI_DLLESPEC extern void execute_600(char*, char *);
IKI_DLLESPEC extern void execute_601(char*, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_138(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_142(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_146(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_150(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_186(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_190(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_194(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_198(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_245(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_249(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_253(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_257(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_299(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_303(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_307(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_311(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_371(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_375(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_379(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_383(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_417(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_421(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_425(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_429(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_435(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[80] = {(funcp)execute_289, (funcp)execute_290, (funcp)execute_593, (funcp)execute_594, (funcp)execute_595, (funcp)execute_296, (funcp)execute_297, (funcp)execute_299, (funcp)execute_300, (funcp)execute_301, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_35, (funcp)execute_376, (funcp)execute_377, (funcp)execute_378, (funcp)execute_379, (funcp)execute_380, (funcp)execute_381, (funcp)execute_382, (funcp)execute_383, (funcp)execute_375, (funcp)execute_38, (funcp)execute_39, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_57, (funcp)execute_58, (funcp)execute_65, (funcp)execute_400, (funcp)execute_401, (funcp)execute_402, (funcp)execute_403, (funcp)execute_399, (funcp)execute_67, (funcp)execute_68, (funcp)execute_69, (funcp)execute_404, (funcp)execute_405, (funcp)execute_406, (funcp)execute_85, (funcp)execute_86, (funcp)execute_125, (funcp)execute_459, (funcp)execute_460, (funcp)execute_458, (funcp)execute_292, (funcp)execute_293, (funcp)execute_294, (funcp)execute_295, (funcp)execute_596, (funcp)execute_597, (funcp)execute_598, (funcp)execute_599, (funcp)execute_600, (funcp)execute_601, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_138, (funcp)transaction_142, (funcp)transaction_146, (funcp)transaction_150, (funcp)transaction_186, (funcp)transaction_190, (funcp)transaction_194, (funcp)transaction_198, (funcp)transaction_245, (funcp)transaction_249, (funcp)transaction_253, (funcp)transaction_257, (funcp)transaction_299, (funcp)transaction_303, (funcp)transaction_307, (funcp)transaction_311, (funcp)transaction_371, (funcp)transaction_375, (funcp)transaction_379, (funcp)transaction_383, (funcp)transaction_417, (funcp)transaction_421, (funcp)transaction_425, (funcp)transaction_429, (funcp)transaction_435};
const int NumRelocateId= 80;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/clock_12_hour_tb_func_synth/xsim.reloc",  (void **)funcTab, 80);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/clock_12_hour_tb_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/clock_12_hour_tb_func_synth/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_xsimdir_location_if_remapped(argc, argv)  ;
    iki_set_sv_type_file_path_name("xsim.dir/clock_12_hour_tb_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/clock_12_hour_tb_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/clock_12_hour_tb_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
