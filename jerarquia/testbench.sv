/*
Name  : Nazim
Date  : 29th April, 2018
Design: 4x1 MUX test bench
*/


module mux ();
    reg [3:0]A;
    reg [3:0]B;
    reg [3:0]C;
    reg [3:0]D;
    reg [1:0]sel;
    reg en;
    wire [3:0] out;

MUX mux (
    .A (A),
    .B (B),
    .C (C),
    .D (D),
    .sel (sel),
    .en (en),
    .out (out)
);

initial forever #80 en  = ~en;
initial forever #20 sel  = sel+1;

initial begin
    A = $random;
    B = A - 1;
    C = A + 1;
    D = (2 * A ) + 1;
    sel = 0;
    en = 0;
end

initial begin 
    $dumpfile ("mux.vcd");
    $dumpvars;
end

initial begin 
    #320;
    $finish;
end
endmodule