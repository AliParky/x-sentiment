# Load setup.R to get necessary packages
source("setup.R")

# Read the collected tweets
tweets <- readRDS("tweets.rds")

# Perform sentiment analysis
sentiment_scores <- perform_sentiment_analysis(tweets)

# View the first few sentiment analysis results
head(sentiment_scores)

# Summary of sentiment scores
summary(sentiment_scores$sentiment)

# Plotting sentiment scores
ggplot(sentiment_scores, aes(x = sentiment))
    + geom_histogram(binwidth = 0.1)