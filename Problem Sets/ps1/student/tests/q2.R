test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        sol_republican_deshawn_subset <- subset(bb_data, leg_republican==1 & treat_deshawn == 1)

        question.correct <- all.equal(republican_deshawn_subset, sol_republican_deshawn_subset)
        testthat::expect_true(question.correct,
             info = "It doesn't look like you took the right subset. Try again.")

        question.correct <- republican_deshawn_rrate == mean(sol_republican_deshawn_subset$reply_atall)
        testthat::expect_true(question.correct,
        info = "republican_deshawn_rrate doesn't look right. Hint: take the mean of reply_atall inside republican_black_subset.")
      }
    )
  )
)