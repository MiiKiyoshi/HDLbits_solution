echo "xvlog: Compiling Verilog HDL files"
xvlog clock_12_hour_tb.v clock_12_hour.v | Out-File debug.log
echo ""
echo "xelab: Linking compiled files"
xelab clock_12_hour_tb -s clock_12_hour_tb -debug wave | Out-File debug.log -Append
echo ""
echo "xsim: Running the simulation"
xsim clock_12_hour_tb -wdb simulate_xsim_clock_12_hour_tb.wdb -gui | Out-File debug.log -Append
(Get-Content debug.log) -replace “ECHO가 설정되어 있지 않습니다.”, “” | Set-Content debug.log
Get-Content debug.log