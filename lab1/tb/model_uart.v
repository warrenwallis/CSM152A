`timescale 1ns / 1ps

module model_uart(/*AUTOARG*/
   // Outputs
   TX,
   // Inputs
   RX
   );

   output TX;
   input  RX;

   parameter baud    = 115200;
   parameter bittime = 1000000000/baud;
   parameter name    = "UART0";
   
   reg [7:0] rxData;
   event     evBit;
   event     evByte;
   event     evTxBit;
   event     evTxByte;
   reg       TX;
	integer counter;
	reg [7:0] out0;
	reg [7:0] out1;
	reg [7:0] out2;
	reg [7:0] out3;

   initial
     begin
        TX = 1'b1;
		  counter = 0;
     end
   
   always @ (negedge RX)
     begin
        rxData[7:0] = 8'h0;
        #(0.5*bittime);
        repeat (8)
          begin
             #bittime ->evBit;
             //rxData[7:0] = {rxData[6:0],RX};
             rxData[7:0] = {RX,rxData[7:1]};
          end
        ->evByte;
		  //out[(counter % 4) * 8] = rxData;
		  if (counter % 6 == 0)
			begin
				out0 = rxData;
			end
			if (counter % 6 == 1)
			begin
				out1 = rxData;
			end
			if (counter % 6 == 2)
			begin
				out2 = rxData;
			end
			if (counter % 6 == 3)
			begin
				out3 = rxData;
			end
		  counter = counter + 1;
		  
		  //$display ("Counter is %d", counter);
		  if (counter % 6 == 0)
			begin
				$display ("OUTPUT%d %s Received(%s%s%s%s)", $stime, name, out0, out1, out2, out3);
			end
     end

   task tskRxData;
      output [7:0] data;
      begin
         @(evByte);
         data = rxData;
      end
   endtask // for
      
   task tskTxData;
      input [7:0] data;
      reg [9:0]   tmp;
      integer     i;
      begin
         tmp = {1'b1, data[7:0], 1'b0};
         for (i=0;i<10;i=i+1)
           begin
              TX = tmp[i];
              #bittime;
              ->evTxBit;
           end
         ->evTxByte;
      end
   endtask // tskTxData
   
endmodule // model_uart
