module seven_seg_decoder(
    input  wire [3:0] bin,      // 4-bit binary input (0–F)
    output reg  [6:0] seg       // 7-bit output for segments a-g
);

//// Add your code here -----------------------------------
    assign seg[0] = ((~bin[3]) & bin[2] & (~bin[1]) & (~bin[0])) | ((~bin[3]) & (~bin[2]) & (~bin[1]) & bin[0]) | (bin[3] & bin[2] & (~bin[1]) & bin[0]) | (bin[3] & (~bin[2]) & bin[1] & bin[0]);
    assign seg[1] = (bin[3] & bin[1] & bin[0]) | (bin[2] & bin[1] & (~bin[0])) | (bin[3] & bin[2] & (~bin[0])) | ((~bin[3]) & bin[2] & (~bin[1]) & bin[0]);
    assign seg[2] = (bin[3] & bin[2] & bin[1]) | (bin[3] & bin[2] & (~bin[0])) | ((~bin[3]) & (~bin[2]) & bin[1] & (~bin[0]));
//    assign seg[3] = (bin[2] & bin[1] & bin[0]) | (bin[3] & bin[2] & bin[1]) | ((~bin[3]) & bin[2] & (~bin[1]) & (~bin[0])) | ((~bin[3]) & (~bin[2]) & (~bin[1]) & bin[0]);
//    assign seg[3] = ((~bin[3]) & bin[2] & (~bin[1]) & (~bin[0])) | ((~bin[3]) & (~bin[2]) & (~bin[1]) & bin[0]) | ((~bin[3]) & bin[2] & bin[1] & bin[0]) | (bin[3] & (~bin[2]) & bin[1] & (~bin[0]));
    assign seg[3] = (bin[2] & bin[1] & bin[0]) | ((~bin[3]) & bin[2] & (~bin[1]) & (~bin[0])) | ((~bin[3]) & (~bin[2]) & (~bin[1]) & bin[0]) | (bin[3] & (~bin[2]) & bin[1] & (~bin[0]));
    assign seg[4] = ((~bin[3]) & bin[0]) | ((~bin[3]) & bin[2] & (~bin[1])) | ((~bin[2]) & (~bin[1]) & bin[0]);
//    assign seg[4] = ((~bin[3]) & bin[0]) | ((~bin[3]) & bin[2] & (~bin[1])) | ((~bin[2]) & (~bin[1]) & bin[0]) | (bin[2] & bin[1] & bin[0]);
    assign seg[5] = ((~bin[3]) & (~bin[2]) & bin[0]) | ((~bin[3]) & bin[1] & bin[0]) | ((~bin[3]) & (~bin[2]) & bin[1]) | (bin[3] & bin[2] & (~bin[1]) & bin[0]);
    assign seg[6] = ((~bin[3]) & (~bin[2]) & (~bin[1])) | (bin[3] & bin[2] & (~bin[1]) & (~bin[0])) | ((~bin[3]) & bin[2] & bin[1] & bin[0]);    

// Add your code here -----------------------------------
//    always @(*)
//    begin
//        case(bin)
//            4'h0 : seg = 7'b0000001;
//            4'h1 : seg = 7'b1001111;
//            4'h2 : seg = 7'b0010010;
//            4'h3 : seg = 7'b0000110;
//            4'h4 : seg = 7'b1001100;
//            4'h5 : seg = 7'b0100100;
//            4'h6 : seg = 7'b0100000;
//            4'h7 : seg = 7'b0001111;
//            4'h8 : seg = 7'b0000000;
//            4'h9 : seg = 7'b0000100;
//            4'hA : seg = 7'b0001000;
//            4'hB : seg = 7'b1100000;
//            4'hC : seg = 7'b0110001;
//            4'hD : seg = 7'b1000010;
//            4'hE : seg = 7'b0110000;
//            4'hF : seg = 7'b0111000;                         
//        endcase
//    end

endmodule
