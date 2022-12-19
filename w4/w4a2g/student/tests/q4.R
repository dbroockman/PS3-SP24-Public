test = list(
  name = "q4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        question.correct <- identical( mean.baseline.spending.non.participants,
                                      mean(wellness$baseline[wellness$treat == 1 & wellness$participate == 0]) )
        testthat::expect_true(question.correct,
                                    info = "mean.baseline.spending.non.participants doesn't look right.")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        question.correct <- identical( mean.baseline.spending.participants,
                                      mean(wellness$baseline[wellness$treat == 1 & wellness$participate == 1]) )
        testthat::expect_true(question.correct,
                                    info = "mean.baseline.spending.participants doesn't look right.")
      }
    )
  )
)