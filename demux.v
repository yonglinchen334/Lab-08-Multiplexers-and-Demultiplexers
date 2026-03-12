module demux(
    input [3:0] In,
    input [1:0] Sel,
    input Enable,
    output [3:0] local_lib, fire_dept, school, rib_shack
    );
    
    wire [3:0] en_data = Enable ? In : 4'b0000;
    
    // 4-to-1 demux 
    assign local_lib = (Sel == 2'b00 ? en_data : 4'b0000);
    assign fire_dept = (Sel == 2'b01 ? en_data : 4'b0000);
    assign school = (Sel == 2'b10 ? en_data : 4'b0000);
    assign rib_shack = (Sel == 2'b11 ? en_data : 4'b0000); 
    
endmodule
