`timescale  1ns/1ns
module  tb_seg_static();

reg     sys_clk;
reg     sys_rst_n;

wire    [5:0]    sel;
wire    [7:0]    seg;

initial
    begin
        sys_clk = 1'd0;
        sys_rst_n <= 1'd0;
        #20
        sys_rst_n <= 1'd1;
    end
    
always  #10 sys_clk = ~sys_clk;

seg_static
#(
    .CNT_MAX (25'd24)
)
seg_static_inst
(
    .sys_clk  (sys_clk)  ,
    .sys_rst_n(sys_rst_n)  ,
  
    .sel      (sel)  ,
    .seg      (seg)
);

endmodule
    