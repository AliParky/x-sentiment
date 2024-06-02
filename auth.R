# Load setup.R to get necessary packages
source("setup.R")

# API keys
api_key <- "your_api_key"
api_secret_key <- "your_api_secret_key"
access_token <- "your_access_token"
access_token_secret <- "your_access_token_secret"

# Authenticate with X API
token <- create_token(
  app = "x-sentiment",
  consumer_key = api_key,
  consumer_secret = api_secret_key,
  access_token = access_token,
  access_secret = access_token_secret
)