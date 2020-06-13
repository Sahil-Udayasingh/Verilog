module d_2_array();
reg arr[2:0][2:0];
integer i,j;
initial
    begin
//        arr[0][0] = 1;
//        arr[0][1] = 0;
//        arr[1][0] = 0;
//        arr[1][1] = 1;
//        arr[2][0] = 0;
//        arr[2][1] = 0;
//        arr[1][2] = 0;
//        arr[2][2] = 1;
//        arr[0][2] = 0;
        for(i=0;i<3;i=i+1)
            begin
                for(j=0;j<3;j=j+1)
                    begin
                        if(i==j)
                            arr[i][j]=1;
                        else //if(i!=j)
                            arr[i][j]=0;                        
                    end    
            end
    end
endmodule
