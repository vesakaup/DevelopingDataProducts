remotes::install_github("allisonhorst/palmerpenguins")
library(tidyverse)
library(palmerpenguins)
install.packages(c("Rcpp", "httpuv", "shiny"))
library(shiny)
library(Rcpp)
library(httpuv)
library(devtools)




penguins2 <- na.omit(penguins)
penguins3 <- sapply(penguins2, function(x) if(is.factor(x)) {
        as.numeric(x)
} else {
        x
})
penguins3 <- data.frame(penguins3) ## convert to a data frame
write.csv(penguins3,"penguins3.csv",row.names = FALSE)