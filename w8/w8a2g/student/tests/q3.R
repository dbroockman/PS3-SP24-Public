test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        question.correct <- identical( general.farfromeday ,
                                      subset(data, General == 1 & Treatment.within.2months.of.election == 0) ) 
        testthat::expect_true(question.correct,
                                    info = "Recall subset(data,condition)")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        question.correct <- identical( wm.general.farfromeday , 
         weighted.mean(general.farfromeday$effect, general.farfromeday$precision) ) 
        testthat::expect_true(question.correct,
                                    info = "Remember the format: weighted.mean(column, weights)")
      }
    )
  )
)