test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        rep.graph.with.line.correct <- qplot(marriage_opinion, marriage_perception, data = republicans.only) + geom_smooth(method = 'lm')
        question.correct <- all.equal(
            ggplot_build(rep.graph.with.line),
            ggplot_build(rep.graph.with.line.correct)
        )
        question.correct <- question.correct == TRUE
        testthat::expect_true(question.correct,
                                    info = "rep.graph.with.line does not look right.")
      }
    )
  )
)