module _multiplexer_test;
 
wire [4:0]out;
 
reg [2:0]sel;
reg [4:0]ina;
reg [4:0]inb;
 
_multiplexer mux( .out(out), .ina(ina),.inb(inb), .sel(sel) );
 
initial begin
$monitor("Secim ucu:",sel," a:",ina," b:",inb," out:",out);
 
sel=3'b000; //Başlangıçta seçim ucu 0 yapılıyor
ina=8'b10110; //Başlangıçta ina'ya rastgele bir değer veriliyor.
inb=8'b01011; //Başlangıçta ina'ye rastgele bir değer veriliyor.
 
end
 
always #20 sel=sel+3'b001; //Her 20 nanosaniyede bir sel(seçim ucu) 1 artıyor,
 
endmodule