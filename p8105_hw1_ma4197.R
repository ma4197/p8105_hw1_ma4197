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



