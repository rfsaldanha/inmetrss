fetch_feed <- function(feed_url = NULL){
  if(is.null(feed_url)){
    feed_url <- "https://apiprevmet3.inmet.gov.br/avisos/rss"
  }

  tidyRSS::tidyfeed(feed = feed_url)
}