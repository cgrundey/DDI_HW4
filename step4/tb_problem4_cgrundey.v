////////////////////////////////////////////////////////////////////////////////////////////////////
// Filename:    tb_problem4_cgrundey.v
// Author:      Colin Grundey
// Date:        13 March 2018
// Version:     1
// Description: Test bench to test functinality of problem 4 solution

module tb_problem4_cgrundey();
  reg enable;
  reg [2:0] select;
  reg [7:0] mux_in;
  wire mux_out;
  reg [4:0] count;

  mux8to1_delay_cgrundey DUT1(enable, select, mux_in, mux_out);

  initial begin
		for (count = 0; count < 16; count = count + 1) begin
			
			#20;
		end
	end

endmodule
