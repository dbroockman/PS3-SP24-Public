test = list(
  name = "q5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correcta <- identical( treatment_effect_CI_upper_end ,
         difference_in_means(voted14~treat, data = data)$conf.high ) 
        testthat::expect_true(question.correcta,
                                    info = "Use conf.high to select the upper bound of the 95% CI.")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correctb <- identical( treatment_effect_CI_lower_end ,
         difference_in_means(voted14~treat, data = data)$conf.low ) 
        testthat::expect_true(question.correctb,
                                    info = "Use conf.low to select the lower bound of the 95% CI.")
      }
    )
  )
)