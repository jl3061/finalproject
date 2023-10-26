#' @title playRiddles
#' This function allows you to add the riddles to your environment.
#' Riddles from https://github.com/crawsome/PyRPG_Mini.git
#' @param file_path File path for preloaded riddles excel/csv file.
#' @export
#' @examples
#' riddles <- getRiddles()

getRiddles <- function(file_path = "/data/riddles.csv") {
  riddles <- read.csv(file_path)
  return(riddles)
}