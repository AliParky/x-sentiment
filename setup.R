# Load necessary packages
library("rtweet")
library("tidyverse")
library("tidytext")
library("tm")
library("sentimentr")
library("ggplot2")
library("logger")

# Initialize logger
log_appender(appender_file("log.txt"))
log_threshold(DEBUG)