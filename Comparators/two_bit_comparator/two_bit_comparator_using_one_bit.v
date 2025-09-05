module one_bit_comparator(
    input A, B, 
    output E, G, L
);
    assign E = ~(A ^ B);
    assign G = A & ~B;
    assign L = ~A & B;
endmodule

module two_bit_comparator_using_one_bit(
    input A1, A0, B1, B0,
    output E, G, L
);
    wire E1, G1, L1, E0, G0, L0;
    
    // Instantiate one-bit comparator for MSB
    one_bit_comparator msb_comp (
        .A(A1),
        .B(B1),
        .E(E1),
        .G(G1),
        .L(L1)
    );
    
    // Instantiate one-bit comparator for LSB
    one_bit_comparator lsb_comp (
        .A(A0),
        .B(B0),
        .E(E0),
        .G(G0),
        .L(L0)
    );
    
    // Combine results
    assign E = E1 & E0;
    assign G = G1 | (E1 & G0);
    assign L = L1 | (E1 & L0);
    
endmodule

