class generator;
  
  //generator creates transaction and puts it into mailbox
  
  transaction tr;
  mailbox mbox;
  
  //constructor
  function new(mailbox mbox);
    this.mbox = mbox;
  endfunction
  
  //task for putting tr into mailbox
  task run();
    tr=new();
    repeat(10)
    begin
      tr.randomize();
      if(!tr.randomize())
        $display("Randomization has failed");
     // $display("a = %d, b = %d ",tr.a,tr.b); //display generated values
    
    //put tr into mailbox
    mbox.put(tr);
      #5;
      $display("a = %d, b = %d ",tr.a,tr.b); //display generated values
    end
  endtask
  
endclass
