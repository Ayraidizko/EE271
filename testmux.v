`timescale 1ns/10ps

module testmux;
// Inputs to mux should be registers
reg a, b, s;
// outputs from mux should be in type wire can be named whatever
wire out;

mux2to1 mymux( a, b, s,  out);

initial //similar to always but whatever follows inital is only initiated once. 
// Only used to simulate, you cannot get hardware from it

begin
	$dumpfile("testmux.vcd"); // REQUIRED SYNTAX however this is not requred for ModelSim or Xilinx
				//generates a waveform called testmux.vcd
	$dumpvars(0, testmux);
	a = 0;
	b = 1;
	s = 0;
	//all change at same time must add delay
	#1;
	a = 1;
	#1;
	b = 0;
	s = 1;
	#1;
	$finish;

end

endmodule
