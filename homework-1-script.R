##chanllenge 1
#load the text of the last chapter of Charles Darwin’s “On the Origin of Species” 
library(readr)
D <- read.delim("darwin.txt", header = TRUE, sep = "\t")[[1]]

#Calculate and print out how many paragraphs are there in the chapter 
length(D)

#Print out the element that is the 34th paragraph from the chapter
D[[34]]

#Split the chapter into a new vector, split, comprising a vector of 1-word character strings (i.e., each element in this new vector should be a different word).
library(stringr)
split <- str_split(D, " ", simplify = FALSE)
gsub("[[:punct:]]", "", split)
split


##challenge 2
#Use the function c() to create a vector with the average high temperatures in January for Beijing, Lagos, Paris, Rio de Janeiro, San Juan, and Toronto, which are 35, 88, 42, 84, 81, and 30 degrees Fahrenheit. Call the object t.
t <- c(35, 88, 42, 84, 81, 30)

#Now create a vector with the city names and call the object city.
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

#Use the names() function and the objects defined above to associate the temperature data with its corresponding city.
names(t) = city

#Use the [ and : operators to access the temperature of the first three cities on the list.
t[city[1:3]]

#Use the [ operator to access the temperatures of Paris and San Juan.
t[city[c(3, 5)]]


##challenge 3
#Create a 8 row by 20 column matrix, named m1, consisting of integers arranged in descending order from 159 to 0. Fill your matrix column-wise.
m1 <- matrix(
  data = seq(159, 0),
  nrow = 8,
  ncol = 20,
  byrow= TRUE
)

#Using single bracket notation, extract and print the element in row 5, column 2
m1[5,2]

#Using single bracket notation, extract and print the contents of rows 5 to 7 of the matrix
m1[5:7,]

#Using single bracket notation, extract the contents of (row 3, column 4) to (row 6, column 9) as a new variable, m2. What is the class of this variable? What is the mode of this variable?
m2 <- m1[3:6,4:9]
m2
class(m2)
mode(m2)

##challenge 4
#Construct a 4-dimensional, 400-element array (5 x 5 x 4 x 4), named a, consisting of even integers from 2 to 800 (i.e., a descending series)
a <- array(data = seq(800, 2, by=-2), dim = c(5, 5, 4, 4))
a

#Given this matrix, what would the following return?
a[1, 1, 1, 2]
a[2, 3, 2, ]
a[1:5, 1:5, 3, 3]

##challenge 5 
#super family
Lorisoidea <- c("Lorisidae", "Galagidae")
Lemuroidea <- c("Cheirogaleidae", "Lepilemuridae", "Indriidae", "Lemuridae", "Daubentoniidae")
Tarsioidea <- c("Tarsiidae")
Ceboidea <- c("Cebidae", "Atelidae", "Pitheciidae")
Hominoidea <- c("Hylobatidae", "Hominidae")
Cercopithecoidea <- c("Cercopithecidae")

#infraorder
Lorisiformes <- list(Lorisoidea=Lorisoidea) 
Lemuriformes <- list(Lemuroidea=Lemuroidea)
Tarsiiformes <- list(Tarsioidea=Tarsioidea)

#parvorder
Platyrrhini <- list(Ceboidea=Ceboidea)
Catarrhini <- list(Hominoidea=Hominoidea, Cercopithecoidea=Cercopithecoidea)

#infraorder
Simiiformes <- list(Platyrrhini=Platyrrhini, Catarrhini=Catarrhini)

#suborder
Strepsirhini <- list(Lorisoidea=Lorisoidea, Lemuroidea=Lemuroidea)
Haplorhini <- list(Tarsiiformes=Tarsiiformes, Simiiformes=Simiiformes)

#order
primates <- list(Strepsirhini=Strepsirhini, Haplorhini=Haplorhini)
primates

#Use double bracket notation to extract only the primates of the Americas (Parvorder Platyrrhini) from this list into a new variable platyrrhines
platyrrhines <- primates[["Haplorhini"]][["Simiiformes"]][["Platyrrhini"]]

#what is the class of this variable
class(platyrrhines)

#What is the mode of this variable?
mode(platyrrhines)

#Use $ notation to extract the tarisers (i.e., Family Tarsiidae)
tariser <- primates$Haplorhini$Tarsiiformes$Tarsioidea
tariser
