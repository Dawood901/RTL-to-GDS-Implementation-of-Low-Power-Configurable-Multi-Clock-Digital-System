module parity (
    p_data,data_valid,par_type,rst_n,par_bit,clk,par_en
);

input [7:0] p_data; // Parallel data input
input data_valid; // Data valid signal
input par_type; // Parity type (0 for even, 1 for odd)
input rst_n;
input par_en;
output reg par_bit;
input clk; // Clock signal




always @(posedge clk or negedge rst_n) begin
    
if (!rst_n) begin
    par_bit<=0;


end 
else begin
if (par_en && data_valid) begin
     if (par_type) begin// odd parity bit
    par_bit<= ~^(p_data); 
end

else if (par_type==0) begin
    par_bit<= ^(p_data); // even parity bit
end


end

end





end


endmodule
