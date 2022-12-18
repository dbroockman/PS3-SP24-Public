test = list(
  name = "q4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        sol_republican_jake_subset <- subset(bb_data, leg_republican==1 & treat_deshawn == 0)
        sol_republican_deshawn_subset <- subset(bb_data, leg_republican==1 & treat_deshawn == 1)
        question.correct <- republican_rrate_diff == mean(sol_republican_deshawn_subset$reply_atall) - 
                                                    mean(sol_republican_jake_subset$reply_atall)
        testthat::expect_true(question.correct,
        info = "republican_rrate_diff doesn't look right. Make sure you're computing black - white rates, not white - black.")
      }
    )
  )
)