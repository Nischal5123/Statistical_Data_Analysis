#ALL R SOLUTIONS:
#########FOR CHAPTER 6 ASSIGNMENT :########
###########################################################################
1-pt(1.04,999)

1-pt(2.50,999)

1-pt(1.04,999)

pt(1.04,999)


1-pt(1.5,399)

2*(1-pt(3,1599))

prop.test(630,1000,p=0.5,"two.sided",correct=FALSE)$p.value

#6.17
pnorm(0.273,lower.tail=FALSE)
 
#6.25
2*(1-pnorm(3.0))
 
#6.29
pnorm(0.64)
##########################################################################################################3

#Number 37 
# Part a
# Ho: µo =  4
# H: µ ??? 4

# Test Statistic:
#  Here,
# Mean = 3.03
# Standard deviation = 1.63
# Now t = (y-µo)/(s/???n)
#       = (3.03-4)/(1.62//???n)
#        = -4.6
students<-read.table("http://users.stat.ufl.edu/~aa/smss/data/Students.dat", header =TRUE)
attach(students)
head(students)
mean(students$ideol)
sd

2 * pt(-4.6,59)

# The calculated value of the p value is smaller than 0.01
# Thus we reject the null hpypthoesis. We have an indication that population political ideology
# differes from 4.0. 

prop.test(47,60,p=0.5,alternative = c("two.sided"),correct=FALSE)$p.value

# Ho: µo =  0.5
# H: µ ??? 0.5

#We found the p-value equal to 0.0000113,
#which is smaler than 0.01.
#Reject the null hypothesis, high chance that the mean is more than 0.5.
 