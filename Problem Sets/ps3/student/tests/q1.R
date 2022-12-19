test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- identical( trump_effect_avg , 
         difference_in_means(support ~ treat, bp_data, condition1 = 'control', condition2 = 'libtrump') ) 
        testthat::expect_true(question.correct,
          info = "Try again!")
      }
    )
  )
)