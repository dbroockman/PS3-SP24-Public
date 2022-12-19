test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- identical( q1Table, table(happiness_data$gdpcapita_cat, happiness_data$polity2_cat)) |
                            identical( q1Table, table(happiness_data$polity2_cat, happiness_data$gdpcapita_cat))
        testthat::expect_true(question.correct,
                                    info = " Recall function: table(happiness_data$..., happiness_data$...)")
      }
    )
  )
)