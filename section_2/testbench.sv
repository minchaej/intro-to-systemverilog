`timescale 1ns/10ps

module testbench ();

    logic [2:0] a, b, s, startingIndex;
    logic co;

    rc_adder4 UUT (
      .a (a),
      .b (b),
      .s (s),
      .co (co)
    );

    initial begin
        startingIndex = 0;
        a = 0;
        b = 0;

        forever begin
            for (int i = startingIndex; i < 8; i++)
                #10 a++;

            startingIndex++;
            a = startingIndex;
            b++;
        end
    end

    initial begin
        $display("TIME | A B | S CO");
        $display("-----------------");
        $monitor("  %2d | %d %d | %d %b",
            $time, a, b, s, co);

        #360;
        $finish();
    end

endmodule
