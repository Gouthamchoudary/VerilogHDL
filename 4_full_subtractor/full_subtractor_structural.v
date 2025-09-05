module full_subtractor_structural(
    input A, B, Bin,
    output difference, borrow_out
);
    wire diff1, borrow1, borrow2;
    
    xor(diff1, A, B);
    xor(difference, diff1, Bin);
    and(borrow1, ~A, B);
    and(borrow2, ~A, Bin);
    and(borrow3, B, Bin);
    or(borrow_out, borrow1, borrow2, borrow3);

endmodule
