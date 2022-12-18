test = list(
  name = "q10",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        sol_democrat_subset <- subset(bb_data, leg_republican==0)
        sol_nonwhite_democrat_subset <- subset(sol_democrat_subset, leg_white==0)
        sol_nonwhite_democrat_black_subset <- subset(sol_nonwhite_democrat_subset, treat_deshawn==1)
        sol_nonwhite_democrat_white_subset <- subset(sol_nonwhite_democrat_subset, treat_deshawn==0)
        sol_nonwhite_democrat_rrate_diff <- mean(sol_nonwhite_democrat_black_subset$reply_atall) - mean(sol_nonwhite_democrat_white_subset$reply_atall)

        question.correct <- sol_nonwhite_democrat_rrate_diff == nonwhite_democrat_rrate_diff

        testthat::expect_true(question.correct,
        info = "nonwhite_democrat_rrate_diff doesn't look right. Try again.")
      }
    )
  )
)