module rc_adder_slice (
  input logic a, b, c_in,
  output logic s, c_out
);

    logic p, g, q;

    assign p = a ^ b;
    assign g = a & b;

    assign q = c_in & p;

    assign s     = p ^ c_in
    assign c_out = q | g

endmodule
