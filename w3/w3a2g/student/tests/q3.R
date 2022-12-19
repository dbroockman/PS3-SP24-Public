test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- identical( q3Table, table(happiness_data$happiness_cat, happiness_data$polity2_cat)) |
                            identical( q3Table, table(happiness_data$polity2_cat, happiness_data$happiness_cat))
        testthat::expect_true(question.correct,
                                    info = " Recall function: table(happiness_data$..., happiness_data$...)")
      }
    )
  )
)