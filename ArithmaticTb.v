module alutst;
reg[15:0] x,y;
wire[15:0] z;
wire s,zr,cy,p,v;
Alu DUT(x,y,z,s,zr,cy,p,v);
initial
begin
$monitor($time,"X=%h, Y=%h, z=%h, s=%b,Zr=%b,Cy=%b,P=%b,V=%b",x,y,z,s,cy,p,v);
#5 x=16'h8fff; y=16'h8000;
#5 x=16'h8ffe; y=16'h0002;
#5 x=16'haaaa; y=16'h5555;
#30 $finish;
end
endmodule
