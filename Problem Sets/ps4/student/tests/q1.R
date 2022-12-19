test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- identical( reg_1 , 
         summary(lm(vote_prefer ~ treat_assign_coethnic, data = dh_data))) 
        testthat::expect_true(question.correct,
          info = "Try again!")
      }
    )
  )
)