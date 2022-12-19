test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- identical( office.effect , 
         difference_in_means(supportgroup ~ treat, data, condition1 = 'control', condition2 = 'officelobby') ) 
        testthat::expect_true(question.correct,
           info = "Remember the format: difference_in_means(x ~ treat, data, condition1='baseline', condition2='treatment')")
      }
    )
  )
)