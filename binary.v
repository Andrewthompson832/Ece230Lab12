module binary(
    input w,
    input clk,
    input reset,
    output z,
    output [2:0] BState
    );
    
    wire [2:0] State;
    wire [2:0] Next;
    
    dff zero(
        .D(Next[0]),
        .clk(clk),
        .Q(State[0]),
        .reset(reset),
        .Default(1'b0)
        );
        
    dff one(
        .D(Next[1]),
        .clk(clk),
        .Q(State[1]),
        .reset(reset),
        .Default(1'b0)
        );
        
    dff two(
        .D(Next[2]),
        .clk(clk),
        .Q(State[2]),
        .reset(reset),
        .Default(1'b0)
        );        

    assign z = (~State[0] & State[1] & ~State[2]) | (~State[0] & ~State[1] & State[2]);
    assign Next[0] = (~w & (State[2] | (~(State[1] & ~State[0]) & ~(~State[1] & State[0])))) | (w & (~State[2] & (~State[1] | ~State[0])));
    assign Next[1] = (~w & ~State[2] & ((State[1] & ~State[0]) | (~State[1] & State[0]))) | (w & (~State[2] & ~(State[1] & State[0])));
    assign Next[2] = (w & (State[2] | (State[1] & State[0])));
    
    assign BState = State;      
endmodule