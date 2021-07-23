
/* and.tb.v */


`ifdef LINTER
    `include "cores/and/rtl/and.v"
`endif


module top_m (
    input       a, b,
    output wire c
);

    and_m and_gate (
        .a(a),
        .b(b),
        .c(c)
    );

endmodule
