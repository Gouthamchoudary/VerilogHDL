module half_subtractor_structural(
    input A, B,
    output wire difference, borrow
);
    wire notA=not(A);
    xor(difference, A, B);
    and(borrow, notA, B);

endmodule