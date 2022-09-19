---
title: "Homework 1"
author: "Mayuri Albal"
date: 09-18-22
output: html_document
---
#Problem 1

data("penguins", package = "palmerpenguins")

nrow(penguins)
ncol(penguins)

mean.default(penguins$flipper_length_mm, na.rm = TRUE)
`In this data set, there are 8 variables  and 344 observations for penguins. 
The variables include:species, island, length of bill (mm), depth of bill (mm),
flipper length (mm), body mass (g), sex, and year of birth? 
The mean flipper length of penguins in the data set is 200.20 mm.`



