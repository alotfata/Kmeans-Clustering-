library(ISLR)
head(iris)
library(ggplot2)

ggplot(iris, aes(Petal.Length, Petal.Width, color=Species)) + geom_point()

set.seed(101)
cluster<- kmeans(iris[,1:4],3, nstart = 20)
cluster
table(cluster$cluster, iris$Species)

library(cluster)

clusplot(iris, cluster$cluster, color = T)

df1<-read.csv("winequality-red.csv", sep=";")
df2<-read.csv("winequality-white.csv", sep=";")
head(df1)

df1$label<- sapply(df1$chlorides, function(x){"red"})
df1

df2$label <- sapply(df2$chlorides, function(x){"white"})  
df2

# comibine two datset 

df3<- rbind( df1, df2)
tail(df3)
library(ggplot2)
ggplot(df3, aes(residual.sugar, color="red" ))+geom_histogram(binwidth = 1, aes(fill=label))+scale_fill_manual(values =c("7300FF", "302109"))

ggplot(df3, aes(citric.acid , color="red"))+geom_histogram(bandwidth=2, aes(fill=label))+scale_fill_manual(values=c("7300FF", "302109")

ggplot(df3, aes(alcohol , color="red"))+geom_histogram(bandwidth=2, aes(fill=label))+scale_fill_manual(values=c("7300FF", "302109")
                                                                                                       
ggplot(df3, aes(df3$citric.acid, df3$residual.sugar))+geom_point(color=df3$label, size=0.5)+ scale_color_manual(values=c("black", "302109"))+theme_dark()
ggplot(df3, aes(df3$volatile.acidity, df3$residual.sugar))+geom_point(aes(color=" label"))

cluster<- kmeans(df3[, 1: 11], 2)
cluster$centers

table (cluster$cluster, df3$label)

table 


                                                                                                                                                                                                                      
