library(tidyverse)
library(nycflights13)
library(dplyr)
# TIBBLES  SUBSETTING  CHAPTER 7

# How can you tell if an object is a tibble? 
# (Hint: try printing mtcars, which is a regular data frame).

 mtcars

# Generallly, a tibble is a data set representaion characterized by the
# display of the first ten rows and all of the variables that can be
# displayed in the console
 
# Regarding mtcars, we can use r code to determine if mt cars is a tibble
# or not.
 
is_tibble(mtcars)

# mt cars as constructed is not a tibble, let's convert mtcars to a 
# tibble.

as_tibble(mtcars)

# Let's use r code to determine if the data sets diamonds and flights are
# tibbles.

is_tibble(diamonds)

diamonds

is_tibble(flights)

flights

# Recall that we converted mtcars to a tibble using as_tbble.  Now Use r
# coding to confirm that the converted mtcars is indeed a tibble.


is_tibble (as_tibble(mtcars))


# Now we practice creating tibbles

# Example 1
# Create a tibble of three columns; one has positive integers 1 to 5
# inclusive, another has all 1's, and for the third, each x value is
# divided by 2 and the result is added to the value for y.


tibble(
  x = 1:5,
  y = 1,
  z = x^2 + y
)

# Example 2

# Create a tibble of 4 columns. The first column (a) has even integers 
# 2 thru 20, the second column contains (a) values divided by 4,
# the third column (c) has the value 5 for each observaional row, the 
# fourth column has the difference between columns (c) and (b), 
# and the last column has the value k for each obsevational row.



tibble(
  a = 2*(1:10),
  b = a/4,
  c = 5,
  d = c - b,
  e = "k"
)


# It is possible for a tibble to have column names that are not valid
# R variable names?  You should surround these variables with back ticks
# `

# Example
# Let's suppose one column name is :: and it contains numbers 1 thru 10
# 1:10. The other colummn name is 350 and it contains the letter b for
# all observational rows.

tibble(
  `::` = 1:10,
  `350` = "b"
)
  
# Another way to create a tibble is with tribble()

# Example
# Create a tibble that shows the state and population for the
# three cities  Baltimore, Philadelphia, and Atlanta.

tribble(
~City,             ~State,                 ~Populatin,
"Baltimore",        "Maryland",            619497,       
"Philadelphia",     "Pennsylvania",        1581000,
"Atlanta",          "Georgia",             486290
)

# Lets Take another look at the data set mpg.  Is mpg a tibble ?

is_tibble(mpg)

# The result should be true. Lets confirm that it is true.
mpg

# Note that a maximum of 10 rows were generated.

# How can we produce more rows?

mpg%>%
  print(n=30)


# How to convert a tibble to a regular data frame
#  Remember that diamonds is a tibble

diamonds

# Lets convert diamonds to a regular data frame

as.data.frame(diamonds)

# SUBSETTING

# First let's explore the functions rnorm and runif
# rnorm :  randomly selecting numbers from a normal distribution


# Example1
#Let's randomly generate 10 numbers from a normal distribution that has
# mean of 0 and a standard deviation of 1
rnorm(10, mean = 0, sd = 1) 

# or

rnorm(10)

# Example 2

# Let's randomly generate 10 numbers from a normal distribution that has
# a mean of 24 and a standard deviation 3.


rnorm(10, mean = 24, sd = 3)

# runif : is used to generate  random numbers that lie between a given 
# minimum and maximum. 

#Example 3

# Now let's randomly generate 10 numbers between 0 and 1


runif(10, min = 0 , max = 1)

# Now let's randomly generate 10 numbers beween 5 and 15

runif(10, min = 5 , max = 15)

# If you do not indicate a minimum or a maximum, the defaults are
# minimum = 0 and maximum = 1.

runif(10)

# Now to Susetting

# Consider the following tibble

df <- tibble(
  x = runif(5),
  y = rnorm(5)
)
df


# Let's subset for x from df

# method 1  Use of  $
df$x

df$y

mtcars

mtcars$mpg

# method 2  Use of double brackets  [[ ]]

df[["x"]]

df[["y"]]

mtcars[["mpg"]]

# Let's now subset by position

df

df[[1]]


df[[2]]

mtcars[[3]]

# Example 4

mpg%>%
select(manufacturer ,model, hwy)%>%
filter(hwy>34) -> ghwym
ghwym

ghwym

# Subset by name
ghwym$model

ghwym[["model"]]

# Subset by position
ghwym[[2]]

ghwym[[3]]

q()
y


