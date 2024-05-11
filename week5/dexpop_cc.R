#' Population growth 
#'
#' @param time 
#' @param P 
#' @param r 
#'
#' @return
#' @export
#'
#' @examples
dexppop = function(time, P, r) {
 
  # population growth formula
  if (P > 500) {
    r = 0
  }
  
  
  dexpop = r*P
  return(list(dexpop))
}