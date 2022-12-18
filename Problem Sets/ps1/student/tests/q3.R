test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        sol_republican_jake_subset <- subset(bb_data, leg_republican==1 & treat_deshawn == 0)

        question.correct <- all.equal(republican_jake_subset, sol_republican_jake_subset)
        testthat::expect_true(question.correct,
             info = "It doesn't look like you took the right subset. Try again.")

        question.correct <- republican_jake_rrate == mean(sol_republican_jake_subset$reply_atall)
        testthat::expect_true(question.correct,
        info = "republican_jake_rrate doesn't look right. Hint: take the mean of reply_atall inside republican_white_subset.")
      }
    )
  )
)