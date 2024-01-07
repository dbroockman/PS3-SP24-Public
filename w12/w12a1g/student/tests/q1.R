test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- col1.large.fin.reward.estimate == 0.769
        testthat::expect_true(question.correct)
      }
    )
  )
)