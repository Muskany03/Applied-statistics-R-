


# read data
table <- read.table('ResponseTime.txt', header=FALSE)
colnames(table)[1] <- "response_time"
table$observation_number <- seq(1, 30, 1)
table$phase <- ifelse(table$observation_number <= 10, 1,
ifelse(table$observation_number <= 20, 2, 3))
# scatterplot
plot(table$response_time
, main="Response Time vs. Observation Number")
# stratified scatterplot
plot(response_time~phase, data=table, main="Response Times vs. Phase")



#Import data set. This is formatted two columns/variables
SALARY.data <- read.table(file="SALARY.txt", header=TRUE)
SALARY.data #display data
# For the categorical variable salary, do a frequency table
table(SALARY.data$SALARY)
# (a) Draw a histogram
hist(SALARY.data$SALARY,xlab="Salary",main="Histogram of salary")
#(b) Define our own breakpoints for histogram
hist(SALARY.data$SALARY, breaks=18,xlab="Salary",main="Histogram of salary with breakpoints")
#(c) Draw a boxplot
boxplot(SALARY.data$SALARY,xlab="Salary",main="boxplot of salary",horizontal=TRUE)
#(d) Boxplot by the gender
boxplot(SALARY.data$SALARY~SALARY.data$GENDER,, main="Boxplot of Salaries by Gender", xlab="Salary", ylab="Gender",horizontal=TRUE)
library(psych)
#(e) summary as one group
describe(SALARY.data$SALARY)
# summary as separate groups
describeBy(SALARY.data$SALARY, SALARY.data$GENDER)



# read data
unicef.data <- read.table(file='unicef.txt',header=TRUE,na.strings='.')
# histogram
hist(data$lowbwt, main="Histogram of Low Birth Weights")
# boxplot
boxplot(data$lowbwt, main="Boxplot of Low Birth Weights", horizontal=TRUE)