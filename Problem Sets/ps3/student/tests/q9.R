test = list(
  name = "q9",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- FALSE
        correct.plot <- qplot(age, trump_approve, data = bp_data)
        try(
            question.correct <- all.equal(correct.plot$data, trump_support_age_plot$data) & 
                            all.equal(correct.plot$mapping[['x']], trump_support_age_plot$mapping[['x']]) == TRUE & 
                            all.equal(correct.plot$mapping[['y']], trump_support_age_plot$mapping[['y']]) == TRUE,
            silent = TRUE
        )
        testthat::expect_true(question.correct,  info = "Try again...")
      }
    )
  )
)