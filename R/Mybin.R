#' MYbin
#'
#' @param iter- number of iterations
#' @param n - size of sample
#' @param p - probability
#'
#' @return a quantity
#' @export
#'
#' @examples
mybin= function(iter= 100, n=10, p= 0.5){
  #Filling matrix with NA
  sam.mat=matrix(NA, nr=n, nc=iter, byrow= TRUE)
  #Vector to hold successes
  succ=c()
  for (i in 1:iter) {
    #Run sample thorugh matrix
    sam.mat[,i]= sample(c(1,0),n, replace=TRUE, prob = c(p, 1-p))
    #Calculating sum of successes
    succ[i]=sum(sam.mat[,i])
  }
  #Making a table
  succ.tab=table(factor(succ, levels=0:n))
  #Making a barplot
  barplot(succ.tab/(iter), col=rainbow(n+1), main= "Binomial Sample", xlab= "Successes")
  succ.tab/iter
}
