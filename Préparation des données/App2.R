data <-read.table(file=file.choose(),header = TRUE,sep = "",dec = ".")
summary(data)
boxplot(data$age,ylab = "AGE")
data$age>80

data$age[which(data$age>80)]<-NA

summary(data)

boxplot(data$weight~data$parity,xlab = "Parity",ylab = "Weight")