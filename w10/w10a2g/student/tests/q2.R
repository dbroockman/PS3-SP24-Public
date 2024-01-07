test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        within.tol <- function(target, test, tol) test >= target - tol & test <= target + tol
        question.correct <- within.tol(-45.753 + 1.454 * 55 , dems.guess.at.55, 2) 
        testthat::expect_true(question.correct,
                                    info = "WHOOPS, make sure you are using the right variables")
      }
    )
  )
)