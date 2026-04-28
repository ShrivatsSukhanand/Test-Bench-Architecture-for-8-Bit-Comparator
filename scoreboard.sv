class scoreboard;
  mailbox mbox;
  transaction tr;
  logic [1:0] x=0;
  int i = 1;
  function new(mailbox mbox);
    this.mbox = mbox;
    tr = new();
  endfunction
  
  task run();
    forever begin
      mbox.get(tr);
      //check logic (simple here)
      if(tr.a > tr.b)
        x = 2'b11;
      else if(tr.a == tr.b) 
        x = 2'b10;
      else 
        x = 2'b01;
      
      if(x == tr.result)
        $display("[%0t] PASS\n",$time);
      else $display("[%0t] FAIL\n",$time);
    end
  endtask
  
endclass
