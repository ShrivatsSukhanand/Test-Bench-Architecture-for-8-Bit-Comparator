class driver;
//driver takes tr from mail box and puts it into interface wires
virtual comp_intr vif;
mailbox mbox;
transaction tr;
//constructor
function new( virtual comp_intr vif, mailbox mbox);
begin
this.vif = vif;
this.mbox = mbox;
4
tr=new();
end
endfunction
task run();
forever
begin
mbox.get(tr);
vif.a=tr.a;
vif.b=tr.b;
#5 //delay for output to be generated
tr.result=vif.result;
$display("result = %d",tr.result);
end
endtask
endclass
