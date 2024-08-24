# Install necessary packages
install.packages("rtweet")
install.packages("tidyverse")
install.packages("tidytext")
install.packages("tm")
install.packages("sentimentr")
install.packages("ggplot2")
install.packages("logger")
install.packages("lubridate")

# Load necessary packages
library("rtweet")
library("tidyverse")
library("tidytext")
library("tm")
library("sentimentr")
library("ggplot2")
library("logger")
library("lubridate")

# Initialize logger
log_appender(appender_file("log.txt"))
log_threshold(DEBUG)