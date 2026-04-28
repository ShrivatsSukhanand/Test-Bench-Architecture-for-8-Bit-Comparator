class driver;
  
  //driver takes tr from mail box and puts it into interface wires
  
   virtual comp_intr vif;
   mailbox mbox;
   transaction tr;
  int i = 1;
  //constructor
  function new( virtual comp_intr vif, mailbox mbox);
     begin
       this.vif = vif;
       this.mbox = mbox;
       tr=new();
     end
  endfunction
  
  task run();
    forever
      begin
        mbox.get(tr);
        vif.a<=tr.a;
        vif.b<=tr.b;
        #5; //delay for output to be generated
       // $display("[%d,%t] DRIVER",i++,$time);
      end
  endtask
  
  
endclass
