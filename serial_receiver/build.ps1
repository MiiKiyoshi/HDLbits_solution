echo "xvlog: Compiling Verilog HDL files"
xvlog serial_receiver_tb.v serial_receiver.v | Out-File debug.log
echo ""
echo "xelab: Linking compiled files"
xelab serial_receiver_tb -s serial_receiver_tb -debug wave | Out-File debug.log -Append
echo ""
echo "xsim: Running the simulation"
xsim serial_receiver_tb -wdb simulate_xsim_serial_receiver_tb.wdb -gui | Out-File debug.log -Append
(Get-Content debug.log) -replace “ECHO가 설정되어 있지 않습니다.”, “” | Set-Content debug.log
Get-Content debug.log