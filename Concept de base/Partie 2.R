#1.
poid.nais <-read.table(file = file.choose(),header = T,sep = ";")
#2.
poid.nais[order(poid.nais$BWT),]
#3.
poid.nais[poid.nais$RACE<=2 & poid.nais$SMOKE==1,]