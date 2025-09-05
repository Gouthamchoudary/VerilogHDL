module half_adder_dataflow(
    input A, B,
    output wire sum, carry
);

    assign sum = A ^ B;
    assign carry = A & B;
endmodule