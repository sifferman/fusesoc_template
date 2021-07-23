
/* and.tb.v */


`ifdef LINTER
    `include "cores/and/rtl/and.v"
`endif


module and_tb ();

reg a, b;
wire c;

and_m and_gate (
    .a(a),
    .b(b),
    .c(c)
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
