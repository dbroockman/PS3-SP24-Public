test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- col1.large.fin.reward.se == 1.618
        testthat::expect_true(question.correct)
      }
    )
  )
)