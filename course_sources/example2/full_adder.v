
module full_adder(
    input a,
    input b,
    input cin,
    output s,
    output cout
    );
    
    wire x,y,z;
    assign x= a^b;
    assign s = x ^ cin;
    assign z = x & cin;
    assign y = a & b;
    assign cout = z | y;
endmodule
