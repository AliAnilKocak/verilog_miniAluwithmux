module _multiplexer(ina,inb,out,sel);
 
input [4:0]ina;
input [4:0]inb;
input [2:0]sel;
output [4:0]out;
 
output reg [4:0] out; 

wire [2:0]sel;
wire [4:0]ina;
wire [4:0]inb;
 
always @(sel or ina or inb)
begin
if (sel==0)
out = ina+inb; //Toplama 
if (sel==1)
out = ina-inb; //Çıkarma
if (sel==2)
out = ~ina + 1; //Negatifini alma (1'e tümleyeni alındıktan sonra 1 ekleyerek)
if (sel==3)
out = ~inb + 1; //Negatifini alma (1'e tümleyeni alındıktan sonra 1 ekleyerek)
if (sel==4)
out = ina & inb; //ve mantıksal işlemi
if (sel==5)
out = ina | inb; //veya mantıksal işlemi
if (sel==6)
out = ina ^ inb; //xor mantıksal işlemi
if (sel==7)
out = (inb << 1);	//Sola 1 bit kaydırma işlemi
out[4] = inb[0];
end
 
endmodule