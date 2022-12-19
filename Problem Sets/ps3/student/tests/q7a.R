test = list(
  name = "q7a",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- identical( diff_opinions , difference_in_means(support ~ high.income,
                                                                           data = bp_data, weight = weight) ) |
                        identical( diff_opinions , difference_in_means(support ~ high.income,
                                                                           bp_data, weight = weight) )
        testthat::expect_true(question.correct,
                                    info = "Not quite!")
      }
    )
  )
)