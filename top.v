module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

    // Hook up binary and one-hot state machines
    onehot fsm1(
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(led[0]),
        .AState(led[2]),
        .BState(led[3]),
        .CState(led[4]),
        .DState(led[5]),
        .EState(led[6])
        );
        
    binary fsm2(
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(led[1]),
        .BState(led[9:7])
        );
        
        

endmodule