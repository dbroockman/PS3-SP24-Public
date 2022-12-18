test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- oskiMean == mean(suSales$OskiShirt)
        testthat::expect_true(question.correct,
                              info = "Make sure that you are taking the mean of the correct column. Hint: use mean() and the $.")
      }
    )
  )
)