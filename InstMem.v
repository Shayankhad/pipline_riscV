module InstMemory (
    input[31:0] A,
    output[31:0] RD
    ); 
    reg [7:0] instMem [0:$pow(2, 16)-1]; 
    wire [31:0] adr;
    assign adr = {A[31:2],2'b00}; 
    initial $readmemh("inst_memory.mem", instMem);
    assign RD = {instMem[adr+3], instMem[adr + 2], instMem[adr + 1], instMem[adr]};
endmodule




