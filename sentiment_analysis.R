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
ggplot(sentiment_scores, aes(x = sentiment)) +
    geom_histogram(binwidth = 0.1, fill = "blue", color = "black") +
    theme_minimal() +
    labs(title = "Distribution of Sentiment Scores", x = "Sentiment Score", y = "Frequency")

# Merge sentiment scores with tweets to get dates
tweets_with_sentiment <- merge(tweets, sentiment_scores, by = "status_id")

# Aggregate sentiment scores by date
tweets_with_sentiment$date <- as.Date(tweets_with_sentiment$created_at)
daily_sentiment <- aggregate(sentiment ~ date, data = tweets_with_sentiment, mean)

# Plot sentiment scores vs. date
ggplot(daily_sentiment, aes(x = date, y = sentiment)) +
    geom_line()

tweets_with_sentiment$date <- as.Date(tweets_with_sentiment$created_at)
tweets_with_sentiment$week <- floor_date(tweets_with_sentiment$date, "week")