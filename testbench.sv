//top module
‘include "interface.sv"
‘include "test.sv"
module testbench1;
comp_intr rif();
test tb(rif);
comp mymodule(
.a(rif.a),
.b(rif.b),
.result(rif.result)
);
initial
begin
$dumpfile("dump.vcd");
$dumpvars(0,testbench1);
#100;
end
endmodule
