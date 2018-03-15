////////////////////////////////////////////////////////////////////////////////////////////////////
// Filename:    problem5_cgrundey.v
// Author:      Colin Grundey
// Date:        13 March 2018
// Version:     1
// Description: Solution for problem 5: seven-segment display

module problem5_cgrundey(digit, hex_display);
  input [3:0] digit;
  output [6:0] hex_display;

  decoder4to16_cgrundey U1();
  decoder4to10_cgrundey U2();

endmodule
