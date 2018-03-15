////////////////////////////////////////////////////////////////////////////////////////////////////
// Filename:    decoder4to10_cgrundey.v
// Author:      Colin Grundey
// Date:        13 March 2018
// Version:     1
// Description: This is a 4-to-10 decoder implementation

module decoder4to10_cgrundey(enable, dec_in, dec_out);
  input        enable;   // active-high enable
  input  [3:0] dec_in;   // decoder inputs
  output [9:0] dec_out;  // decoder outputs
  reg    [9:0] dec_out;

  always@(enable or dec_in) begin
    if (enable)
      case(dec_in)
        4'd0: dec_out =  16'b0000000001;
        4'd1: dec_out =  16'b0000000010;
        4'd2: dec_out =  16'b0000000100;
        4'd3: dec_out =  16'b0000001000;
        4'd4: dec_out =  16'b0000010000;
        4'd5: dec_out =  16'b0000100000;
        4'd6: dec_out =  16'b0001000000;
        4'd7: dec_out =  16'b0010000000;
        4'd8: dec_out =  16'b0100000000;
        4'd9: dec_out =  16'b1000000000;
        default: dec_out = 16'b0000000000;
      endcase
    else
      dec_out = 16'b0000000000;
  end

endmodule
