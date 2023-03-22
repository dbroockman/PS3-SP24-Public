test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        question.correct <- identical( republicans.only , subset(data, republican == 1) ) 
        testthat::expect_true(question.correct,
                                    info = "republicans.only does not look right.")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        rep.graph.with.line.correct <- qplot(marriage_opinion, marriage_perception, data = republicans.only) + geom_smooth(method = 'lm')
        question.correct <- all.equal(rep.graph.with.line.correct$data, rep.graph.with.line$data) & 
            all.equal(rep.graph.with.line.correct$mapping, rep.graph.with.line$mapping)
        question.correct <- question.correct == TRUE
        testthat::expect_true(question.correct,
                                    info = "rep.graph.with.line does not look right.")
      }
    )
  )
)