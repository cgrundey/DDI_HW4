////////////////////////////////////////////////////////////////////////////////////////////////////
// Filename:    problem2_cgrundey.v
// Author:      Colin Grundey
// Date:        13 March 2018
// Version:     1
// Description: Problem 2 implementation using 4-to-16 decoder

module problem2_cgrundey(a, b, c, d, f);
  input a, b, c, d; // The input variables for the function
  output f; // The output of the function
  wire [15:0] dec_outs;

  decoder4to16_cgrundey U1(1, {a,b,c,d}, dec_outs);

  assign f = dec_outs[0] | dec_outs[1] | dec_outs[3] |
             dec_outs[4] | dec_outs[6] | dec_outs[9] |
             dec_outs[11] | dec_outs[14];
endmodule
