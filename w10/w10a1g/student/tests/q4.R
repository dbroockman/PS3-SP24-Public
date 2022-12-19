test = list(
  name = "q4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        within.tol <- function(target, test, tol) test >= target - tol & test <= target + tol
        answer.correct <- within.tol(47, my.best.guess, 9) | within.tol(.47, my.best.guess, .09)
        testthat::expect_true(answer.correct,
                                    info = "Look at the graph more closely...")
      }
    )
  )
)