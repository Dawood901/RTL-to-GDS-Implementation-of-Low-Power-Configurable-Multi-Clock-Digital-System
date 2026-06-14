module stop_check (
    stp_chk_en, sampled_bit, clk, rst_n,stp_err,p_data
);

input stp_chk_en; // Stop bit check enable signal
input sampled_bit;
input clk, rst_n;
input [7:0] p_data; // Data to check stop bit against
output reg stp_err; // Stop bit error signal

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        stp_err <= 1'b0;
    end else begin
        if (stp_chk_en) begin
            

            if (sampled_bit == 1 ) begin // Our frame stop bit is 1
                stp_err <= 0;
            end else begin
                stp_err <= 1;
            end
        end
    end
end

endmodule