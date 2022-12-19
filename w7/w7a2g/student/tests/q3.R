test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- identical( supply.vs.control.ci.bottom ,
         difference_in_means(sd_onefem2014 ~ treat, data,
                                              condition1 = 'control',
                                              condition2 = 'supply')$conf.low )
        testthat::expect_true(question.correct,
                                    info = "Answer doesn't look right. Take a look at the R Cheat Sheet for a reminder. Are you using the supply.vs.control variable?")
      }
    )
  )
)