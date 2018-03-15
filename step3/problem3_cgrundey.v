////////////////////////////////////////////////////////////////////////////////////////////////////
// Filename:    problem3_cgrundey.v
// Author:      Colin Grundey
// Date:        13 March 2018
// Version:     1
// Description: Problem 3 implementation using 8-to-1 mux

module problem3_cgrundey(a, b, c, d, f);
  input a, b, c, d; // The input variables for the function
  output f; // The output of the function
  wire [2:0] select;
  wire [7:0] ins;
  wire a_n;

  assign a_n = ~a;
  assign select = {b,c,d};
  assign ins = {1'b0, 1'b1, 1'b0, a_n, 1'b1, 1'b0, 1'b1, a_n};

  mux8to1_cgrundey U1(1, select, ins, f);

endmodule
