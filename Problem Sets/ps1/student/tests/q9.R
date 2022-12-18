test = list(
  name = "q9",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        sol_democrat_subset <- subset(bb_data, leg_republican==0)
        sol_white_democrat_subset <- subset(sol_democrat_subset, leg_white==1)
        sol_white_democrat_black_subset <- subset(sol_white_democrat_subset, treat_deshawn==1)
        sol_white_democrat_white_subset <- subset(sol_white_democrat_subset, treat_deshawn==0)
        sol_white_democrat_rrate_diff <- mean(sol_white_democrat_black_subset$reply_atall) - mean(sol_white_democrat_white_subset$reply_atall)

        question.correct <- sol_white_democrat_rrate_diff == white_democrat_rrate_diff

        testthat::expect_true(question.correct,
        info = "white_democrat_rrate_diff doesn't look right. Try again.")
      }
    )
  )
)