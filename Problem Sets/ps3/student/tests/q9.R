test = list(
  name = "q9",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        correct.plot <- qplot(age, trump_approve, data = bp_data)
        question.correct <- all.equal(
            ggplot_build(correct.plot) ,
            ggplot_build(trump_support_age_plot) ) 
        testthat::expect_true(question.correct,  info = "Try again...")
      }
    )
  )
)