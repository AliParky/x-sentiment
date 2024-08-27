# x-sentiment

This project performs sentiment analysis on tweets collected via the X API. It aims to understand public sentiment on #trump by analyzing the emotional tone behind a series of tweets.

## Prerequisites

- R programming language
- RStudio or another R environment
- Twitter API access

## Installation

1. Clone the repository to your local machine.
2. Obtain X API credentials by applying for a developer account on the X Developer platform if you haven't already.
3. Create a `.Renviron` file in the root directory of the project with the relevant X API keys.
```plaintext
API_KEY="your_api_key_here"
API_SECRET_KEY="your_api_secret_key_here"
ACCESS_TOKEN="your_access_token_here"
ACCESS_TOKEN_SECRET="your_access_token_secret_here"
```
4. Run `data_collection.R` to collect tweets from the X API.
5. Run `sentiment_analysis.R` to analyze the sentiment of the collected tweets and generate visualizations

## Project Files

- `auth.R`: Handles authentication with the X API.
- `data_collection.R`: Collects tweets from the X API.
- `eda.R`: Performs exploratory data analysis on the collected tweets.
- `sentiment_analysis.R`: Analyzes the sentiment of the collected tweets.
- `setup.R`: Sets up the environment and dependencies for the project.
