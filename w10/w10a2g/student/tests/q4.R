test = list(
  name = "q4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        question.correct <- identical( subset(data, republican == 1), republicans.only) 
        testthat::expect_true(question.correct,
                                    info = "republicans.only doesn't look right.")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        question2.correct <- identical( repub.guns.lm$coefficients, 
             summary(lm(gunsbanassault_perception ~ gunsbanassault_opinion, subset(data, republican == 1)))$coefficients) 
        testthat::expect_true(question2.correct,
                                    info = "repub.guns.lm doesn't look right.")
      }
    )
  )
)