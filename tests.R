res0 <- tidyRSS::tidyfeed("https://apiprevmet3.inmet.gov.br/avisos/rss")



res1 <- xml2::read_xml("https://apiprevmet3.inmet.gov.br/avisos/rss/49034")

res2 <- xml2::as_list(res1)

# Identifier
res2$alert$identifier[[1]]

# Sent time
res2$alert$sent[[1]]

res2$alert$info$event[[1]]

res2$alert$info$responseType[[1]]

res2$alert$info$urgency[[1]]

res2$alert$info$severity[[1]]

res2$alert$info$certainty[[1]]

res2$alert$info$onset[[1]]

res2$alert$info$expires[[1]]

res2$alert$info$description[[1]]

res2$alert$info$instruction[[1]]

res2$alert$info[19]$parameter$value[[1]]
