`timescale 1ns/1ns

module control(

    //inputs
    input [5:0] OpCode,

    //output
    output reg regdst,
    output reg branch,
    output reg memread,
    output reg memtoreg,
    output reg [2:0] aluop,
    output reg memwrite,
    output reg alusrc,
    output reg regwrite
    


);

always @*
begin 
    case (OpCode)
        6'b000000: //type R
            begin 

                regdst = 1'b1;
                branch = 1'b0;
                memread = 1'b0;
                memtoreg = 1'b0;
                aluop = 3'b000;
                memwrite = 1'b0;
                alusrc = 1'b0;
                regwrite = 1'b1;

            end
    endcase
end

endmodule