test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- col1.increase.of.3 == 44.9 * 3
        testthat::expect_true(question.correct)
      }
    )
  )
)