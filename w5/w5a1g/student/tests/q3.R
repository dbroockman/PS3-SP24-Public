test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- identical( effect.of.neighbors.mail ,
          mean(social$outcome_voted[social$treat_neighbors == 1]) - mean(social$outcome_voted[social$control_group == 1])  )
        testthat::expect_true(question.correct,
                                    info = "Should it be meanControl - meanNeighbors or meanNeighbors - meanControl?")
      }
    )
  )
)