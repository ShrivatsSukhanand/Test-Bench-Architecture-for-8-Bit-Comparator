class transaction;
randc logic [7:0] a;
randc logic [7:0] b;
constraint keepshort{
a inside {[8’d100:8’d110]};
b inside {[8’d100:8’d110]};
}
logic [1:0] result;
endclass
