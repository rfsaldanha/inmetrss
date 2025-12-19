# Parse alerts by municipality codes

Parse alerts by municipality codes

## Usage

``` r
parse_mun(alerts, progress = TRUE, text = FALSE)
```

## Arguments

- alerts:

  tibble. Created with
  [`parse_feed()`](https://rfsaldanha.github.io/inmetrss/reference/parse_feed.md)

- progress:

  logical. Show progress bar.

- text:

  logical. Include text variables `description` and `instruction`

## Value

a tibble with municipality codes and alerts data

## Examples

``` r
alerts <- parse_feed()
#> GET request successful. Parsing...
#>  ■■■                                5% |  ETA:  1m
#>  ■■■■                              11% |  ETA: 48s
#>  ■■■■■■                            16% |  ETA: 45s
#>  ■■■■■■■■                          22% |  ETA: 43s
#>  ■■■■■■■■■                         27% |  ETA: 40s
#>  ■■■■■■■■■■■                       33% |  ETA: 36s
#>  ■■■■■■■■■■■■■                     38% |  ETA: 34s
#>  ■■■■■■■■■■■■■■                    44% |  ETA: 31s
#>  ■■■■■■■■■■■■■■■■                  49% |  ETA: 28s
#>  ■■■■■■■■■■■■■■■■■                 55% |  ETA: 25s
#>  ■■■■■■■■■■■■■■■■■■■               59% |  ETA: 23s
#>  ■■■■■■■■■■■■■■■■■■■■              64% |  ETA: 20s
#>  ■■■■■■■■■■■■■■■■■■■■■■            70% |  ETA: 17s
#>  ■■■■■■■■■■■■■■■■■■■■■■■■          77% |  ETA: 13s
#>  ■■■■■■■■■■■■■■■■■■■■■■■■■■        82% |  ETA: 10s
#>  ■■■■■■■■■■■■■■■■■■■■■■■■■■■       88% |  ETA:  7s
#>  ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■     93% |  ETA:  4s
#>  ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■   99% |  ETA:  1s
parse_mun(alerts)
#> # A tibble: 73,463 × 10
#>    identifier  mun_codes sent                event responseType urgency severity
#>    <chr>       <chr>     <dttm>              <chr> <chr>        <chr>   <chr>   
#>  1 urn:oid:2.… 4300851   2025-12-08 06:00:00 Vent… Prepare      Future  Severe  
#>  2 urn:oid:2.… 4201307   2025-12-08 06:00:00 Vent… Prepare      Future  Severe  
#>  3 urn:oid:2.… 4201406   2025-12-08 06:00:00 Vent… Prepare      Future  Severe  
#>  4 urn:oid:2.… 4301057   2025-12-08 06:00:00 Vent… Prepare      Future  Severe  
#>  5 urn:oid:2.… 4301305   2025-12-08 06:00:00 Vent… Prepare      Future  Severe  
#>  6 urn:oid:2.… 4201950   2025-12-08 06:00:00 Vent… Prepare      Future  Severe  
#>  7 urn:oid:2.… 4202057   2025-12-08 06:00:00 Vent… Prepare      Future  Severe  
#>  8 urn:oid:2.… 4202008   2025-12-08 06:00:00 Vent… Prepare      Future  Severe  
#>  9 urn:oid:2.… 4202073   2025-12-08 06:00:00 Vent… Prepare      Future  Severe  
#> 10 urn:oid:2.… 4212809   2025-12-08 06:00:00 Vent… Prepare      Future  Severe  
#> # ℹ 73,453 more rows
#> # ℹ 3 more variables: certainty <chr>, onset <dttm>, expires <dttm>
```
