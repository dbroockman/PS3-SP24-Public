test = list(
  name = "q1a",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        question.correct <- identical( republicans , subset(data, dem_won_ushouse_2018 == 0) ) 
        testthat::expect_true(question.correct,
          info = "Make sure you are subsetting to the right condition!")
      }
    )
  )
)