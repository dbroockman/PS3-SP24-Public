test = list(
  name = "q4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- identical( additional.precincts , 
         2500 * difference_in_means(sd_onefem2014 ~ treat, data,
                                    condition1 = 'control', condition2 = 'supply')$conf.high ) 
        testthat::expect_true(question.correct,
           info = "remember to use the top of the confidence interval")
      }
    )
  )
)