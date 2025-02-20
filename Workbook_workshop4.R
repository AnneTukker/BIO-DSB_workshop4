10 + 20
5^4
2 + 2 == 4
8 * 8
15 >= 50
10 +
5^3-5/2
(5^3-5)/2
32^1/2
32^(1/2)
a <- 3+2
a + 10
round(x = 2.578394975, digits = 2)
help(round)
number_of_digits <- 3

my_number <- 2.4326782647

rounded_number <- round(x  = my_number, 
                        digits = number_of_digits)
library(ggplot2)
library(palmerpenguins)
install.packages("palmerpenguins")
library(palmerpenguins)

ggplot(data = penguins,aes(x = bill_length_mm, y = bill_depth_mm)) + geom_point(aes(colour=species)) 

ggplot(data = penguins, # calls ggplot function, data is penguins
       aes(x = bill_length_mm, # sets x axis as bill length
           y = bill_depth_mm)) + # sets y axis value as bill depth
  geom_point(aes(colour=species)) # plot points coloured by penguin species