# Load setup.R to get necessary packages
source("setup.R")

# Initialize logger
log_appender(appender_file("log.txt"))
log_threshold(DEBUG)

# Function to collect tweets from Twitter API
collect_tweets <- function(hashtag, n, since_date, until_date) {
    # Start of the collection process
    log_info(paste0("Starting tweet collection for hashtag: ", hashtag, 
                    ". Targeting ", n, " tweets from ", since_date, " to ", until_date, "."))

    # Use search_tweets from the rtweet package to collect tweets
    tweets <- rtweet::search_tweets(
        q = hashtag,
        since = since_date,
        until = until_date,
        n = n,
        include_rts = FALSE
    )

    # Save the tweets to an RDS file
    saveRDS(tweets, file = paste0("tweets_", Sys.Date(), ".rds"))

    # End of the collection process
    log_info(paste0("Tweet collection for hashtag: ", hashtag, " completed. ",
                    length(tweets$status_id), " tweets collected and saved."))
}

# Collect tweets with the hashtag #trump
collect_tweets("#trump", 1000, "2016-01-01", "2025-01-01")