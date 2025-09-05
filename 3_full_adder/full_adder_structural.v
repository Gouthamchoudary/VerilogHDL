module full_adder_structural(
    input A, B, Cin,
    output wire sum, carry
);
    wire sum1, carry1, carry2,carry3;
    
    xor(sum1, A, B);
    xor(sum, sum1, Cin);

    and(carry1, A, B);
    and(carry2, B,Cin);
    and(carry3, A,Cin);
    or(carry, carry1, carry2);
    or(carry, carry3, carry);

endmodule