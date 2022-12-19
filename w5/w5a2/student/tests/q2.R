test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- identical( neighbors_vs_control , difference_in_means(outcome_voted ~ treat, social, condition1 = 'control', condition2 = 'neighbors') ) 
        testthat::expect_true(question.correct,
           info = "Doesn't look right. Remember, difference_in_means(outcome ~ treat, dataset, condition1 = 'baseline', condition2 = 'treatment')")
      }
    )
  )
)