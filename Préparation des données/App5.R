data <-read.table(file=file.choose())
m<-mean(data$V1)
s<-sd(data$V1)
Zs<-(data$V1-m)/s
m
s
Zs
summary(Zs)