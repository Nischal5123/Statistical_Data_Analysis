#chapter 9 LINEAR REGRESSION ASSIGNMENT 

#importing file
firearms<-read.table("http://users.stat.ufl.edu/~aa/smss/data/Firearms.dat",header=TRUE)
attach(firearms)
head(firearms)
ownership=firearms$Ownership
ownership
rate=firearms$Rate
scatter.smooth(x=ownership,y=rate,main="rate~ownership")
fit<-lm(rate~ownership)
fit
attributes(fit)
fit$coefficients[1]
cor(ownership,rate)
#b
#par(mfrow=c(1, 2))  # divide graph area in 2 columns
boxplot(rate, main="rate", sub=paste("Outlier rows: ", boxplot.stats(rate)$out))  # box plot for 'rate'
boxplot(ownership, main="ownership", sub=paste("Outlier rows: ", boxplot.stats(ownership)$out))  # box plot for 'ownership'
OutVals = boxplot(rate, plot=FALSE)$out
OutVals
OutVals = boxplot(ownership, plot=FALSE)$out
OutVals
#7
un<-read.table("http://users.stat.ufl.edu/~aa/smss/data/UN.dat",header=TRUE)
attach(un)
head(un)
carbon=un$C02
gdp=un$GDP
scatter.smooth(x=gdp,y=carbon,main="carbon~gdp")
fit<-lm(carbon~gdp)
fit
attributes(fit)
fit$coefficients[1]
cor(carbon,gdp)
#24 Houses
houses<-read.table("http://users.stat.ufl.edu/~aa/smss/data/Houses.dat",header=TRUE)
attach(houses)
head(houses)
tax=houses$taxes
tax
size=houses$size
size
scatter.smooth(x=size,y=tax,main="tax~size")
#outliers
OutVals = boxplot(size, plot=FALSE)$out
OutVals
OutVals = boxplot(tax, plot=FALSE)$out
OutVals
#precition equation
fit<-lm(tax~size)
fit
attributes(fit)
fit$coefficients[1]
#correlation
cor(tax,size)
r_square=(cor(tax,size))^2
r_square #r square
#24
bedrooms=houses$bedrooms
price=houses$price
scatter.smooth(x=bedrooms,y=price,main="price~bedrooms")
fit<-lm(price~bedrooms)
fit
summary(fit)$r.square#for r square
anova(fit)
cor(price,bedrooms)
cor(bedrooms,price)#same thing 
attributes(fit)
df.residual(fit)#n-2
nrow(houses)#number of rows in the dataset for n 
#for t value
qt(0.95,98)
#29
2*pt(23.46, 2269,lower.tail = FALSE)#two tailed 
pnorm(23.46)#just for comparison since n is very large 

qt(0.975,98)
