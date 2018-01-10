library(datenservice)
library(tstools)
library(rmarkdown)

main_chunk <- "ch.snb"

# Import Data ######################
keys_m <- c("devkum","snbbipo")

snbseries_m <- lapply(keys_m, readSNB,frequency = "monthly")
snbseries_m <- unlist(snbseries_m, recursive = F)


render("R/knitr_demo.Rmd")





