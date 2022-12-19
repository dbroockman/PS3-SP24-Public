test = list(
  name = "q4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        question.correct <- identical( mean.yob.control.group ,
            mean(mean(social$yob[social$control_group==1])  ))
        testthat::expect_true(question.correct,
                                    info = "mean.yob.control.group doesn't look right.")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        question.correct <- identical( mean.yob.neighbors.group ,
            mean(social$yob[social$treat_neighbors==1]))
        testthat::expect_true(question.correct,
                                    info = "mean.yob.neighbors.group doesn't look right.")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        question.correct <- identical( neighbors.group.this.many.years.older ,
            mean(social$yob[social$treat_neighbors==1]) - mean(social$yob[social$control_group==1])  )
        testthat::expect_true(question.correct,
                                    info = "This is the mean difference of yob between the treatment and control group")
      }
    )
  )
)