////////////////////////////////////////////////////////////////////////////////////////////////////
// Filename:    mux8to1_cgrundey.v
// Author:      Colin Grundey
// Date:        13 March 2018
// Version:     1
// Description: 8-to-1 multiplexer implementation

module mux8to1_cgrundey(enable, select, mux_in, mux_out);
  input enable; // active-high enable
  input [2:0] select; // multiplexer select lines
  input [7:0] mux_in; // multiplexer input lines
  output mux_out; // multiplexer output
  reg mux_out;

  always@(enable or select) begin
    if (enable)
      case(select)
        3'b000: mux_out = mux_in[0];
        3'b001: mux_out = mux_in[1];
        3'b010: mux_out = mux_in[2];
        3'b011: mux_out = mux_in[3];
        3'b100: mux_out = mux_in[4];
        3'b101: mux_out = mux_in[5];
        3'b110: mux_out = mux_in[6];
        3'b111: mux_out = mux_in[7];
      endcase
    else
      mux_out = 1'b0;
  end
endmodule
