test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        question.correct <- identical( mormon.chairs , subset(data, mormon == 1) ) 
        testthat::expect_true(question.correct,
                                    info = "mormon.chairs doesn't look right.")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        question.correct <- identical( dim.mormons ,
        difference_in_means(prop_sd_fem2014 ~ treat, subset(data, mormon == 1), condition1 = 'control', condition2 = 'both')) 
        testthat::expect_true(question.correct,
                                    info = "dim.mormons looks wrong. Remember the format: difference_in_means(x ~ treat, data)")
      }
    )
  )
)