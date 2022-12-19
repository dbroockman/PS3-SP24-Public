test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- identical( q3Table , table(happiness_data$happiness_cat, happiness_data$life_expectancy_cat) )
        testthat::expect_true(question.correct,
                                    info = "Recall table(happiness_data$..., happiness_data$...)")
      }
    )
  )
)