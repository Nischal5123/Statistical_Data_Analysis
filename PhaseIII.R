#Assignment 3 #chapter 7

qnorm(0.99)

#30
changes<-c(10,20,30)      
mean(changes)
sd(changes)
          

changes<-c(30,45,45)      
mean(changes)
sd(changes)

#for t value
qt(0.95,4)

#7.41
students<-read.table("http://users.stat.ufl.edu/~aa/smss/data/Students.dat", header =TRUE)
attach(students)
head(students)
#a
ideology<-(students$ideol)
ideology
mean(ideology)
sd(ideology)
t.test(ideology[affil==1],ideology[affil==2],paired=F)

 #c
t.test(tv,sport,paired=F)

#b
t.test(abor[gender==0],abor[gender==1],paired=F)

qt(0.05,25)
1-pt(2.5,4)
pnorm(-1.3017)
pt(-1.3017,60)
