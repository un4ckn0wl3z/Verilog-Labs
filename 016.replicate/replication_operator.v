
module replication_operator();
    
    reg [7:0] a;
    reg [31:0] b;
  
	// Procedure used to generate stimulus
	initial begin
       // Concatenation of {2'b10, 2'b10, 2'b10, 2'b10}
       #1; a = {4{2'b10}}; 
       $display("a = %b", a); // 10101010
      
       // Concatenation of {4'b1X0Z, 4'b1X0Z}
       #1; a = {2{4'b1X0Z}}; 
       $display("a = %b", a);  // 1X0Z1X0Z
       
       // Concatenation of {4'b1010, 1'b1, 1'b1, 1'b1, 1'b1}
       #1; a = {4'b1010, {4{1'b1}}}; 
       $display("a = %b", a); //10101111
       
       #1; b = {8{4'b0110}};
       $display("b = %b", b); // 01100110011001100110011001100110
	   
       #1; b = {{2{8'b0111_0001}}, {4{4'bXZ01}}};
       $display("b = %b", b); // 0111000101110001XZ01XZ01XZ01XZ01
       
       #1; b = {{16{2'b10}}};
       $display("b = %b", b); // 10101010101010101010101010101010
      
       // Do by yourself some replication examples
	end
  
endmodule

