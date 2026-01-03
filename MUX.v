module MUX #(
    parameter N   = 32,
    parameter SEL = 2
)(
    input  wire [(2**SEL)*N-1 : 0] in,
    input  wire [SEL-1:0]          sel,
    output wire [N-1:0]            out
);
    assign out = in[sel*N +: N];
endmodule

