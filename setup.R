# Install necessary packages if not already installed
if (!requireNamespace("rtweet", quietly = TRUE)) install.packages("rtweet")
if (!requireNamespace("tidyverse", quietly = TRUE)) install.packages("tidyverse")
if (!requireNamespace("tidytext", quietly = TRUE)) install.packages("tidytext")
if (!requireNamespace("tm", quietly = TRUE)) install.packages("tm")
if (!requireNamespace("sentimentr", quietly = TRUE)) install.packages("sentimentr")
if (!requireNamespace("ggplot2", quietly = TRUE)) install.packages("ggplot2")
if (!requireNamespace("logger", quietly = TRUE)) install.packages("logger")
if (!requireNamespace("lubridate", quietly = TRUE)) install.packages("lubridate")

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