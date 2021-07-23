
/* and_or.tb.v */


`ifdef LINTER
    `include "cores/and/rtl/and.v"
    `include "cores/or/rtl/or.v"
`endif


module top_m (
    input       a, b,
    output wire and_o, or_o
);

    and_m and_gate (
        .a(a),
        .b(b),
        .c(and_o)
    );

    or_m or_gate (
        .a(a),
        .b(b),
        .c(or_o)
    );

endmodule
