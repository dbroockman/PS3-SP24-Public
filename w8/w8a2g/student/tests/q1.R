test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- identical( effect.entire.data , 
                                      weighted.mean(data$effect, data$precision) ) 
        testthat::expect_true(question.correct,
                                    info = "Remember the format: weighted.mean(column, weights)")
      }
    )
  )
)