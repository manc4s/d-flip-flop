`timescale 1ns / 1ps

module d_latch (
    input load,  // Correct placement
    input data,   // Acts as the enable signal
    
    output Q,
    output notQ
);
    reg q_internal = 0;  // Holds the value when load = 0

    always @(*) begin
        if (load)
            q_internal = data;  // Transparent when load = 1
        // Holds value when load = 0 (no 'else' needed)
    end

    assign Q = q_internal;
    assign notQ = ~q_internal;

endmodule