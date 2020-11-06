## Part 1
HappySleep <- read.csv(file='HappySleep.csv',header=TRUE,sep = ',') #Load the file
ggplot(data=HappySleep, aes(HappySleep[,1],HappySleep[,2]))+
  geom_point()+
  xlab('Sleep')+ #X and Y labels
  ylab('Happiness')+
  geom_smooth(method = lm) #adds the line


##On to part 2
data1 <- read.csv(file='data.txt',header=TRUE,sep = ',') # Create data file
library(ggplot2) #Load ggplot
library(cowplot)

#First, the bar plot
data1means = aggregate(list(observations = data1$observations), list(region = factor(data1$region)), mean) #First create df with averages
ggplot(data=data1means, aes(region,observations))+ #execute bar graph
  geom_bar(stat='identity')

##Then, the Scatter.
ggplot(data=data1, aes(region, observations))+
  geom_jitter()

#The bar graph compares means, while the scatter allows you to examine the spread of observations.