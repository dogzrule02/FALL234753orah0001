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

