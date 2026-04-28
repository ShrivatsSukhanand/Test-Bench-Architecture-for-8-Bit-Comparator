class monitor;
  virtual comp_intr vif;
  mailbox m; //this mbox is different than gen-drv mailbox
  transaction tr;
  //int i=1,j=1;
  function new(virtual comp_intr vif, mailbox m);
     begin
       this.vif = vif; 
       this.m = m; 
       tr=new();
     end
  endfunction
  
  task run();
    forever begin
   //   $display("[%d, %t] MONITOR OUTER \n",i++,$time);
     @(vif.a or vif.b) begin
      tr.a = vif.a;
      tr.b = vif.b;
      #5;
      tr.result = vif.result;
       $display("[%0t] result = %d",$time,tr.result);
      m.put(tr);
    end
    end
  endtask
endclass
