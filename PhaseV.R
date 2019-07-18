student <-read.csv("C:/Users/Nischal Aryal/Desktop/student-survey.csv", header=TRUE)
head(student)
attach(student)
sports<-(student$sp)
mean(sports)
sd(sports)
se<-sd(sports)/sqrt(length(mean))
se
t.test(sports,conf.level =0.995)$conf.int
hist(sp)
boxplot(sp)
summary(sp)

#h

length(sports[student$pa=="r"])
prop.test(15,55,conf.level = 0.99)$conf.int

length(sp[pa=="r"])




#i
plot(student$hi,student$co)
summary(student$hi,student$co)
cor(student$hi,student$co)
lm(student$hi~student$co)

#3
pnorm(0.12)

#4a
prop.test(160,400,conf.level =0.995)$conf.int

#4c
prop.test(16,40,conf.level =0.995)$conf.int

2*(1-pt(0.68,185))
