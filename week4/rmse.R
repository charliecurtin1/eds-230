
#' Calculate root-mean squared error of a model
#'
#' @param m model output
#' @param o observed values
#'
#' @return
#' @export
#'
#' @examples


rmse <- function(m,o) {

  res <- sqrt(mean((m - o) ^ 2))
  
  return(res)
}
