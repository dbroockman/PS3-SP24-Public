test = list(
  name = "q4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- is.table(my.table.idea) & dim(my.table.idea)[2] > 0
        testthat::expect_true(question.correct,
                                    info = "Recall table(happiness_data$..., happiness_data$...)")
      }
    )
  )
)