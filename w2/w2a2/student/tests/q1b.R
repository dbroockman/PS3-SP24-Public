test = list(
  name = "q1b",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        prop.search.occur.test <- mean(officerdata$search_occur[officerdata$officer_female == 1])
        question.correct <- female.officer.search.rate == prop.search.occur.test
        testthat::expect_true(question.correct,
         info = "Make sure you're taking the mean of the correct variable in the correct dataset (and doing nothing else!)")
      }
    )
  )
)