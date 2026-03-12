module top(
    input [15:0] sw,
    input btnL, btnU, btnD, btnR, btnC, 
    output [15:0] led
);
    wire [3:0] internet;
    wire [1:0] mux_sel = {btnU, btnL};
    wire [1:0] demux_sel = {btnR, btnD};
    wire enable = btnC;
    
    mux internet_lib (
        .A(sw[3:0]),
        .B(sw[7:4]),
        .C(sw[11:8]),
        .D(sw[15:12]),
        .Sel(mux_sel),
        .Enable (enable),
        .Y (internet)
    );
    
    demux data (
        .In(internet),
        .Sel(demux_sel),
        .Enable (enable),
        .local_lib (led[3:0]),
        .fire_dept (led[7:4]),
        .school (led[11:8]),
        .rib_shack (led[15:12])
    );
endmodule