/*module uart_fsm (
    data_valid,par_en,ser_done,ser_en,mux_sel,busy,clk,rst_n
);

input data_valid; // Data valid signal
input par_en; // Parity enable signal
input ser_done; // Serializer done signal
output ser_en; // Serializer enable signal
output [1:0] mux_sel;
output busy; // Busy signal indicating transmission in progress

input clk; // Clock signal
input rst_n; // Active low reset signal

reg [2:0] ns,cs;



parameter idle = 2'b00,
          start = 2'b01,
          data = 2'b10,
          parity = 2'b11,
          stop = 2'b100;  // Add stop if needed

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cs <= idle; // Reset state to idle
            
        end else begin
            cs <= ns;
        end
    end


    always @( posedge clk or negedge rst_n ) begin




        case (cs) begin 


        idle  : begin

            if (data_valid==0) begin
                ns <= idle; // Stay in idle if no data is valid
                 busy<=0;
                 ser_en<=0;


            end
            else
            ns<=start; // Transition to start state if data is valid
            busy<=1; // Set busy signal when entering start state
            
        end 
        

        start: begin
            ser_en <= 1;
            busy <= 1;
            mux_sel <= 2'b00; // Select start bit
            ns <= data; // Move to data state



        end

        data : begin
            busy<=1;
            mux_sel<=2'b10;
            if (ser_done) begin
                ser_en<=0; // Disable serializer when done
                if(par_en ) begin
                    ns <= parity;
                  //  busy<=1;
                   // mux_sel<=2'b11; // Select parity bit
                end
                else begin
                    ns <= stop; // Move to stop state if no parity
                end
                
            end
        end

            parity : begin
                busy<=1;
                ns<=stop; // Move to stop state after parity
                mux_sel<=2'b11; // Select parity bit



            end

            stop : begin
                busy<=1;
                mux_sel<=2'b01; // Select stop bit
                ns <= idle; // Return to idle state after stop bit
                ser_en<=0;


            end




        




            default: begin
                ns <= idle;
            end

        end
        endcase

    end
    

    


endmodule

module uart_fsm (
    input        data_valid,     // Data valid signal
    input        par_en,         // Parity enable signal
    input        ser_done,       // Serializer done signal
    output reg   ser_en,         // Serializer enable signal
    output reg [1:0] mux_sel,    // Mux select
    output reg   busy,           // Busy signal
    input        clk,            // Clock signal
    input        rst_n           // Active low reset
);

    reg [2:0] cs, ns;

    // State encoding
    parameter idle   = 3'b000,
              start  = 3'b001,
              data   = 3'b010,
              parity = 3'b011,
              stop   = 3'b100;

    // Sequential state transition
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            cs <= idle;
        else
            cs <= ns;
            $display("Time = %0t: State Change: cs = %0d, ns = %0d", $time, cs, ns);
    end

    // FSM Logic
    always @(*) begin
        if (!rst_n) begin
            ns      = idle;
           // ser_en  <= 0;
            //mux_sel <= 0;
            //busy    <= 0;
        end else begin
            case (cs)
                idle: begin
                    if (!data_valid) begin
                        ns      = idle;
                     
                    end else begin
                        ns      = start;
                       // busy    <= 1;
                    end
                end

                start: begin
                         ns  = data;
              
                end

                data: begin
                 
                    if (ser_done) begin
                    //    ser_en <= 0;
                        ns     = (par_en) ? parity : stop;
                    end else begin
                        ns = data;
                    end
                end

                parity: begin
                  //  mux_sel <= 2'b11; // Parity bit
                    ns      = stop;
                //    busy    <= 1;
                end

                stop: begin
                //    mux_sel <= 2'b01; // Stop bit
                    ns      = idle;
                //    busy    <= 1;
                end

                default: begin
                    ns = idle;
                end
            endcase
        end
    end

    always @(*) begin // output logic 


     //defalt values
        mux_sel=2'b01;
        busy=1;  // 0 only when idle
        ser_en=0; // 1 only in data sate

    case (cs)  
        
    
        
       
    idle   : begin
                        busy    = 0;
                        ser_en  = 0;
                        mux_sel = 2'b00; // IDLE state

     end


     start : begin
                    ser_en  = 1;
                    mux_sel = 2'b00; // START bit
                     busy    = 1;
     


     end 

     data : begin

                     mux_sel <= 2'b10; // Data bits
                    busy    <= 1;

     end

     parity : begin
                  mux_sel <= 2'b11; // Parity bit
                   // ns      <= stop;
                    busy    <= 1;

     end

     stop : begin
                     mux_sel <= 2'b01; // Stop bit
                   // ns      <= idle;
                   busy    <= 1;

     end




    
        
    endcase


        
    end

endmodule
*/
module uart_fsm (
    input        data_valid,     // Data valid signal
    input        par_en,         // Parity enable signal
    input        ser_done,       // Serializer done signal
    output reg   ser_en,         // Serializer enable signal
    output reg [1:0] mux_sel,    // Mux select
    output reg   busy,           // Busy signal
    input        clk,            // Clock signal
    input        rst_n           // Active low reset
);

    reg [2:0] cs, ns;

    // State encoding
    parameter idle   = 3'b000,
              start  = 3'b001,
              data   = 3'b010,
              parity = 3'b011,
              stop   = 3'b100;

    // Sequential state transition
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            cs <= idle;
        else
            cs <= ns;
            //$display("Time = %0t: State Change: cs = %0d, ns = %0d", $time, cs, ns);
    end

    // FSM Logic
    always @(*) begin
        if (!rst_n) begin
            ns      = idle;
        end else begin
            case (cs)
                idle: begin
                    if (!data_valid) begin
                        ns      = idle;
                    end else begin
                        ns      = start;
                    end
                end

                start: begin
                    ns  = data;
                end

                data: begin
                    if (ser_done) begin
                        ns     = (par_en) ? parity : stop;
                    end else begin
                        ns = data;
                    end
                end

                parity: begin
                    ns      = stop;
                end

                stop: begin
                    ns      = idle;
                end

                default: begin
                    ns = idle;
                end
            endcase
        end
    end

    always @(*) begin // output logic 
        // Default values
        mux_sel = 2'b01;
        busy    = 1;  // 0 only when idle
        ser_en  = 0; // 1 only in data state

        case (cs)
            idle: begin
                busy    = 0;
                ser_en  = 0;
                mux_sel = 2'b00; // IDLE state
            end

            start: begin
                ser_en  = 1;
                mux_sel = 2'b00; // START bit
                busy    = 1;
            end

            data: begin
                mux_sel = 2'b10; // Data bits
                busy    = 1;
                ser_en  = 1;     // Enable serializer during data state
            end

            parity: begin
                mux_sel = 2'b11; // Parity bit
                busy    = 1;
            end

            stop: begin
                mux_sel = 2'b01; // Stop bit
                busy    = 1;
            end

            default: begin
                // Default case (should never be reached)
                mux_sel = 2'b00;
                busy    = 0;
                ser_en  = 0;
            end
        endcase
    end

endmodule
