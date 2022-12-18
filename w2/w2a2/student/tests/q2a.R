test = list(
  name = "q2a",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- mean(officerdata$search_occur[officerdata$officer_female == 0]) == 
                                male.officer.search.rate
        testthat::expect_true(question.correct,
                             "Make sure you're taking the average of search_occur in a new male.officer.search.rate dataset, which should just have data on stops by male officers.")
      }
    )
  )
)