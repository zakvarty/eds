
<!-- README.md is generated from README.Rmd. Please edit that file -->

# eds

<!-- badges: start -->
<!-- badges: end -->

The goal of eds is to acts as a minimal example of an R package. It
contains functions to calculate the rolling mean of an vector and to
install the package to a custom location.

## Installation

You can install the development version of eds from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("zakvarty/eds")
```

## Examples

This is a basic example which shows you how to calculate the rolling
mean of the first 6 powers of two.

``` r
library(eds)
powers_of_two <- 2^(0:5)
print(powers_of_two)
#> [1]  1  2  4  8 16 32
rolling_mean(x = powers_of_two, window_width = 3)
#> [1]        NA  2.333333  4.666667  9.333333 18.666667        NA
```

The helper function `pad_with_NAs()` might also be useful to you.
Currently this only works on vectors but a similar method for matrices
and arrays would be a nice addition.

``` r
pad_with_NAs(x = c("cat", "dog"), n_left = 1, n_right = 2)
#> [1] NA    "cat" "dog" NA    NA
```

<!-- 
What is special about using `README.Rmd` instead of just `README.md`? You can include R chunks like so:


```r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You'll still need to render `README.Rmd` regularly, to keep `README.md` up-to-date. `devtools::build_readme()` is handy for this. You could also use GitHub Actions to re-render `README.Rmd` every time you push. An example workflow can be found here: <https://github.com/r-lib/actions/tree/v1/examples>.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don't forget to commit and push the resulting figure files, so they display on GitHub and CRAN.
-->
