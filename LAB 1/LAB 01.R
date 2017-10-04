library(MASS)
cars <- Cars93

  #QUESTION 1.a
Price.min <- tapply(cars$Price, cars$Type, min)
Price.min

cheap.price <- cars[c(74, 20, 47, 31, 46, 16), c(1:3, 5)]
cheap.price

  #QUESTION1.b
MPG.max <- tapply(cars$MPG.highway, cars$Type, max)
MPG.max

max <- cars[c(12,7,71,77,20,6,69,39,40,56), c(1:3,8)]
max

High.MPG <- cars[39, c(1:2, 8)]
High.MPG


   #QUESTION 2.a

#MEAN HORSEPOWER
Horsepower.mean <- tapply(cars$Horsepower, cars$Type, mean)
Horsepower.mean

  #QUESTION 2.b
  
#COMPACT
HP.comp <- cars[cars$Type == "Compact", "Horsepower"]
HP.comp
Dif.compact <- HP.comp - 131.00
Dif.compact
skewness(Dif.compact)
kurtosis(Dif.compact)

#LARGE
HP.Lar <- cars[cars$Type == "Large", "Horsepower"]
HP.Lar
Dif.Large <- HP.Lar - 179.4545
Dif.Large
skewness(Dif.Large)
kurtosis(Dif.Large)

#MIDSIZE
HP.Mid <- cars[cars$Type == "Midsize", "Horsepower"]
HP.Mid
Dif.Midsize <- HP.Mid - 173.0909
Dif.Midsize
skewness(Dif.Midsize)
kurtosis(Dif.Midsize)

#SMALL
HP.Sm <- cars[cars$Type == "Small", "Horsepower"]
HP.Sm
Dif.small <- HP.Sm - 91.0000
Dif.small
skewness(Dif.small)
kurtosis(Dif.small)

#SPORTY
HP.Sp <- cars[cars$Type == "Sporty", "Horsepower"]
HP.Sp
Dif.sporty <- HP.Sp - 160.1429
Dif.sporty
skewness(Dif.sporty)
kurtosis(Dif.sporty)

#VAN
HP.Vn <- cars[cars$Type == "Van", "Horsepower"]
HP.Vn
Dif.van <- HP.Vn - 149.4444 
Dif.van
skewness(Dif.van)
kurtosis(Dif.van)


  #QUESTION 3

#DATAFRAMES
USA.df <- cars[cars$Origin == "USA", ]
USA.df

NUSA.df <- cars[cars$Origin == "non-USA", ]
NUSA.df


  #QUESTION 4

#csv.
write.csv(USA.df, file = "USA.csv", row.names = FALSE)

read.csv("USA.csv")

