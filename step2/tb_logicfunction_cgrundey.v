////////////////////////////////////////////////////////////////////////////////////////////////////
// Filename:    tb_logicfunction_cgrundey.v
// Author:      Colin Grundey
// Date:        13 March 2018
// Version:     1
// Description: Test bench to test functinality of problem 2 solution

module tb_logicfunction_cgrundey();
  reg a,b,c,d;
  wire f;
  reg [4:0] count;

  problem2_cgrundey DUT1(a,b,c,d,f);

  initial begin
		for (count = 0; count < 16; count = count + 1) begin
			a = count[3];
      b = count[2];
      c = count[1];
      d = count[0];
			#20;
		end
	end

endmodule
