#' @title playRiddles
#' This function allows you to add the riddles to your environment.
#' Riddles from https://github.com/crawsome/PyRPG_Mini.git
#' @param file_path File path for preloaded riddles rda file.
#' @export
#' @examples
#' riddles <- getRiddles()

getRiddles <- function() {
  data("riddles", package = "riddlerontheroof")
  return(riddles)
}