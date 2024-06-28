# Load setup.R to get necessary packages
source("setup.R")

# Read tweets from the tweets.rds file
tweets <- readRDS("tweets.rds")

# View the structure of the tweets data
str(tweets)

# Summary of the tweets data
summary(tweets)

# Count the number of words in each tweet
tweets$word_count <- sapply(strsplit(tweets$text, " "), length)

# Summary of word counts
summary(tweets$word_count)

# Histogram of word counts
hist(tweets$word_count, main = "Histogram of Word Counts", xlab = "Word Count")

# Most common words
corpus <- Corpus(VectorSource(tweets$text))
tdm <- TermDocumentMatrix(corpus)
m <- as.matrix(tdm)
word_freqs <- rowSums(m)
word_freqs <- subset(word_freqs, word_freqs >= 5)
barplot(word_freqs, las = 2, col = "lightblue")