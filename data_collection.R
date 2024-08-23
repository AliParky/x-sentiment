# Load setup.R to get necessary packages
source("setup.R")

# Function to collect tweets from Twitter API
collect_tweets <- function(hashtag, n, since_date, until_date) {
    start_date <- as.Date(since_date)
    end_date <- as.Date(until_date)
    total_days <- as.integer(difftime(end_date, start_date, units = "days"))
    tweets_per_day <- ceiling(n / total_days)

    # Start of the collection process
    log_info(paste0("Starting tweet collection for hashtag: ", hashtag, 
                    ". Targeting ", n, " tweets from ", since_date, " to ", until_date, "."))

    all_tweets <- list()
    
    for (day in 0:(total_days - 1)) {
        current_start <- start_date + days(day)
        current_end <- start_date + days(day + 1)

        log_info(paste0("Collecting tweets for ", current_start, " to ", current_end))

        tryCatch({
            tweets <- rtweet::search_tweets(
                q = hashtag,
                since = as.character(current_start),
                until = as.character(current_end),
                n = tweets_per_day,
                include_rts = FALSE
            )
            all_tweets <- c(all_tweets, list(tweets))
        }, error = function(e) {
            log_error(paste0("Error collecting tweets for ", current_start, " to ", current_end, ": ", e$message))
        })
        
        Sys.sleep(1)
    }

    # Save the tweets to an RDS file
    all_tweets_df <- do.call(rbind, all_tweets)    
    saveRDS(all_tweets_df, file = paste0("tweets_", Sys.Date(), ".rds"))

    # End of the collection process
    log_info(paste0("Tweet collection for hashtag: ", hashtag, " completed. ",
                    length(tweets$status_id), " tweets collected and saved."))
}

# Collect tweets with the hashtag #trump
collect_tweets("#trump", 1000, "2016-01-01", "2025-01-01")