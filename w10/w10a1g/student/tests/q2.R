test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        g.correct.q2 <- qplot(marriage_opinion, marriage_perception, data = democrats.only) + geom_smooth(method = 'lm')
        question.correct <- all.equal(ggplot_build(g.correct.q2), ggplot_build(dem.graph.with.line))
        testthat::expect_true(question.correct,
                                    info = "dem.graph.with.line does not look right.")
      }
    )
  )
)