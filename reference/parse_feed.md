# Fetch and parse INMET alerts RSS feed

Fetch and parse INMET alerts RSS feed

## Usage

``` r
parse_feed(progress = TRUE)
```

## Arguments

- progress:

  logical. Show progress bar.

## Value

a tibble with alerts data

## Examples

``` r
parse_feed()
#> GET request successful. Parsing...
#>  ■■                                 4% |  ETA:  1m
#>  ■■■                                8% |  ETA:  1m
#>  ■■■■■                             14% |  ETA:  1m
#>  ■■■■■■■                           19% |  ETA: 47s
#>  ■■■■■■■■                          25% |  ETA: 44s
#>  ■■■■■■■■■■                        30% |  ETA: 40s
#>  ■■■■■■■■■■■■                      36% |  ETA: 36s
#>  ■■■■■■■■■■■■■                     41% |  ETA: 33s
#>  ■■■■■■■■■■■■■■■                   47% |  ETA: 30s
#>  ■■■■■■■■■■■■■■■■■                 52% |  ETA: 27s
#>  ■■■■■■■■■■■■■■■■■■                58% |  ETA: 24s
#>  ■■■■■■■■■■■■■■■■■■■               62% |  ETA: 22s
#>  ■■■■■■■■■■■■■■■■■■■■■             67% |  ETA: 19s
#>  ■■■■■■■■■■■■■■■■■■■■■■■           73% |  ETA: 16s
#>  ■■■■■■■■■■■■■■■■■■■■■■■■          78% |  ETA: 12s
#>  ■■■■■■■■■■■■■■■■■■■■■■■■■■        85% |  ETA:  8s
#>  ■■■■■■■■■■■■■■■■■■■■■■■■■■■■      90% |  ETA:  5s
#>  ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■    96% |  ETA:  2s
#> # A tibble: 73 × 14
#>    identifier  sent                event responseType urgency severity certainty
#>    <chr>       <dttm>              <chr> <chr>        <chr>   <chr>    <chr>    
#>  1 urn:oid:2.… 2025-12-19 16:31:32 Acum… Prepare      Future  Moderate Likely   
#>  2 urn:oid:2.… 2025-12-19 16:09:53 Chuv… Prepare      Future  Moderate Likely   
#>  3 urn:oid:2.… 2025-12-19 16:01:17 Temp… Prepare      Future  Moderate Likely   
#>  4 urn:oid:2.… 2025-12-19 15:16:24 Vent… Prepare      Future  Severe   Likely   
#>  5 urn:oid:2.… 2025-12-19 15:11:22 Chuv… Prepare      Future  Moderate Likely   
#>  6 urn:oid:2.… 2025-12-19 15:04:40 Baix… Prepare      Future  Moderate Likely   
#>  7 urn:oid:2.… 2025-12-19 15:01:49 Baix… Prepare      Future  Moderate Likely   
#>  8 urn:oid:2.… 2025-12-19 15:00:54 Baix… Prepare      Future  Moderate Likely   
#>  9 urn:oid:2.… 2025-12-19 14:58:52 Chuv… Prepare      Future  Severe   Likely   
#> 10 urn:oid:2.… 2025-12-18 06:00:00 Chuv… Prepare      Future  Severe   Likely   
#> # ℹ 63 more rows
#> # ℹ 7 more variables: onset <dttm>, expires <dttm>, description <chr>,
#> #   instruction <chr>, mun_str <chr>, areaDesc <chr>, polygon <chr>
```
