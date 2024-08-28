# List of necessary packages
required_packages <- c("rtweet", "tidyverse", "tidytext", "tm", "sentimentr", "ggplot2", "logger", "lubridate")

# Install necessary packages if not already installed
for (pkg in required_packages) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    install.packages(pkg)
  }
}
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