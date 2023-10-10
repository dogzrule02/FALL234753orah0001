#' Mycurve
#'
#' @param mu
#' @param sigma
#' @param a
#'
#' @return Probablity
#' @export
#'
#' @examples
myncurve = function(mu, sigma,a){
  curve(dnorm(x,mean=mu,sd=sigma), xlim = c(mu-3*sigma, mu + 3*sigma),
        xcurve <- seq(0,a, length =1000),
        ycurve <- dnorm(xcurve, mu, sigma),
        polygon(c(0, xcurve, a), c(0, ycurve, 0), col= "green"),
        area = pnorm(a, mu, sigma),
        area= round(area, 4),
        text(x=2.15, y=0.025, paste("Area = ", area, sep= " ")))
}

myncurve(10, 2, 4)
