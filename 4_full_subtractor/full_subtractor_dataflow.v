module full_subtractor_dataflow(
    input A, B, Bin,
    output difference, borrow_out
);
    assign difference = A ^ B ^ Bin;
    assign borrow_out = (~A & B) | (~A & Bin) | (B & Bin);

endmodule
