#' Takes a noun and makes it plural
#'
#' @param dataset A data frame containing information about gifts
#' @param line The number of the line for the day you want to sing about
#' @param phrase_col The variable name for the column in the dataset that
#' contains the gift phrases
#'
#' @return A string singing the line of the song with all gifts for the given day.
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
sing_day <- function(dataset, line, phrase_col){

  phrases <- dataset %>% pull({{phrase_col}})
  days <- map_chr(line:2, ~glue("{phrases[[.x]][1]}")) %>% str_c(collapse="\n")
  final_day <- glue("and {phrases[[1]][1]}.")
  first <- glue("On the {dataset$Day.in.Words[line]} day of Christmas, my true love sent to me,")
  song <- glue("{first}\n{days}\n{final_day}")
  return(song)
}

