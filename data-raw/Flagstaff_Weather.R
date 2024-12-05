library(tidyverse)

# Read in data and clean it
Flagstaff_Weather <-
    read.csv("data-raw/Pulliam_Airport_Weather_Station.csv") %>%
    # Select variables we are interested in
    select(c(DATE, PRCP, SNOW, TMAX, TMIN)) %>%
    # Format DATE column with lubridate
    mutate(DATE = lubridate::ymd(DATE)) %>%
    # Include only the dates 2015-2019 inclusive
    dplyr::filter(DATE %within% (ymd("2015-01-01") %--% ymd("2019-12-31")))

# Save data frame to data/
usethis::use_data(Flagstaff_Weather, overwrite = TRUE)
