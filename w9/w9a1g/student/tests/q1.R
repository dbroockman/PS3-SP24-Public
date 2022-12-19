test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- identical( aca.repeal.mean , mean(data$repeal_aca) ) 
        testthat::expect_true(question.correct,
                                    info = "Make sure that you are selecting the correct column to take the mean from")
      }
    )
  )
)