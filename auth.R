# Load setup.R to get necessary packages
source("setup.R")

# API keys
api_key <- Sys.getenv("API_KEY")
api_secret_key <- Sys.getenv("API_SECRET_KEY")
access_token <- Sys.getenv("ACCESS_TOKEN")
access_token_secret <- Sys.getenv("ACCESS_TOKEN_SECRET")

# Authenticate with X API
token <- create_token(
  app = "x-sentiment",
  consumer_key = api_key,
  consumer_secret = api_secret_key,
  access_token = access_token,
  access_secret = access_token_secret
)