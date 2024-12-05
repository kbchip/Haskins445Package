#' A series of weather observations from Pulliam Airport Weather Station
#' in Flagstaff, AZ. Includes precipitation, snow, and high and low temps.
#'
#' @format a data frame with 25449 observations
#' \describe{
#'   \item{DATE}{The date of observation as a POSIX date format.}
#'   \item{PRCP}{Daily precipitation in inches.}
#'   \item{SNOW}{Daily snowfall amount in inches.}
#'   \item{TMAX}{Daily maximum temperature in degrees Fahrenheit.}
#'   \item{TMIN}{Daily minimum temperature in degrees Fahrenheit.}
#' }
#' @source \url{www.ncdc.noaa.gov}
"Flagstaff_Weather"
