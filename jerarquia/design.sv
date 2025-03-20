/*
Name   : Nazim
Date   : 29th April, 2018
Design : 4_input Multiplexar
*/


module MUX (
    A,
    B,
    C,
    D,
    out,
    sel,
    en
);


//    Input    //
input logic [3:0] A;
input logic [3:0] B;
input logic [3:0] C;
input logic [3:0] D;
input logic [1:0]sel;
input logic en;

//    Output    //
output logic  [3:0] out;

//    Operation    //

  always @ (*) begin
        if (en) begin
            if (sel == 2'b00) begin 
                out <= A;
            end
            if (sel == 2'b01) begin 
                out <= B;
            end
            if (sel == 2'b10) begin 
                out <= C;
            end
            if (sel == 2'b11) begin 
                out <= D;
            end
        end
        else begin
            out = 3'bz;
        end
    end
endmodule