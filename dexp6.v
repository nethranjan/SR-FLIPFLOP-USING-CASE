module dexp6(s,r,clk,q,qbar); 
input s,r,clk; 
output reg q; 
output reg qbar; 
initial  
begin 
q=0; 
qbar=1; 
end 
always @(posedge clk) 
begin 
   q=s|(~r&q); 
   qbar=r|(~s&~q); 
end 
endmodule