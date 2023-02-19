module top_module(
  input too_cold, //a
  input too_hot,  //b
  input mode,     //c
  input fan_on,   //d
  output heater,
  output aircon,
  output fan
);

//heater = ac
//aircon = bc'
//fan = ac + bc' + d

assign heater = too_cold & mode;
assign aircon = too_hot & (~mode);

//assign fan = (too_cold & mode) | (too_hot & (~mode)) | fan_on;
//output도 wire타입이니깐 assign의 right hand side에 놓을 수 있지!!
assign fan = heater | aircon | fan_on;

endmodule
