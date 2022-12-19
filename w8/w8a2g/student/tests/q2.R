test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        question.correct <- identical( general.closetoeday , subset(data, General == 1 & Treatment.within.2months.of.election == 1) ) 
        testthat::expect_true(question.correct,
                                    info = "Recall subset(data, condition)")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        question.correct <- identical( wm.general.closetoeday , 
         weighted.mean(general.closetoeday$effect, general.closetoeday$precision) ) 
        testthat::expect_true(question.correct,
                                    info = "Remember the format: weighted.mean(column, weights)")
      }
    )
  )
)