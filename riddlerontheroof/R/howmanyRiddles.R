#' @title howmanyRiddles
#' This function tells you how many riddles you have.
#' @param riddles The riddles that you get from external csv file that you add to 'riddles' object.
#' @export
#' @examples
#' howmanyRiddles(riddles)

howmanyRiddles <- function(riddles) {
  riddles <- nrow(riddles)
  
  cat("Total number of riddles: ", riddles, "\n", sep = "")
}