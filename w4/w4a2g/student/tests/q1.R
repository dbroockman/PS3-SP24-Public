test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        question.correct <- identical( chose.not.to.participate, subset(wellness, treat == 1 & participate == 0) )
        testthat::expect_true(question.correct,
                                    info = "chose.not.to.participate doesn't look right.")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        question.correct <- identical( chose.to.participate, subset(wellness, treat == 1 & participate == 1) )
        testthat::expect_true(question.correct,
                                    info = "chose.to.participate doesn't look right.")
      }
    )
  )
)