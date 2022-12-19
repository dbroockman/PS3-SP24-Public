test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        question.correct <- identical( neighbors.group , subset(social, treat_neighbors == 1) )
        testthat::expect_true(question.correct,
           info = "neighbors.group doesn't contain the Neighbors group. Try again.")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        question.correct <- identical( meanNeighbors , mean(social$outcome_voted[social$treat_neighbors == 1]) )
        testthat::expect_true(question.correct,
           info = "Did you take the mean of the outcome_voted variable in the Neighbors group?")
      }
    )
  )
)