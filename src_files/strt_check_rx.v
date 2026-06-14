module start_check (
    strt_chk_en, strt_glitch,clk,rst_n,sampled_bit
);

input strt_chk_en;
input sampled_bit;
output reg strt_glitch;
input clk,rst_n;

//input [3:0] p_data; // Data to check start bit against


always @(posedge clk or negedge rst_n ) begin
    
  if (!rst_n) begin

    strt_glitch<=0;

  end

  else begin
 if (strt_chk_en) begin
    
    if (sampled_bit==0 ) begin //our frame start bit is 0
        strt_glitch <= 0;
    end

    else begin
        strt_glitch <= 1;
    end


 end    

  end

end
    
endmodule