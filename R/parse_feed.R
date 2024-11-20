#' Fetch and parse INMET alerts RSS feed
#'
#' @param progress logical. Show progress bar.
#'
#' @return a tibble with alerts data
#' @export
#'
#' @examples
#' parse_feed()
parse_feed <- function(progress = TRUE){
  # Feed URL
  feed_url <- "https://apiprevmet3.inmet.gov.br/avisos/rss"

  # Fetch feed
  feed <- tidyRSS::tidyfeed(feed = feed_url)

  # Check number of rows
  if(nrow(feed) == 0){
    cli::cli_abort("Empty feed.")
  }

  # Fetch and parse alerts
  res <- purrr::map(
    .x = feed$item_link,
    .f = parse_alert,
    .progress = progress
  ) |>
    purrr::list_rbind()

  # Datetime fields
  res$sent <- lubridate::as_datetime(res$sent)
  res$onset <- lubridate::as_datetime(res$onset)
  res$expires <- lubridate::as_datetime(res$expires)

  return(res)
  
}
