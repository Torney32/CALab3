module MuxTestbench4to1;
parameter N = 8;
wire [N-1:0]out;
reg [N-1:0] i0, i1, i2, i3;
reg [1:0]s;
reg clk;
CaLab3Mux4 mux4(.out(out), .s(s), .i1(i1), .i2(i2), .i3(i3));
 
initial begin
clk = 0;
i0= 8'b00000000;
i1= 8'b00000001;
i2= 8'b00000010;
i3= 8'b00000011;
s = 2'b00;
#5;
clk = 1;
#5;
clk = 0;
s = 2'b01;
#5;
clk = 1;
#5;
clk = 0;
s = 2'b10;
#5;
clk = 1;
#5;
clk = 0;
s = 2'b11;
#5;
clk = 1;
#5;
clk=0;
#5;
s = 2'b00;
clk=1;
#5;
end
endmodule

