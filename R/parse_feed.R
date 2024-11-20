#' Fetch and parse INMET alerts RSS feed
#'
#' @param feed_url character. INMET RSS feed. Defaults to current url.
#' @param progress logical. Show progress bar.
#'
#' @return a tibble with alerts data
#' @export
#'
#' @examples
#' parse_feed()
parse_feed <- function(feed_url = NULL, progress = TRUE){
  if(is.null(feed_url)){
    feed_url <- "https://apiprevmet3.inmet.gov.br/avisos/rss"
  }

  # Fetch feed
  feed <- tidyRSS::tidyfeed(feed = feed_url)

  # Check number of rows
  if(nrow(feed) == 0){
    cli::cli_abort("Empty feed.")
  }

  # Fetch and parse alerts
  purrr::map(
    .x = feed$item_link,
    .f = parse_alert,
    .progress = progress
  ) |>
    purrr::list_rbind()

}
