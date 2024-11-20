#' Fetch and parse alerts from INMET alerts RSS feed
#'
#' @param alert_url character. Alert url.
#'
#' @return a tibble with alert data
#' @export
parse_alert <- function(alert_url){

  # Fetch alert
  alert_data <- xml2::read_xml(x = alert_url)

  # Convert to list
  alert_list <- xml2::as_list(alert_data)

  # Extract data
  tibble::tibble(
    identifier = alert_list$alert$identifier[[1]],
    sent = alert_list$alert$sent[[1]],
    event = alert_list$alert$info$event[[1]],
    responseType = alert_list$alert$info$responseType[[1]],
    urgency = alert_list$alert$info$urgency[[1]],
    severity = alert_list$alert$info$severity[[1]],
    certainty = alert_list$alert$info$certainty[[1]],
    onset = alert_list$alert$info$onset[[1]],
    expires = alert_list$alert$info$expires[[1]],
    description = alert_list$alert$info$description[[1]],
    instruction = alert_list$alert$info$instruction[[1]],
    mun_str = alert_list$alert$info[19]$parameter$value[[1]],
    areaDesc = alert_list$alert$info$area$areaDesc[[1]],
    polygon = alert_list$alert$info$area$polygon[[1]]
  )
}
