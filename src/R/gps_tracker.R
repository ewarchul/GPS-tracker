library(purrr)
library(dplyr)
library(readr)
library(ggplot2)
library(magrittr)


gps_data <- readr::read_csv('~/Desktop/ELKA/bsc/sem7/AMO/projekt1/src/R/data.csv') 
gps_data_ext <- gps_data %>% mutate(x=.$height*sin(.$width)*cos(.$length), y=.$height*sin(.$width)*cos(.$length), z=.$height*cos(.$length))
