test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- identical( aca.repeal.weighted.mean , weighted.mean(data$repeal_aca, data$vvweight) ) 
        testthat::expect_true(question.correct,
                                    info = "Recall weighted.mean (data$column1 , data$column2)")
      }
    )
  )
)