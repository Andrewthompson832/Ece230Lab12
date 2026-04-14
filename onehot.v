module onehot(
    input w,
    input clk,
    input reset,
    output z,
    output AState, BState, CState, DState, EState
);

    wire Anext, Bnext, Cnext, Dnext, Enext;
    wire Astate, Bstate, Cstate, Dstate, Estate;
    
    dff Adff(
        .Default(1'b1),
        .D(Anext),
        .clk(clk),
        .Q(Astate),
        .reset(reset)
        );
        
    dff Bdff(
        .Default(1'b0),
        .D(Bnext),
        .clk(clk),
        .Q(Bstate),
        .reset(reset)
        );

    dff Cdff(
        .Default(1'b0),
        .D(Cnext),
        .clk(clk),
        .Q(Cstate),
        .reset(reset)
        );
        
    dff Ddff(
        .Default(1'b0),
        .D(Dnext),
        .clk(clk),
        .Q(Dstate),
        .reset(reset)
        );        

    dff Edff(
        .Default(1'b0),
        .D(Enext),
        .clk(clk),
        .Q(Estate),
        .reset(reset)
        );        
        
        assign z = Cstate | Estate;
        
        assign Anext = 1'b0;
        assign Bnext = (Astate | Dstate | Estate) & ~w;
        assign Cnext = (Bstate | Cstate) & ~w;
        assign Dnext = (Astate | Bstate | Cstate) & w;
        assign Enext = (Dstate | Estate) & w;
        
        assign AState = Astate;
        assign BState = Bstate;
        assign CState = Cstate;
        assign DState = Dstate;
        assign EState = Estate;
endmodule