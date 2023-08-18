# YOUR NAME HERE #

# lists!

# Exercise 1

elevens <- seq(0,121,11)
twelves <- seq(0,144,12)

numVector <- c(elevens,twelves)
numList <- list(elevens,twelves)

# notice the difference between combining vectors
#   and placing vectors in a list
length(numVector)
length(numList)


# Exercise 2

# Make a list with your 
#  Name
#  A vector of strings with length 3, about your three favorite colors
#  A Boolean, whether you are excited for week two of bootcampe
#  and finally, your favorite number
aboutMe <- list(name = "Aidan O'Hara",
                favoriteColors <- c("red","yellow","green"),
                excited <- TRUE,
                bestNumber <- 16)

# Exercise 3

# Make a neat-looking matrix and add it to the end of your aboutMe list 
cool <- matrix(c(seq(77,0,by = -11),rep(11,10)),ncol = 6, nrow = 3)
aboutMe$cool <- cool

# Exercise 4

typeofReport <- function(list){
  return(unname(sapply(list,typeof)))
}

out <- typeofReport(aList)


# DATAFRAMES

# Exercise 1

msspCars <- mtcars
colnames(msspCars) <- c("milesPerGallon",
                        "cylinders",
                        "displacement",
                        "horsepower",
                        "rearAxleRatio",
                        "weight",
                        "quarterMile",
                        "engine",
                        "transmission",
                        "forwardGears",
                        "carburetors")

View(mmsspCars)

# Exercise 2

msspCars$weightActual <- msspCars$weight*1000
msspCars$powerToWeight <- msspCars$horsepower/msspCars$weightActual

# Exercise 3

fastCars <- msspCars[msspCars$quarterMile < 17,]
heavyCars <- msspCars[msspCars$weightActual > 4000,]

# Exercise 4
focus <- c(33.7,
           4,
           120,
           112,
           NA,
           2.535,
           15.4,
           1,
           1,
           5,
           1,
           2535,
           112/2535)

msspCars[nrow(msspCars) + 1,] <- focus
rownames(msspCars)[nrow(msspCars)] <- "Ford Focus"



