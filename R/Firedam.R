#' FIREDAM Dataset
#'
#' This dataset contains information about distance from a fire station and estimated damage costs.
#'
#' @name FIREDAM
#' @docType data
#' @usage data(FIREDAM)
#'
#' @examples
#' data(FIREDAM)
#' head(FIREDAM)
#'
#' @format A data frame with the distance from a fire station and estimated damage costs.
#'
#' @source The data came from an insurance company
FIREDAM <- read.csv(system.file("data", "FIREDAM.csv", package = "FALL234753orah0001"))
