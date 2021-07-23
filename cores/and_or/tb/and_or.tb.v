
/* and_or.tb.v */


`ifdef LINTER
    `include "cores/and/rtl/and.v"
    `include "cores/or/rtl/or.v"
`endif


module and_or_tb ();

reg a, b;
wire and_o, or_o;

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

initial begin
$dumpfile( "dump.vcd" );
$dumpvars;
$display( "Begin simulation.");
//\\ =========================== \\//

{ a, b } = 2'b00; #1
{ a, b } = 2'b01; #1
{ a, b } = 2'b10; #1
{ a, b } = 2'b11; #1

//\\ =========================== \\//
$display( "End simulation.");
$finish;
end

endmodule
