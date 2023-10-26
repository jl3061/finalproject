#' @title addRiddles
#' This function allows you to add your own riddles to the existing riddles.csv file
#' @param riddle New riddle to add to file.
#' @param answer New answer to add to file.
#' @param file_path File path for your riddles excel/csv file.
#' @export
#' @examples
#' addRiddles("What has to be broken before you use it?", "egg")

addRiddles <- function(riddle, answer, file_path = "riddles.csv") {
  
  new_riddle <- data.frame(QUESTIONS = riddle, ANSWERS = answer)
  
  if (file.exists(file_path)) {
    write.table(new_riddle, file_path, sep = ",", append = TRUE,
                row.names = FALSE, col.names = FALSE)
    cat("Riddle added!\n")
  } else {
    cat("There's nowhere to add the riddle!\n")
  }
}