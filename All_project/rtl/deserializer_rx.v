module Deserializer (
    sampled_bit,deser_en,clk,rst_n,p_data,edge_cnt, prescale
);
input sampled_bit,deser_en,clk,rst_n;
input [5:0] edge_cnt;
input [5:0] prescale;

output reg [7:0] p_data;

always @(posedge clk or negedge rst_n) begin
    
    if (!rst_n) begin
        p_data<=0;
    end

else if (deser_en && edge_cnt==(prescale-2)) begin
    
    p_data<={sampled_bit, p_data[7:1]}; // index [3:1] the bit inwerted from left and pushed one bit away
    
    end 
   
    end


    
endmodule