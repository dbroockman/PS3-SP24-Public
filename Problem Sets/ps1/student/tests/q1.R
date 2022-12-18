test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- all.equal(republican_subset, subset(bb_data, leg_republican==1))
        testthat::expect_true(question.correct,
            info = "It doesn't look like you took the right subset. Try again!")
      }
    )
  )
)