module data_sampling (
    data_samp_en,edge_cnt,rx_in,clk,prescale,sampled_bit,rst_n
);

input rx_in;
input data_samp_en;
input [5:0] edge_cnt;
input clk;
input [5:0] prescale;
input rst_n;

output   sampled_bit;



// want to sample the data @ half the peroid of prescale 
// in this case we need to divide the prescale value by 2 and sample @ it and +- clk cyles so total 3 sample for the bit which will be 3 4 5 clk cylce for the 8 prescale i iwll use

//need a logic to decide samped bit either sampled 0 1 by majority sampling


reg sample1, sample2, sample3;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        
        sample1       <= 1'b0;
        sample2       <= 1'b0;
        sample3       <= 1'b0;
    end else begin
        if (data_samp_en) begin
            case (edge_cnt)
                ((prescale/2)-1): sample1 <= rx_in;  // first sample
                (prescale/2): sample2 <= rx_in;  // second sample
                ((prescale/2)-2): begin
                    sample3 <= rx_in; // third sample
                    
                end
            endcase
        end
    end
end

// majority vote logic:
                assign  sampled_bit = (sample1 & sample2) | (sample1 & sample3) | (sample2 & sample3);



    
endmodule