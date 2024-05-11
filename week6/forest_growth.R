#' Forest size growth
#'
#' @param time time since start 
#' @param C forest size, in units of Carbon
#' @param parms a list with four values, r, g, K, and t
#' @param r intrinsic growth rate
#' @param g growth rate beyond carrying capacity
#' @param K carrying capacity
#' @param t canopy closure threshold
#'
#' @return derivative of forest size with time

forest_growth <- function(time, C, parms) {
  
  # exponential forest growth rate
  if (C < parms$t) 
    dc = parms$r * C
  # if canopy closure threshold is reached, the growth rate becomes linear
  else
    dc = parms$g * (1 - (C/parms$K))
  
  return(list(dc))
}