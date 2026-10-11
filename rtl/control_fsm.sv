module control_fsm (
 input logic clk,rst_n,start,item_valid,last_item,
 output logic input_ready,processing,done
);
 typedef enum logic [1:0] {IDLE,LOAD,COMPUTE,COMPLETE} state_t;
 state_t state,next_state;
 always_ff @(posedge clk or negedge rst_n) begin if(!rst_n) state<=IDLE; else state<=next_state; end
 always_comb begin
  next_state=state; input_ready=0; processing=0; done=0;
  case(state)
   IDLE: if(start) next_state=LOAD;
   LOAD: begin input_ready=1; if(item_valid) next_state=last_item ? COMPLETE : COMPUTE; end
   COMPUTE: begin processing=1; next_state=LOAD; end
   COMPLETE: begin done=1; next_state=IDLE; end
   default: next_state=IDLE;
  endcase
 end
endmodule
