module parity_check (
    par_typ,par_chk_en,par_err,sampled_bit,clk,rst_n,p_data,prescale
);

input par_typ; // Parity type: 0 for even, 1 for odd
input sampled_bit; // Sampled bit for parity check
input clk, rst_n;
input par_chk_en; // Parity check enable signal
output reg par_err; // Parity error signal

input [7:0] p_data; // Data to check parity against
wire  p_data_reg;
input [5:0] prescale;

always @(posedge clk or negedge rst_n) begin
    
    if (!rst_n) begin
        par_err <= 1'b0; // Reset parity error
    end
    else  begin

        if (par_chk_en) begin
            
            // Check parity based on type
            if (par_typ == 0) begin // Even parity
                par_err <= (sampled_bit ^ p_data_reg) ? 1'b1 : 1'b0; // Error if sampled bit does not match even parity
            end else begin // Odd parity
                par_err <= (sampled_bit ^ ~p_data_reg) ? 1'b1 : 1'b0; // Error if sampled bit does not match odd parity
            
            end



        end
        else begin
            par_err <= 1'b0; // No parity check, no error
        end





    end



end


// clal
assign p_data_reg = ^p_data; // Calculate parity bit from data bits only


    
endmodule