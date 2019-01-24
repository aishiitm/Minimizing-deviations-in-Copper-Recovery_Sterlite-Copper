data_Heap<-read.csv("Heap Clearance YTD_edited2.csv", header=TRUE, na.strings = "NA")
data_Heap$X..Diff=as.numeric(sub("%","", data[,4]))
data_Heap$D=as.numeric(sub("%","",data[,8]))
data_frame1<-0
for( i in 1:185){
     if(data_Heap$D[i] >=50 && (data_Heap$X..Diff[i]>=2 | data_Heap$X..Diff[i]<=-2)){
    data_frame<-data.frame(data_Heap$X..Diff[i], data_Heap$D[i])
    data_frame1<-rbind.data.frame(data_frame1,data_frame,make.row.names = FALSE)
     }  
}
data_frame1[-1,]

#A,B,C,D,E,F are the bins above the respective weighfeeders
#This code gives an idea on the percentage error when different weighfeeders are used and different amounts are charged in the weighfeeders
#output is stored in the file 'Heap_Clearance YTD