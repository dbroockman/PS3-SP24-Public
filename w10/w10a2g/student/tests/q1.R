test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        dems.only.correct <- subset(data, republican == 0)
        question.correct <- identical( dems.only.correct, democrats.only) 
        testthat::expect_true(question.correct,
                                    info = "democrats.only doesn't look right.")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        question2.correct <- identical( dem.guns.lm$coefficients, 
             summary(lm(gunsbanassault_perception ~ gunsbanassault_opinion, subset(data, republican == 0)))$coefficients) 
        testthat::expect_true(question2.correct,
                                    info = "dem.guns.lm doesn't look right.")
      }
    )
  )
)