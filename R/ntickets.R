ntickets <- function(N, gamma, p)
#' ntickets
#'
#' @param N-number of seats
#' @param gamma - percent no show
#' @param p percent show
#'
#' @return optimal number of tickets to sell
#' @export
#'
#' @examples ntickets(400, 0.02, 0.95)
  ntickets <- function(N, gamma, p)
  {
    n <- N:(N + N/15)

    # Layout
    myMatrix <- matrix(1:2, nrow = 2, ncol = 1)
    layout(myMatrix)

    # Binomial Graph
    fun <- 1 - gamma - pbinom(N, n, p)
    plot(n, fun, type = 'b', col = 'steel blue', cex = 0.6, xlab = 'n', ylab = 'Objective', ylim = c(-0.1, 1))
    abline(h = 0, col = 'blue')

    # Find where our Function is 0
    index = which.min(abs(fun))
    ticks = N + index

    # Vertical Line
    abline(v = ticks, col = 'red')

    # Title
    title(main = paste0('Objective vs. n and Optimal Tickets Sold \n (', ticks, ') .gamma = ', gamma, ' N = ', N, ' discrete'), cex.main = 0.7)

    # Approximate to the normal
    n = as.numeric(as.character(n))
    fun2 = 1 - gamma - pnorm(N + 0.5, (n * p), sqrt(n * p * (1 - p)))
    plot(n, fun2, type = 'l', col = 'forest green', xlab = 'n', ylab = 'Objective', ylim = c(-0.1, 1), cex = 0.6)
    abline(h = 0, col = 'brown')

    # Find where function 2 is 0
    index2 = which.min(abs(fun2))
    ticks2 = N + index2

    # Vertical Line Added
    abline(v = ticks2, col = 'brown')

    # Title for Function 2
    title(main = paste0('Objective vs. n and Optimal Tickets Sold \n (', ticks2, '). gamma = ', gamma, ' N = normal'), cex.main = 0.7)

    # Return Results
    list(nd = ticks, nc = ticks2, N = n, gamma = gamma, p = p)
  }

ntickets(400,0.02, 0.95)

