test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- identical(reg_2 , 
         summary(lm(vote_prefer ~ treat_assign_joking_cousin, data = dh_data))) 
        testthat::expect_true(question.correct,
          info = "Try again!")
      }
    )
  )
)