test = list(
  name = "q10",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- identical( trump_support_age_reg , summary(lm(trump_approve~age, data = bp_data)) ) 
        testthat::expect_true(question.correct,
           info = "Remember to wrap lm() inside of summary() and store it to trump_support_age_reg")
      }
    )
  )
)