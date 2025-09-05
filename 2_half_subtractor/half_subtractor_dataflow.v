module half_subtractor_dataflow(
    input A, B,
    output wire difference, borrow
);
    assign difference=A^B;
    assign borrow=~A&B;

endmodule