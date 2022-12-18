test = list(
  name = "q6",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        democrat_subset_sol <- subset(bb_data, leg_republican==0)
        question.correct <- all.equal(democrat_subset, democrat_subset_sol)
        testthat::expect_true(question.correct,
        info = "democrat_subset doesn't look right. Try again.")

        democrat_deshawn_subset_sol <- subset(democrat_subset_sol, treat_deshawn==1)
        question.correct <- all.equal(democrat_deshawn_subset, democrat_deshawn_subset_sol)
        testthat::expect_true(question.correct,
        info = "democrat_deshawn_subset doesn't look right. Try again.")

        democrat_jake_subset_sol <- subset(democrat_subset_sol, treat_deshawn==0)
        question.correct <- all.equal(democrat_jake_subset, democrat_jake_subset_sol)
        testthat::expect_true(question.correct,
        info = "democrat_jake_subset doesn't look right. Try again.")

        question.correct <- democrat_rrate_diff == 
            mean(bb_data$reply_atall[bb_data$leg_republican == 0 & bb_data$treat_deshawn == 1]) - 
            mean(bb_data$reply_atall[bb_data$leg_republican == 0 & bb_data$treat_deshawn == 0]) 
        testthat::expect_true(question.correct,
        info = "democrat_rrate_diff doesn't look right. Try again.")
      }
    )
  )
)