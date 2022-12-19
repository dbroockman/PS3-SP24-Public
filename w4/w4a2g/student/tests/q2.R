test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        question.correct <- identical( mean.spending.non.participants,
                                      mean(wellness$outcome_post[wellness$treat == 1 & wellness$participate == 0]) )
        testthat::expect_true(question.correct,
                                    info = "mean.spending.non.participants doesn't look right.")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        question.correct <- identical( mean.spending.participants,
                                      mean(wellness$outcome_post[wellness$treat == 1 & wellness$participate == 1]) )
        testthat::expect_true(question.correct,
                                    info = "mean.spending.participants doesn't look right.")
      }
    )
  )
)