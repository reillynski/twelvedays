#' Takes a noun and makes it plural
#'
#' @param gift A string or vector of strings
#'
#' @return A string or vector of strings with the pluralized words
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
pluralize_gift <- function(gift){

gift <- gift %>%
  str_replace("y$", "ies") %>%
  str_replace("o{2}", "ee")

not_plurals <- gift %>%
  str_detect("s$|e{2}", negate=TRUE)

gift[not_plurals] <- paste(gift[not_plurals], "s", sep="")

return(gift)

}
