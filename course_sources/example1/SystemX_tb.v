`timescale 10ns / 10ns

module SystemX_tb();
	reg A,B,C;

	wire F_0;
	wire F_1;

	// instantiation of verilog code
	SystemX_v DUT_0(
		 .A(A),
		 .B(B),
		 .C(C),
		 .F(F_0)
		 );
	// instantiation of vhdl code
	SystemX_vhd DUT_1(
		 .A(A),
		 .B(B),
		 .C(C),
		 .F(F_1)
		 );

	// Data generator
	initial begin : ABC_stimulus
			  A = 0; B = 0; C= 0;
		 #20 A = 0; B = 0; C= 1;
		 #20 A = 0; B = 1; C= 0;
		 #20 A = 0; B = 1; C= 1;
		 
	end 

	// There is no Boolean type in Verilog.
	reg boolean;
				 
	// comparator
	always @(*) begin
		 if(F_0 == F_1) begin
			  boolean = 1'b1;
		 end 
		 else begin
			  boolean = 1'b0;
		 end 
	end 
endmodule
