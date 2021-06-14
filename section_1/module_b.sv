module module_b(input logic a,b, output logic y1,y2,y3);

always_comb begin
  y1 = a & b;
end

always_comb begin
  y2 = a | b;
end

always_comb begin
  y3 = a ^ b;
end

endmodule
