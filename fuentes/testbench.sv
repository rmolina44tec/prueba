module decoder_test();
  wire d0,d1,d2,d3;
  reg a,b;
  decoder l1(d0,d1,d2,d3,a,b);
  initial begin
   
      $dumpfile("dump.vcd");
  		$dumpvars(1);
    
    $display("Initial 00");    
    a= 1'b0;
    b= 1'b0;
    
    
    #1
    display; 
    
     $display("Initial 00");    
    a= 1'b0;
    b= 1'b1;
  
    
    #1
    display; 
    
     $display("Initial 00");    
    a= 1'b1;
    b= 1'b0;
    
   
    #1
    display; 
    
     $display("Initial 00");    
    a=1'b1;
    b= 1'b1;
   
   
    #1
    display; 
   
  end
  
  task display;
    #1 $display("a:%0b, b:%0b ,d0:%0b,d1:%0b,d2:%0b,d3:%0b", a,b,d0,d1,d2,d3);
  endtask
endmodule