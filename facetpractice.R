library(ggplot2)
library(tidyverse)
mpg

#Creating Facet Plots

#example1 (Plotting over different levels for one categorical variable)
ggplot(data=mpg, mapping=(aes(x=cty,y=hwy))) +
  geom_point() +
  facet_wrap(~drv) 
  
#example2 (Plotting over different levels for one categorical variable, also showing regression lines)

ggplot(data=mpg, mapping=(aes(x=cty,y=hwy))) +
  geom_point() +
  geom_smooth(method=lm,se= TRUE) +
  facet_wrap(~drv) 



#example3  (Plotting over different levels for two categorical variables)
ggplot(data=mpg, mapping=(aes(x=cty,y=hwy))) +
  geom_point() +
  geom_smooth(method=lm,se=FALSE) +
  facet_grid(cyl~drv)

#example4  (Two ways for creating a histogram)
  #method 1
ggplot(data = mpg) +
  geom_histogram(mapping= aes(x=hwy, binwidth = 2))

  #method 2
ggplot(data=mpg, mapping = aes(x=hwy)) +
  geom_histogram(binwidth = 2)  

#example5 (Facet plotting for histograms over different levels of one
#categorical variable)
ggplot(data = mpg) +
  geom_histogram(mapping= aes(x=hwy)) +
  facet_wrap(~drv)


#example6 (Facet plotting for boxplots over different levels of one
#categorical variable)
ggplot(data = mpg)  +
  geom_boxplot(mapping=aes(y=cty)) +
  facet_wrap(~drv)


#example7 (Facet plotting for boxplots over different levels of two
#categorical variables)

ggplot(data = mpg)  +  
  geom_boxplot(mapping=aes(y=cty)) +
  facet_grid(cyl~drv)

#example 8  (changing the number of rows and columns of a facet plot)
ggplot(data=mpg, mapping=(aes(x=cty,y=hwy))) +
  geom_point() +
  facet_wrap(~class) 

# Change to 2 rows
ggplot(data=mpg, mapping=(aes(x=cty,y=hwy))) +
  geom_point() +              
  facet_wrap(~class, nrow = 2) 


# Change to 2 columns
ggplot(data=mpg, mapping=(aes(x=cty,y=hwy))) +
  geom_point() +
  facet_wrap(~class , ncol = 2) 




q()
y
