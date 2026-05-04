module half_adder(a,b,sum,carr);
input a,b;
output sum,carr;
assign sum=a^b;
assign carr=a&b;
endmodule 