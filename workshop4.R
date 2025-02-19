library(tidyverse) #loading the tidyverse package
install.packages("tidyverse") #installing the tidyverse package; you can only load the package when it is installed, the previous line of code won't work without this line first
library(tidyverse) #the package can now be loaded
##Bear in mind that multiple packages loaded at the same time can have conflicts
#creating some objectives:
name <- "Anne"
age <- 21 
today <- Sys.Date()
new_year <- as.Date("2026-01-01")
data <- rnorm(n = 10, mean = 15, sd = 3)
?rnorm() #this opens up the help panel for the rnorm() command
mean(data) #calculate the mean for the 'data' objective that was specified earlier
#testing with the use of the objectives
age+50 
decade <- age+10
decade+10
#creating vectors: 
character_vector <- c("fruits","vegetables","seeds")
numeric_vector <- c(1,2,3)
logical_vector <- c(TRUE, TRUE, FALSE)
##Vectors allow us to add multiple elements of the same data type in a single vector
# specifying some new vectors:
person <- c("Mark", "Phil", "Becky", "Tony")
hobby <- c("paiting", "coding", "shopping", "gaming")
awesomeness <- c(1,100,1,1)

# making a tibble:
my_data <- tibble(person, hobby, awesomeness)
my_data

#Testing out R functions for looking at the tibble:
head(my_data, n=2)
tail(my_data, n=3)
nrow(my_data)
ncol(my_data)
colnames(my_data)
view(my_data)
glimpse(my_data)
str(my_data)

#specifying some more vectors:
country <- c("x", "y", "z")
yr1960 <-  c(10, 20, 30)
yr1970 <-  c(13, 23, 33)
yr2010 <-  c(15, 25, 35)

#Creating a new tibble with the new vectors:
country_data <- tibble(country, yr1960, yr1970, yr2010)
country_data

#Reshaping the tibble to be a longer version:
tidyr::pivot_longer()  #pivot allows us to reshape the tibble
pivot_longer(data = country_data,
             cols = yr1960:yr2010,
             names_to = "year",
             names_prefix = "yr",
             values_to = "metric")

#We can overwrite the original objective/vector to be the reshaped version:
country_data <- pivot_longer(data = country_data,
                             cols = yr1960:yr2010,
                             names_to = "year",
                             names_prefix = "yr",
                             values_to = "metric")
##You can also create a new objective for this so both versions of the tibble can exist in the environment:
long_country_data <- pivot_longer(data = country_data,
                                  cols = yr1960:yr2010,
                                  names_to = "year",
                                  names_prefix = "yr",
                                  values_to = "metric")
