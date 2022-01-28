a<-c(1,2,3)
b<-c(4,5,6)
c<-c(7,8,9)
m<-cbind(a,b,c)
print("Content of the said matrix:")
print(m)
plot(a, ylim=range(a, b, c), col='blue', xlab="x-axis", ylab="y axis",main="My Graph")
lines(b, col='red')
lines(c, col='green')

#2
employees = data.frame(Name=c("Kate","lisa","joe", "Emily","Dave"),
                       Age=c(23,22,25,26,32),
                       Role=c("Clerk","Manager","Exective","CEO","ASSISTANT"),
                       Experience=c("5 Years","9 Years","8 Years","3 Years","4 Years")
)
print("Details of the employees:")                      
print(employees)
 #3
library(ggplot2)
x <- 1:20;y = x^2
qplot(x,y)
#4
marks = c(65, 55, 80, 94,100)
barplot(marks,
        main = "Plot Of 5 Subjects",
        xlab = "Marks",
        ylab = "Subject",
        names.arg = c("Maths", "Physics", "Chemistry", "Biology","Stats"),
        col = "yellow")
#5
print("Sequence of numbers from 20 to 50:")
print(seq(20,50))
print("Mean of numbers from 20 to 60:")
print(mean(20:50))
print("Sum of numbers from 51 to 91:")
print(sum(20:50))
#6
a = sample(-50:50, 10, replace=TRUE)
print("Content of the vector:")
print("10 random integer values between -50 and +50:")
print(a)
#7
name = readline(prompt="Input your name: ")
age =  readline(prompt="Input your age: ")
print(paste("My name is",name, "and I am",age ,"years old."))

