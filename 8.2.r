#perform he below operations
#compute the measure of central tendeency forsalary reduction 
#which variabe has highest enter?
library("RcmdrPlugin.IPSUR")
#for salary
x<-c(mean(RcmdrTestDrive$salary),median(RcmdrTestDrive$salary))
x
#for reduction
y<-c(median(RcmdrTestDrive$reduction),mean(RcmdrTestDrive$reduction))
y
#now since we are looking for the variable which hast the highest center
#we can check for this plottiing by histogram or
#by checking kurtosis which decribes the amount of peakedness of a distribution
install.packages("psych")
library(psych)
kurtosi(RcmdrTestDrive$salary)
kurtosi(RcmdrTestDrive$reduction)
x<-RcmdrTestDrive$salary
#thus wwe can see variable reduction has more kurtosi thus more peakes hence more highest center
#histogram plot
h<- hist(x,breaks=10,col = "blue",xlab = "reduction",main = "histogram of reduction with nrml curve")
#however as reduction is not purely continuous hence for center we cant see peak of this
#in that manner salary is more peaked from center as it is purely continuous
#---------------------------------------------
#which meASURE OF CENTER IS MORE APPROPRIATE BEFORE AND AFTER?
#if the distribution is fairly symmetric then the mean and meadian
#should be approximately the same
#check usng boxplot meadian and mean
boxplot(RcmdrTestDrive$before,horizontal = T,col = "red",xlab="before",ylab="boxplot")
#boxplot for normal distribution
boxplot(RcmdrTestDrive$after,horizontal = T,col = "red",xlab="before",ylab="boxplot")
#skewness of variables
skew(RcmdrTestDrive$after)
skew(RcmdrTestDrive$before)