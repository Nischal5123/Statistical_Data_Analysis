



## CHAPTER 4 
#Question 4.17 b>
pnorm (0.98)#z<0.98,z value
#Question 4.23 
pnorm(1) #SAT
pnorm(1.7) #ACT

#Question 4.37
pnorm(-abs(3))

#Question 5.24
#a Verifying 
changes<-c(11,11,6,9,14,-3,0,7,22,-5,-4,13,13,9,4,6,11)
mean(changes)
sd(changes)
se<-sd(changes)/sqrt(17)
#c
t.test(changes)
hist(changes)

#Question 5.31
#a
lower<-4.089-(qt(0.995,2449)*(0.0290))#in qt we have to use 0.99+0.05 for 99 percent confidence interval
lower

upper<-4.089+(qt(0.995,2449)*(0.0290))
upper
#b
#i>Same as a but 95% interval
lower<-4.089-(qt(0.975,2449)*(0.0290))
lower
upper<-4.089+(qt(0.975,2449)*(0.0290))
upper
#ii>Changing n mean and using 99%
lower<-3.2-(qt(0.995,414)*(0.073))
lower
upper<-3.2+(qt(0.995,414)*(0.073))
upper

mean(student_survey$tv)
t.test(student_survey$tv)
table(student_survey$tv)
qt(0.995,414)



#Question 5.54
jewish<-c(0,1,1,1,1,2,2,2,2,2,2,3,4,4,4,50)#5 incorrectly recorded as 50
t.test(jewish)
sd(jewish)

qnorm(0.99,100,16)#finding z value given miu and sigma
1-pnorm(3)

#life and death
attach(Students)
life[life==1]
length(life[life==1])
prop.test(31,60)$conf.int

#confidence interval different then 
prop.test(680,1530,conf.level =0.975)$conf.int
