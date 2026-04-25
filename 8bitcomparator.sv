//8 bit comparator
module comp(
input logic [7:0] a,
input logic [7:0] b,
output logic [1:0] result);
always_comb
begin
result = 2’b00; //00 is default state
if(a>b) result = 2’b11;
else if(a==b) result = 2’b10;
else result = 2’b01;
end
endmodule
