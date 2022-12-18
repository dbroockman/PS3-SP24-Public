test = list(
  name = "q1c",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        prop.contra.found.test <- mean(officerdata$contra[officerdata$officer_female == 1])
        question.correct <- female.officer.contra.found.rate == prop.contra.found.test
        testthat::expect_true(question.correct,
           info = "Make sure you're taking the mean of the correct variable in the correct dataset (and doing nothing else!)")
      }
    )
  )
)