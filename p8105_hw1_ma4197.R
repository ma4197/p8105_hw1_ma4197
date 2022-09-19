---
title: "Homework 1"
author: "Mayuri Albal"
date: 09-18-22
output: html_document
---
#Problem 1
## Data Loading
data("penguins", package = "palmerpenguins")

## Observations
nrow(penguins)
ncol(penguins)

## Mean Flipper Length
mean.default(penguins$flipper_length_mm, na.rm = TRUE)

## Descriptive
`In this data set, there are 8 variables  and 344 observations for penguins. 
The variables include:species, island, length of bill (mm), depth of bill (mm),
flipper length (mm), body mass (g), sex, and year of birth? 
The mean flipper length of penguins in the data set is 200.20 mm.`

#Plot
ggplot(penguins, aes(x = bill_length_mm, y = flipper_length_mm, color= species)) + geom_point()
ggsave("penguin_plot.pdf", height = 4, width = 6)


# Problem 2
## Create Data Frame

icecream_df= tibble(
  icecream= rnorm(10),
  icecream_logical= icecream > 0,
  icecream_char = c("vanilla", "chocolate", "strawberry", "mintcc", "cookiescream", "rockyroad", 
                     "birthdaycake", "coffee", "butterpecan", "saltedcaramel"),
  icecream_factor = factor(c("base", "base", "addin", "newflavor", "addin", "addin",
                              "addin", "newflavor", "addin", "newflavor"))
  )
icecream_df

library(tidyverse)
## Mean of Each Variable in DF
`r mean(pull(icecream_df,icecream))`
`r mean ((pull(icecream_df,iccream_logical))`
`r mean ((pull(icecream_df,iccream_char))`
`r mean ((pull(icecream_df,iccream_factor))`

## Reasoning
`In this new dataframe, variables that are numeric are able to have a mean value generated
for them, as obsevred with icecream due to it having a value between 0 and 1. However,
due to the other variables being character variables with no value assigned to them, a mean
value cannot be generated.`
