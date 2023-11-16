#' Myci
#'
#' @param x data
#'
#' @return
#' @export
#'
#' @examples
myci=function(x) {
t=qt(0.975, length(x)-1)
ci=c()
ci[1]=mean(x)-t*sd(x)/sqrt(length(x))
ci[2] = mean(x)+t*sd(x)/sqrt(length(x))
ci
}
set.seed(23); x=rnorm(30, mean=10, sd=12)
myci(x)
t.test(x)
