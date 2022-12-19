test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        question.correct <- identical( nonmormon.chairs , subset(data, mormon == 0) ) 
        testthat::expect_true(question.correct,
                                    info = "mormon.chairs doesn't look right.")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        question.correct <- identical( dim.nonmormons ,
        difference_in_means(prop_sd_fem2014 ~ treat, subset(data, mormon == 0), condition1 = 'control', condition2 = 'both')) 
        testthat::expect_true(question.correct,
                                    info = "dim.mormons looks wrong. Remember the format: difference_in_means(x ~ treat, data)")
      }
    )
  )
)