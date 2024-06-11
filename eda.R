# Load setup.R to get necessary packages
source("setup.R")

# Load data_collection.R to get collect_tweets function
source("data_collection.R")

# Collect tweets
tweets <- collect_tweets("#rstats", 100)