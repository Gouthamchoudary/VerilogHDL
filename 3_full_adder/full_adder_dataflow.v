module full_adder_dataflow(
    input A, B, Cin,
    output sum, carry
);
    assign sum = A ^ B ^ Cin;
    assign carry = (A & B) | (A & Cin) | (B & Cin);

endmodule