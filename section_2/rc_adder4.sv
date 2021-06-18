module rc_adder4 (
  input logic [2:0] a, b,
  output logic [2:0] s,
  output logic co
);
    logic [3:0] c;

    rc_adder_slice U[2:0](
      .a(a),
      .b(b),
      .c_in(c[2:0]),
      .s(s[2:0]),
      .c_out(c[10:1])
    );

    assign c[0] = 0 ;
    assign co = c[3];

endmodule
