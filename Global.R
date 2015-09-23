library("forecast")

rawdf <- read.csv("24temp.csv", sep = ';')
rownames(rawdf) <- rawdf[,1]
df <- rawdf[,-1]