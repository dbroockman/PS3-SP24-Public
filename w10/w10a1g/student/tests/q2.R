test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        g.correct.q2 <- qplot(marriage_opinion, marriage_perception, data = democrats.only) + geom_smooth(method = 'lm')
        question.correct <- all.equal(g.correct.q2$data, dem.graph.with.line$data) &
                            all.equal(g.correct.q2$mapping, dem.graph.with.line$mapping) &
                            all.equal(g.correct.q2$layers[[2]]$constructor, dem.graph.with.line$layers[[2]]$constructor)
        testthat::expect_true(question.correct,
                                    info = "dem.graph.with.line does not look right.")
      }
    )
  )
)