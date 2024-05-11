#' Photovoltaic system energy output
#'
#' Compute the energy output (kWh) of a photovoltaic energy system
#' @param A - solar panel area (m2)
#' @param r - panel yield between 0-1 (default of 0.2)
#' @param H - annual average solar radiation (kWh)
#' @param PR - performance ratio 0-1 (default of 0.75)
#'
#' @return - photovoltaic system energy output (kWh)
#'
#' @examples
#' pv_energy(A = 3.4, r = 0.2, H = 5.5, PR = .75)

pv_energy <- function(A, r = 0.2, H, PR = .75) {
  
  # find the product of the inputs
  E = A * r * H * PR
  
  # return the photovoltaic energy output
  return(E)
}
