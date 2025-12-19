# inmetrss

Fetch and parse INMET alerts.

## Installation

You can install the development version of inmetrss from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("rfsaldanha/inmet_alerts")
```

## Example

Fetch and parse alerts feed with
[`parse_feed()`](https://rfsaldanha.github.io/inmetrss/reference/parse_feed.md).

``` r
library(inmetrss)

alerts <- parse_feed()
#> GET request successful. Parsing...
#>  ■■                                 4% |  ETA: 44s
#>  ■■■■■                             13% |  ETA: 36s
#>  ■■■■■■■                           19% |  ETA: 33s
#>  ■■■■■■■■■                         26% |  ETA: 31s
#>  ■■■■■■■■■■                        30% |  ETA: 32s
#>  ■■■■■■■■■■■                       34% |  ETA: 32s
#>  ■■■■■■■■■■■■■                     40% |  ETA: 30s
#>  ■■■■■■■■■■■■■■■                   47% |  ETA: 26s
#>  ■■■■■■■■■■■■■■■■■                 53% |  ETA: 22s
#>  ■■■■■■■■■■■■■■■■■■■               60% |  ETA: 19s
#>  ■■■■■■■■■■■■■■■■■■■■■             66% |  ETA: 17s
#>  ■■■■■■■■■■■■■■■■■■■■■■■           72% |  ETA: 13s
#>  ■■■■■■■■■■■■■■■■■■■■■■■■■         79% |  ETA: 10s
#>  ■■■■■■■■■■■■■■■■■■■■■■■■■■■       85% |  ETA:  7s
#>  ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■     94% |  ETA:  3s

alerts
#> # A tibble: 47 × 14
#>    identifier  sent  event responseType urgency severity certainty onset expires
#>    <chr>       <chr> <chr> <chr>        <chr>   <chr>    <chr>     <chr> <chr>  
#>  1 urn:oid:2.… 2024… Chuv… Prepare      Future  Moderate Likely    2024… 2024-1…
#>  2 urn:oid:2.… 2024… Chuv… Prepare      Future  Moderate Likely    2024… 2024-1…
#>  3 urn:oid:2.… 2024… Chuv… Prepare      Future  Severe   Likely    2024… 2024-1…
#>  4 urn:oid:2.… 2024… Chuv… Prepare      Future  Severe   Likely    2024… 2024-1…
#>  5 urn:oid:2.… 2024… Chuv… Prepare      Future  Moderate Likely    2024… 2024-1…
#>  6 urn:oid:2.… 2024… Baix… Prepare      Future  Moderate Likely    2024… 2024-1…
#>  7 urn:oid:2.… 2024… Acum… Prepare      Future  Extreme  Likely    2024… 2024-1…
#>  8 urn:oid:2.… 2024… Chuv… Prepare      Future  Moderate Likely    2024… 2024-1…
#>  9 urn:oid:2.… 2024… Chuv… Prepare      Future  Severe   Likely    2024… 2024-1…
#> 10 urn:oid:2.… 2024… Chuv… Prepare      Future  Moderate Likely    2024… 2024-1…
#> # ℹ 37 more rows
#> # ℹ 5 more variables: description <chr>, instruction <chr>, mun_str <chr>,
#> #   areaDesc <chr>, polygon <chr>
```

You can also extract alerts by municipality codes with
[`parse_mun()`](https://rfsaldanha.github.io/inmetrss/reference/parse_mun.md).

``` r
mun_alerts <- parse_mun(alerts)

mun_alerts
#> # A tibble: 30,485 × 10
#>    identifier      mun_codes sent  event responseType urgency severity certainty
#>    <chr>           <chr>     <chr> <chr> <chr>        <chr>   <chr>    <chr>    
#>  1 urn:oid:2.49.0… 5200100   2024… Chuv… Prepare      Future  Moderate Likely   
#>  2 urn:oid:2.49.0… 2900108   2024… Chuv… Prepare      Future  Moderate Likely   
#>  3 urn:oid:2.49.0… 1500131   2024… Chuv… Prepare      Future  Moderate Likely   
#>  4 urn:oid:2.49.0… 1700251   2024… Chuv… Prepare      Future  Moderate Likely   
#>  5 urn:oid:2.49.0… 2100055   2024… Chuv… Prepare      Future  Moderate Likely   
#>  6 urn:oid:2.49.0… 1200013   2024… Chuv… Prepare      Future  Moderate Likely   
#>  7 urn:oid:2.49.0… 1500347   2024… Chuv… Prepare      Future  Moderate Likely   
#>  8 urn:oid:2.49.0… 3100609   2024… Chuv… Prepare      Future  Moderate Likely   
#>  9 urn:oid:2.49.0… 5100201   2024… Chuv… Prepare      Future  Moderate Likely   
#> 10 urn:oid:2.49.0… 3200169   2024… Chuv… Prepare      Future  Moderate Likely   
#> # ℹ 30,475 more rows
#> # ℹ 2 more variables: onset <chr>, expires <chr>
```
