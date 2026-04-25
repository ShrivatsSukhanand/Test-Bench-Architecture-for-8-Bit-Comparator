‘include "transaction.sv"
‘include "generator.sv"
‘include "driver.sv"
class environment;
generator gen;
driver drv;
mailbox mbox;
virtual comp_intr vif;
function new(virtual comp_intr vif);
begin
this.vif=vif;
mbox=new();
gen=new(mbox);
drv=new(vif, mbox);
end
endfunction
task run();
fork
gen.run();
drv.run();
join
endtask
endclass
