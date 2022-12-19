test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        question.correct <- identical( control.group , subset(social, control_group == 1) )
        testthat::expect_true(question.correct,
           info = "control.group doesn't contain the control group. Try again.")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        question.correct <- identical( meanControl , mean(social$outcome_voted[social$control_group == 1]) )
        testthat::expect_true(question.correct,
           info = "Did you take the mean of the outcome_voted variable in the control group?")
      }
    )
  )
)