`timescale 1ns/1ns

module add(
    input [31:0] redadress,
    input [31:0] four,

    output [31:0] add_out
);

assign add_out = redadress + four;

endmodule