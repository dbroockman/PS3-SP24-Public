test = list(
  name = "q8a",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        question.correct <- identical(leg_race_democrats, table(bb_data$leg_white[bb_data$leg_republican == 0]))

        testthat::expect_true(question.correct,
        info = "leg_race_democrats doesn't look right. Try again.")
      }
    )
  )
)