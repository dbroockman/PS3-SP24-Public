test = list(
  name = "q1a",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        female.officer.stops.test <- subset(officerdata, officer_female == 1)
        question.correct <- all.equal(female.officer.stops.test, female.officer.stops)
        testthat::expect_true(question.correct,
                               info = "Make sure you're subsetting on officer_female equals to 1.")
      }
    )
  )
)