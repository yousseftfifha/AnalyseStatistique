cars #visiualiser la base
summary(cars) #sommaire de la base
str(cars) #afficher les modalités
data1=cars
data1
dist2<-data1$dist*0.3048
data1$dist2<-dist2
data1
str(data1)
data1$speed2 <- ifelse(test = data1$speed<10,yes = NA,no=data1$speed*1.60934)
data1
str(data1)
data2<-scale(data1)
View(data2)
View(summary(data2))

minimum<-apply(data2,MARGIN = 2,FUN = min)
maximum<-apply(data2,MARGIN = 2,FUN = max)
carsNorm<-scale(data2,center = minimum,scale = maximum-minimum)
View(summary(carsNorm))