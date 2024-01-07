test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- FALSE
        g.correct.q2 <- qplot(marriage_opinion, marriage_perception, data = democrats.only) + geom_smooth(method = 'lm')
        try(
        question.correct <- all.equal(g.correct.q2$data, dem.graph.with.line$data) & 
                            all.equal(g.correct.q2$mapping[['x']], dem.graph.with.line$mapping[['x']]) == TRUE & 
                            all.equal(g.correct.q2$mapping[['y']], dem.graph.with.line$mapping[['y']]) == TRUE &
                            all.equal(g.correct.q2$layers[[2]][['stat_params']][['method']],
                                      dem.graph.with.line$layers[[2]][['stat_params']][['method']]),
           silent = TRUE
        )
        testthat::expect_true(question.correct,
                                    info = "dem.graph.with.line does not look right.")
      }
    )
  )
)