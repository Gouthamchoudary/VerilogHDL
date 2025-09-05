module half_subtractor_dataflow(
    input A, B,
    output difference, borrow
);
    assign difference = A ^ B;
    assign borrow = ~A & B;
endmodule

module full_subtractor_using_half_subtractors(
    input A, B, Bin,
    output difference, borrow_out
);
    wire diff1, borrow1, borrow2;
    
    // First half subtractor: A - B
    half_subtractor_dataflow hs1 (
        .A(A),
        .B(B),
        .difference(diff1),
        .borrow(borrow1)
    );
    
    // Second half subtractor: diff1 - Bin
    half_subtractor_dataflow hs2 (
        .A(diff1),
        .B(Bin),
        .difference(difference),
        .borrow(borrow2)
    );
    
    // Borrow out is OR of the two borrow outputs
    or(borrow_out, borrow1, borrow2);

endmodule
