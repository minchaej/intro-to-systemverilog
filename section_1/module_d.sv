module module_d(input logic a,b, output logic y1,y2,y3);

assign y1 = a & b;
assign y2 = a | b;
assign y3 = a ^ b;

endmodule
