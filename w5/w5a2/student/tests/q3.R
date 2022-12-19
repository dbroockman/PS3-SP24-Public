test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- identical( neighbors_vs_civic , difference_in_means(outcome_voted ~ treat, social, condition1 = 'civic', condition2 = 'neighbors') ) 
        testthat::expect_true(question.correct,
           info = "Doesn't look right. Remember, difference_in_means(outcome ~ treat, dataset, condition1 = 'baseline', condition2 = 'treatment')")
      }
    )
  )
)