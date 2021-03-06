# data_viz_exploratory.R
# November 2018

# This script reads the data from the second script and creates an exploratory visualization that is useful to help the
# reader/consumer understand that dataset. 

# This script takes two arguments: a path/filename pointing to the data, a path/file name where to write the figure to and what to call it 
#
# Usage: Rscript src/data_viz_exploratory.R "results/data_all_years_bicycle.csv"  "results/figures/viz_exploratory.png" 
#
# define main function

suppressPackageStartupMessages(library(tidyverse))
suppressPackageStartupMessages(library(ggplot2))

# read in command line arguments
args <- commandArgs(trailingOnly = TRUE)
file_input <- args[1]
img_output <- args[2]

# read the clean data csv file into r
data_all_years_bicycle <- read.csv(file_input) 

main <- function(){
  
  p <-  ggplot(aes(MONTH, n), data = data_all_years_bicycle) +
            geom_line() +
            theme_light()+
            theme(strip.background =element_rect(fill = "lightskyblue1")) +
            ylab("Number of bicycle thefts per month") +
            facet_wrap(~ YEAR, scales = "free", ncol = 3) +
            theme(strip.text = element_text(colour = "black"))+
            scale_x_continuous(labels = scales::number_format(accuracy = 1))
  ggsave(img_output, p, device = "png" )
}


# call main function
main()
