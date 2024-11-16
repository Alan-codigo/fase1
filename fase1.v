`timescale 1ns/1ns

module fase1(

);

//pc to intruction memory
wire [31:0] pc_intructionmemory_instruction;
wire [31:0] pc_add_intruction;

//add to mux
wire [31:0] add_mux;
wire [31:0] wirefour;

//mux to pc
wire [31:0] mux1_pc;

//wires instruction memory to all
//wires instruction memory

wire [31:0] instruction_all;

wire [5:0] instruction_control;
wire [4:0] instruction_registers_rs;
wire [4:0] instruction_registers_rt;
wire [4:0] instruction_mux_ad;
wire instruction_intruction15;
wire intruction15_intruction5;

//wires control
control_mux2_regdst;
control_and_branch;
control_datamemory_memread;
control_mux4_memtoreg;
[2:0] control_alucontrol_aluop;
control_datamomory_memwrite;
control_mux3_alusrc;
control_registers_regwrite;

//wire and to mux1
wire and_mux;

//registers
wire [31:0]registers_alu_readdata1;
wire [31:0]registers_mux3_readdata2;

//mux3;
wire [31:0]mux3_alu_readdata2;
wire sing_mux3;

//alu
wire alu_and;
wire [31:0] alu_mux4;

wire [5:0]adress_datamemory;
wire [31:0]alu_datamemory;

//data memory
wire [31:0] datamemory_mux4;

//mux4;
wire [31:0] mux4_registers;


pc pcinstance(
    .clk(1'b0),
    .pc_in(mux1_pc),
    .pc_out(pc_intructionmemory_instruction)
);

assign pc_add_intruction = pc_intructionmemory_instruction;

assign wirefour = 32'd4;

cadd caddinstance(
    .in1(pc_add_intruction),
    .in2(wirefour),
    .out1(add_mux)

);

mux muxinstance1(
    .sel(and_mux),
    .A(add_mux),
    .B(add_mux),
    .C(mux1_pc)
);

instructionM instructionMinstance(
    .readadress(pc_intructionmemory_instruction),
    .out_intructionM(instruction_all)
);
assign instruction_control = instruction_all[26:31];
instruction_registers_rs;
instruction_registers_rt;
instruction_mux_ad;
instruction_intruction15;
intruction15_intruction5;

control controlinstance(
    
);

