#' @title riddlemethis
#' This function plays the riddle game.
#' @param riddles The riddles that you get from external csv file that you add to 'riddles' object.
#' @export
#' @examples
#' riddlemethis(riddles)

riddlemethis <- function(riddles) {
  riddles <- riddles[sample(nrow(riddles)), , drop=FALSE]
  score <- 0
  
  for (i in 1:nrow(riddles)) {
    cat(riddles$QUESTIONS[i], "\n")
    answer <- readline("Your answer ('Q' to exit): ")
    
    if (answer == "Q") {
      cat("Quitting the game. Score: ", score,"\n")
      return()
    }
    
    if (tolower(answer) == tolower(riddles$ANSWERS[i])) {
      cat("Good job!\n")
      score <- score + 1
    } else {
      cat("WRONG. The correct answer was: ", riddles$ANSWERS[i], "\n")
    }
  }
}