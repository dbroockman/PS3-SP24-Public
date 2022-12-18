test = list(
  name = "q5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- oskiMeanCorrected == (mean(suSales$OskiShirt) / 4 )
        testthat::expect_true(question.correct,
                             info = "Hint: use the / operator.")
      }
    )
  )
)