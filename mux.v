module mux (
    input [3:0] A, B, C, D,
    input [1:0] Sel,
    input Enable,
    output [3:0] Y
);
    wire [3:0] sel_data;
    
    // 4-to-1 Mux
    assign sel_data = (Sel == 2'b00) ? A : 
                      (Sel == 2'b01) ? B : 
                      (Sel == 2'b10) ? C : D;
    
    assign Y = Enable ? sel_data : 4'b0000;
endmodule