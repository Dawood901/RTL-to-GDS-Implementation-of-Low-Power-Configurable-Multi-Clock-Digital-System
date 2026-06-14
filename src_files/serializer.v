module serializer (
    p_data,ser_en,ser_done,ser_data,clk,rst_n,busy
);

input [7:0] p_data;
input ser_en;
input clk,rst_n;
output reg ser_data;
output reg ser_done;
input busy;

 reg [7:0]  temp_ser_data;
 reg [2:0] count; // Counter for bits transmitted

always @(posedge clk or negedge rst_n) begin

    if (!rst_n) begin
        ser_data<=0;
        ser_done<=0;
        count<=0;
        temp_ser_data<=0;
    end
 else begin
    if(!busy)
    begin
        temp_ser_data<=p_data;
        count<=0;
        ser_done<=0; // Reset done signal when not busy
    end

    else if (ser_en && count<=7) begin
        
        
        ser_data<=temp_ser_data[count];
        count<=count+1;
        if (count == 7) begin
            ser_done <= 1; // Set done signal when all bits are transmitted
        end else begin
            ser_done <= 0; // Clear done signal for subsequent bits
        end


    end

    end
end



    /*
assign count_max = 7; // Maximum count for 8 bits (0 to 7)
assign count_min = 0; // Minimum count for 8 bits (0 to 7
*/
endmodule
