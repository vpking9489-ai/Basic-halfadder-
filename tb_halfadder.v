module halfadder(a,b,sum,carr);
  input a,b;
  output sum,carr;
  assign sum=a^b;
  assign carr=a&b;
endmodule 
module tb_halfadder();
  reg a,b;
  wire sum,carr;
  halfadder DUT(.a(a),.b(b),.carr(carr),.sum(sum));
  initial begin 
    a=0;b=0;
    $monitor ("a=%b| b=%b | sum=%b |carr=%b",a,b,sum,carr);
  #10 a=0;
  #5 a=1;b=0;
  #15a=0;b=0;
  #5 a=0;b=1;
  #10 a=1;b=0;
  #5 a=1;b=1;
  $finish;
end 
endmodule 
  
