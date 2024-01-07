test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        question.correct <- identical( democrats.only , subset(data, republican == 0) ) 
        testthat::expect_true(question.correct,
                                    info = "democrats.only does not look right.")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        question.correct <- FALSE
        g.correctq1 <- qplot(marriage_opinion, marriage_perception, data = democrats.only)
        try(question.correct <- all.equal(g.correctq1$data, dem.graph$data) & 
                            all.equal(g.correctq1$mapping[['x']], dem.graph$mapping[['x']]) == TRUE & 
                            all.equal(g.correctq1$mapping[['y']], dem.graph$mapping[['y']]) == TRUE,
           silent = TRUE)
        testthat::expect_true(question.correct,
                                    info = "dem.graph does not look right.")
      }
    )
  )
)