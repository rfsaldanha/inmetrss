#' Parse alerts by municipality codes
#'
#' @param alerts tibble. Created with `parse_feed()`
#' @param progress logical. Show progress bar.
#'
#' @return a tibble with municipality codes and alerts data
#' @export
#'
#' @examples
#' alerts <- parse_feed()
#' parse_mun(alerts)
parse_mun <- function(alerts, progress = TRUE){
  # Check number of rows
  if(nrow(alerts) == 0){
    cli::cli_abort("Empty alerts.")
  }

  # Extract municipalities
  df <- purrr::map2(
    .x = alerts$identifier,
    .y = alerts$mun_str, 
    .f = extract_mun, 
    .progress = progress
  ) |>
    purrr::list_rbind()

  # Subset alerts data
  alerts_sub <- subset(alerts, select = c("identifier", "sent", "event", "responseType", "urgency", "severity", "certainty", "onset", "expires"))

  # Merge data
  merge(df, alerts_sub, by = "identifier") |>
    tibble::as_tibble()
}