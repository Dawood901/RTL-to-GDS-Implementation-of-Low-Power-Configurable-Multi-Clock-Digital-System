`timescale 1ns / 1ps
module read_block (
  r_clk,rrst_n,rinc,rq2_wptr,rptr,raddr,rempty  
);

input r_clk,rrst_n,rinc;
input [4:0]  rq2_wptr; //synchronized write pointer in the read domain
    output reg rempty; //empty flag
    output  [3:0] raddr; // the achtual adress reading from
    output reg [4:0] rptr; // read pointer gray encoded to send to write blk
    
 wire  max_ptr= 31;
reg [4:0] r_ptr_binary;

always @(posedge r_clk or negedge rrst_n) begin

if (!rrst_n) begin
    //raddr<=0;
    rptr <=0;
    rempty <=0;
    r_ptr_binary<=0;
end
else begin

        if(!rempty && rinc) begin
        r_ptr_binary<=r_ptr_binary+1; //incrementing the ptr
        
    end
    else if (rptr==max_ptr) begin
        r_ptr_binary<=0; // reseting the ptr
        rptr<=0;
        
    end
    
end

    
end

always @(*) begin
        rptr = r_ptr_binary ^ (r_ptr_binary >> 1); // read pointer gray encoded to be send to anoher clk domain

    if (rptr==rq2_wptr) begin
        rempty=1;
        
    end
    else begin
        rempty=0;
    end
   

    
end

assign raddr =r_ptr_binary[3:0];

endmodule

/*
module read_block (
  input         r_clk,
  input         rrst_n,
  input         rinc,
  input  [4:0]  rq2_wptr, // synchronized write pointer in the read domain (gray)
  output reg    rempty,   // empty flag (registered)
  output [3:0]  raddr,    // actual address reading from
  output [4:0]  rptr      // read pointer gray encoded to send to write blk (wire)
);

  reg  [4:0] r_ptr_binary;
  wire [4:0] rptr_w; // gray version

  // convert binary -> gray as combinational wire (no sequential drive conflict)
  assign rptr_w = r_ptr_binary ^ (r_ptr_binary >> 1);
  assign rptr = rptr_w;
  assign raddr = r_ptr_binary[3:0];

  always @(posedge r_clk or negedge rrst_n) begin
    if (!rrst_n) begin
      r_ptr_binary <= 5'b0;
      rempty <= 1'b1;
    end else begin
      // increment binary pointer only on valid read & not empty
      if (rinc && !rempty) begin
        // wrap-around naturally via binary increment
        r_ptr_binary <= r_ptr_binary + 1'b1;
      end

      // update empty flag synchronously using synchronized write pointer
      // compare gray-coded pointers (both in read clock domain)
      if (rptr_w == rq2_wptr)
        rempty <= 1'b1;
      else
        rempty <= 1'b0;
    end
  end

endmodule
*/