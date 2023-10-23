#' Title Creates a confidence interval for the Odds Ratio (OR)
#' @description
#' Returns a confidence interval for the odds ratio for the desired significance level.
#'
#' @param coef The regression coefficient (Numerical)
#' @param se The standard error of the regression coefficient (Numerical)
#' @param siglevel The desired signficane level (Numerical)
#' @param roundto How many decimal points to round to (Numerical)
#' @import here
#' @importFrom stats qnorm
#' @return A Confidence Interval OR (LB, UB)
#' @export
#' @author Ente Kang
#' @examples
#' OR_95CI(2, 0.5, 0.05, 2)
#' load(file = "data/toydata.rda")
#' mod <- glm(y~x1+x2, family = "binomial", data = toydata)
#' summ <- summary(mod)
#' coef <- summ$coefficients[2,1] # coefficient for x1
#' se <- summ$coefficients[2,2] # se for x1
#' OR_95CI(coef, se, 0.05, 2)

OR_95CI <- function(coef, se, siglevel, roundto){
  q <- 1 - siglevel / 2
  OR <- exp(coef)
  ORlcl <- exp(coef - qnorm(q) * se)
  ORucl <- exp(coef + qnorm(q) * se)
  ORresult <- paste0(format(round(OR, roundto), nsmall = roundto),
                     " (",
                     format(round(ORlcl, roundto), nsmall = roundto),
                     ", ",
                     format(round(ORucl, roundto), nsmall = roundto),
                     ")"
  )
  return(ORresult)
}
