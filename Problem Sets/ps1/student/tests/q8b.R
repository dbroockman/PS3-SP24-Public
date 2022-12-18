test = list(
  name = "q8b",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        question.correct <- identical(leg_race_republicans, table(bb_data$leg_white[bb_data$leg_republican == 1]))

        testthat::expect_true(question.correct,
        info = "leg_race_republicans doesn't look right. Try again.")
      }
    )
  )
)