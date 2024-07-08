# Load setup.R to get necessary packages
source("setup.R")

# Function to collect tweets from Twitter API
collect_tweets <- function(hashtag, n) {
    # Use search_tweets from the rtweet package to collect tweets
    tweets <- rtweet::search_tweets(
        q = hashtag,
        n = n,
        include_rts = FALSE
    )

    # Save the tweets to an RDS file
    saveRDS(tweets, file = paste0("tweets_", Sys.Date(), ".rds"))
}

# Collect tweets with the hashtag #trump
collect_tweets("#trump", 1000)

