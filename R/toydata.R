#' Example data
#'
#' A toy dataset
#' @name toydata
#' @docType data
#' @format A data frame with 100 rows and 3 variables:
#' \describe{
#'   \item{y}{The response variable, binary (0,1)}
#'   \item{x1}{The first explanatory variable, continuous}
#'   \item{x2}{The second explanatory variable, binary (0,1)}
#' }
#' @source https://q.utoronto.ca/courses/317202/files/28332455?module_item_id=5163390
"toydata"


library(here)
toydata <- read.table(here("data/toydata.txt"), header = TRUE)
usethis::use_data(toydata, overwrite = T)

