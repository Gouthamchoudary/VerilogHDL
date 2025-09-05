// Half Adder Module for Two Half Adders Implementation
module half_adder (
    input a, b,
    output sum, carry
);
    xor (sum, a, b);
    and (carry, a, b);
endmodule

// Full Adder using Two Half Adders
module full_adder_two_half_adders (
    input a, b, cin,
    output sum, cout
);
    wire s1, c1, c2;
    
    half_adder ha1 (.a(a), .b(b), .sum(s1), .carry(c1));
    half_adder ha2 (.a(s1), .b(cin), .sum(sum), .carry(c2));
    or (cout, c1, c2);
endmodule