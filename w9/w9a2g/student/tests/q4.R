test = list(
  name = "q4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- class(your.question) == 'difference_in_means' & 
                                                    your.question$design == 'Standard (weighted)'
        testthat::expect_true(question.correct,
                                    info = "Recall difference_in_means( ... ~ ... , data, weight = ...)")
      }
    )
  )
)