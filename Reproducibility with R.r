#install.packages("ggplot2")
#Add the packages installed as a comment, since it is done only once but helpful for other users

library(ggplot2) 

library(caret) # why are you importing this? Where are you using this??

sessionInfo() #save this information as some libraries may not work with some versions of R

data(cars)
x<- cars$speed
y<- cars$ dist
ggplot(cars, aes(x=x, y=y))+geom_point(color="red") + labs(title="Guess what this plot represents?")


ggplot(cars, aes(x=speed, y=dist))+geom_point(color="purple")+labs(x="Top Speed", y="Stopping Distance", title="Plot of Cars data in R")+theme(plot.title = element_text(hjust = 0.5))

dataerr<-read.csv("C:\\Users\\AllegraT\\Desktop\\Reproducibility\\output.csv") # This will not work for everyone!

df<- read.csv("../Reproducibility/output.csv") #will work as the Reproducbility folder can be shared

data("mtcars")

head(mtcars)

nrow(mtcars)

n = nrow(mtcars)
trainIndex = sample(1:n, size = round(0.8*n), replace=FALSE)
train = mtcars[trainIndex , 1:7]
test = mtcars[-trainIndex , 1:7]

nrow(train)
nrow(test)

write.csv(train, "C:\\Users\\SarahS\\Desktop\\Reproducibility\\mtcarstrain.csv")
write.csv(test, "C:\\Users\\SarahS\\Desktop\\Reproducibility\\mtcarstest.csv")

#Calculate the hypotenuse
hypotenuse<-function(a,b){
    print(sqrt(a^2+b^2))
}

side1 = 3
side2 = 4
hyp = hypotenuse(side1,side2)

sidea = 7
sideb = 2
hyp_a = hypotenuse(sidea,sideb)

rnorm(10) # The numbers change every time you run the cell

set.seed(99)
rnorm(10)
#Same output with seed




