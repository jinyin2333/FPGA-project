`timescale  1ns/1ns
module  tb_beep();

reg     sys_clk;
reg     sys_rst_n;

wire     beep;

initial
    begin
        sys_clk = 1'b1;
        sys_rst_n <=1'b0;
        #20
        sys_rst_n <= 1'b1;
    end

always #10 sys_clk = ~sys_clk;

beep
#(
    .CNT_MAX        (25'd24_999_99),
    .DO             (18'd19083),    
    .RE             (18'd17006),    
    .MI             (18'd15151),    
    .FA             (18'd14326),    
    .SO             (18'd12755),    
    .LA             (18'd11363),    
    .XI             (18'd10121)    
)
beep_inst
(
    .sys_clk   (sys_clk)  ,
    .sys_rst_n (sys_rst_n)  ,

    .beep      (beep)
);


endmodule