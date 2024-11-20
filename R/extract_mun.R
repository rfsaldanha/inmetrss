#' Extract municipalities codes
#'
#' @param identifier character. Alert identifier.
#' @param string character. String with municipalities codes.
#'
#' @return a tibble
extract_mun <- function(identifier, string){
  res <- stringr::str_extract_all(
    string = string, 
    pattern = "\\d+"
  )

  df <- tibble::tibble(
    # identifier = identifier,
    mun_codes = res[[1]]
  )

  df$identifier <- identifier

  return(df)
}