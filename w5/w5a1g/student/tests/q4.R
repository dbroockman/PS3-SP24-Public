test = list(
  name = "q4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        question.correct <- identical( mean.age.control.group ,
            mean(mean(social$age[social$control_group==1])  ))
        testthat::expect_true(question.correct,
                                    info = "mean.yob.control.group doesn't look right.")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        question.correct <- identical( mean.age.neighbors.group ,
            mean(social$age[social$treat_neighbors==1]))
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
            mean(social$age[social$treat_neighbors==1]) - mean(social$age[social$control_group==1])  )
        testthat::expect_true(question.correct,
                                    info = "This is the mean difference of yob between the treatment and control group")
      }
    )
  )
)