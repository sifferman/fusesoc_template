
/* or.tb.v */


`ifdef LINTER
    `include "cores/or/rtl/or.v"
`endif


module top_m (
    input       a, b,
    output wire c
);

    or_m or_gate (
        .a(a),
        .b(b),
        .c(c)
    );

endmodule
