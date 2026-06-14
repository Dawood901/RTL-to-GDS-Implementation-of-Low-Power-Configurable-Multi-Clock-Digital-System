module edge_bit_counter (
    bit_cnt,enable,clk,rst_n,edge_cnt,prescale
);

input enable,clk,rst_n;
output reg [5:0] edge_cnt;
input [5:0] prescale;
output reg [3:0] bit_cnt;

always @(posedge clk or negedge rst_n) begin
    
    if (!rst_n) begin
        edge_cnt<=0;
        bit_cnt<=0;
    end
    else if (enable) begin
        
        edge_cnt<=edge_cnt+1;

        if(edge_cnt == prescale-1 ) begin

            bit_cnt <= bit_cnt + 1;
            edge_cnt <= 0;
 end

    end

    else begin
        edge_cnt<=0;
        bit_cnt<=0;
    end



    


end


    
endmodule