# Load setup.R to get necessary packages
source("setup.R")

# Read the collected tweets
tweets <- readRDS("tweets.rds")

# Perform sentiment analysis
sentiment_scores <- perform_sentiment_analysis(tweets)