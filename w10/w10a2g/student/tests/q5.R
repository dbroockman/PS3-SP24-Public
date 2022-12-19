test = list(
  name = "q5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        within.tol <- function(target, test, tol) test >= target - tol & test <= target + tol
        question.correct <- within.tol( -35.494 + 1.078 * 60, repubs.guess.at.60, 2 ) 
        testthat::expect_true(question.correct,
                                    info = "WHOOPS, make sure you are using the right variables")
      }
    )
  )
)