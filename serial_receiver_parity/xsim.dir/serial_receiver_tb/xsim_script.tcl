set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {serial_receiver_tb} -wdb {simulate_xsim_serial_receiver_tb.wdb} -autoloadwcfg
