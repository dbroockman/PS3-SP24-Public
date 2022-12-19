test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- identical( happiness.table, table(happiness_data$happiness_cat))
        testthat::expect_true(question.correct,
                                    info = "Make sure that you are using table(), happiness_data, and then the happiness_cat variable")
      }
    )
  )
)