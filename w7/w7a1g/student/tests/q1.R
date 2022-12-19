test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- identical( social.vs.office , 
        difference_in_means(supportgroup ~ treat, data, condition1 = 'officelobby', condition2 = 'sociallobby') ) 
        testthat::expect_true(question.correct,
          info = "Hint: difference_in_means(outcome ~ treat, data, condition1 = '...', condition2 = '...')")
      }
    )
  )
)