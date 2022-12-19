test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        within.tol <- function(correct, submitted, tol) {
            return(correct - tol < submitted & correct + tol > submitted)
        }
        question.correct <- within.tol(
        difference_in_means(supportgroup ~ treat, data, condition1 = 'control', condition2 = 'officelobby')$std.err ,
        std.error,
        .001) 
        testthat::expect_true(question.correct,
                                    info = "This isn't the standard error.")
      }
    )
  )
)