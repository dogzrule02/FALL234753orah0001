#' Chebyshev
#'
#' @param k a quantitative vector
#'
#' @return A number determining if Chebyshev works
#' @export
#'
#' @examples
#' Chebyshev(1:10)
Chebyshev <- function(k){
  1-1/(k^2)
}
