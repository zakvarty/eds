#' Install a local development package to a custom location.
#'
#' @description
#' A wrapper function for `devtools::install()`. Uses R CMD INSTALL to install the package to a location specified through `.libPaths()`.
#'
#' @param libPaths_element Integer stating which path from `.libPaths()` to use as the installation location. Defaults to 3 based on assumed `.libPaths()` structure of (CRAN, Github, personal, base).
#' @param ... Other arguments to pass to `devtools::install()`.
#'
#' @export
install_local <- function(libPaths_element = 3, ...){
  withr::with_libpaths(new = .libPaths()[3], code = devtools::install(...))
}
