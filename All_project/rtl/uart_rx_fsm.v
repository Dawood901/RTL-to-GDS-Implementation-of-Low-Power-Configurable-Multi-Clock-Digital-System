module uart_rx_fsm (
    input        rx_in,
    input        clk,
    input        rst_n,
    input  [5:0] edge_cnt,     // Edge count for sampling
    input  [3:0] bit_cnt,      // Bit count for current byte
    input        par_en,       // Parity enable
    input        strt_glitch,  // Start bit glitch detection
    input        stp_err,      // Stop bit error
    input        par_err,      // Parity error
    input       [5:0] prescale,

    output reg   data_samp_en, // Data sampling enable
    output reg   enable,       // Enable edge-bit counter
    output reg   par_chk_en,   // Parity check enable
    output reg   strt_chk_en,  // Start bit check enable
    output reg   stp_chk_en,   // Stop bit check enable
    output reg   deser_en,     // Deserializer enable
    output reg   data_valid    // Data valid output
);

    // FSM states
    reg [2:0] cs, ns;
    localparam idle   = 3'b000,
               start  = 3'b001,
               data   = 3'b010,
               parity = 3'b011,
               stop   = 3'b100,
               valid  = 3'b101;

    // Sequential state update
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            cs <= idle;
        else
            cs <= ns;

        // For debugging
       // $display("Time=%0t: State Change: cs=%0d ns=%0d", $time, cs, ns);
    end

    // Next state logic
    always @(*) begin
        
        ns = cs; // Default to hold state   
        case (cs)
            idle: begin
                if (rx_in == 0)
                    ns = start;
                else
                    ns = idle;
            end

            start: begin
                /*
                if (strt_glitch == 0 && edge_cnt == prescale-1  ) begin
                    ns = data;
                end
                */
                if (strt_glitch == 0 && bit_cnt == 1 ) begin
                    ns = data;
                end

                else if (strt_glitch) begin
                    ns = idle;
                end
                // wait 8 cycles here
                else begin
                    ns = start;
                end
                
                    
            end

           

            data: begin
                if (bit_cnt == (9)   ) begin

                    if (par_en)
                        ns = parity;
                    else
                        ns = stop;
                end
                else begin
                    ns = data;
                end
            end

            parity: begin
                if (  bit_cnt == 10 ) begin
                    
                
                    //ns = idle;
                    ns = stop; // go to stop state on parity error
            end
                else begin
                    ns = parity;
                end
            end

            stop: begin
             
                 if (bit_cnt == 11) begin

                    if (rx_in==0) begin
                        ns = start;
                        
                    end
                    else begin
                        ns = idle;
                    end
                    
                end



                    
            end
default: begin
            ns = idle; // Safety default
        end
        endcase
    end

    // Output logic
    always @(*) begin
        // Default values
        data_valid   = 0;
        enable       = 0;
        data_samp_en = 0;
        par_chk_en   = 0;
        strt_chk_en  = 0;
        stp_chk_en   = 0;
        deser_en     = 0;

        
     
        case (cs)
            idle: begin
                // everything stays 0

        data_valid   = 0;
        enable       = 0;
        data_samp_en = 0;
        par_chk_en   = 0;
        strt_chk_en  = 0;
        stp_chk_en   = 0;
        deser_en     = 0;

            end

            start: begin
                enable       = 1;
                data_samp_en = 1;
                data_valid   = 0;
                stp_chk_en   = 0;
                deser_en     = 0;
                par_chk_en       = 0;
                /*
                if (edge_cnt==(prescale-1)) begin
                     strt_chk_en  = 1;
                end
                else begin
                    strt_chk_en  = 0;
                end
               */
             //  dat_samp_en <= 1; // enable data sampling
               // enable <= 1; // enable edge bit counter
             //   deser_en <= 1; // enable deserializer
                if (prescale == 8 && edge_cnt > 5)
                    strt_chk_en = 1; // to see if this a glitch or not
                else if (prescale == 16 && edge_cnt > 9)
                    strt_chk_en = 1;
                else if (prescale == 32 && edge_cnt > 17)
                    strt_chk_en = 1;
                //deser_en     = 1;
            end

            data: begin
                enable       = 1;
                data_samp_en = 1;
                deser_en     = 1;
                strt_chk_en =0;
                data_valid =0;
                stp_chk_en =0;
                par_chk_en =0;


            end

            parity: begin
                deser_en     = 0;
                 enable       = 1;
                 data_samp_en =1;
                 strt_chk_en =0;
                 stp_chk_en=0;
                    data_valid =0;
                    

               if (prescale == 8 && edge_cnt > 5)
                    par_chk_en = 1; // enable parity check when we are sure this is the sampled data for parity
                else if (prescale == 16 && edge_cnt > 9)
                    par_chk_en = 1;
                else if (prescale == 32 && edge_cnt > 17)
                    par_chk_en = 1;
                
                     if (prescale == 8 && edge_cnt > 5)
                    par_chk_en = 0; // enable parity check when we are sure this is the sampled data for parity
                else if (prescale == 16 && edge_cnt > 10)
                    par_chk_en = 0;
                else if (prescale == 32 && edge_cnt > 20)
                    par_chk_en = 0;

            end

    
stop: begin
                deser_en     = 0;
                enable       = 1;
                data_samp_en = 1;
                strt_chk_en =0;
                par_chk_en =0;
            if (edge_cnt == (prescale-1)) begin
                stp_chk_en = 1;
                if (par_en) begin
                    if (!par_err && !stp_err) begin
                        data_valid = 1;
                        stp_chk_en = 0;
                    end
                    else begin
                        data_valid = 0;
                        stp_chk_en = 0;
                    end
                end
                else if (!stp_err) begin
                    data_valid = 1;
                    stp_chk_en = 0;
                end
            end
            else begin
                stp_chk_en = 0;
                data_valid = 0;
            end

        end




      

            default: begin 
        data_valid   = 0;
        enable       = 0;
        data_samp_en = 0;
        par_chk_en   = 0;
        strt_chk_en  = 0;
        stp_chk_en   = 0;
        deser_en     = 0;
        end

          endcase
    end
   
      

endmodule











