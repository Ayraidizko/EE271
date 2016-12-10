module mux2to1(in0, in1, s, out);
input in0, in1, s;
output out;



// Gate Level
not inv1(s_bar, s);
and and1(a1, in0, s_bar);
and and2(a2, in1, s);
or or1(out, a1, a2);

//behavioral always statements

/*

reg out;

always @(in0, in1, s)  //Behavioral Level
begin
	//out = s ? in0 : in1;
	if (s == 0)
	begin
		out = in0; //single statements do not require begin or end
	end
	else
		out = in1;
	


end
*/

endmodule
