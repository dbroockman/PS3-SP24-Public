test = list(
  name = "q2c",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        male.officer.searches.sol <- subset(officerdata, officer_female == 0 & search_occur == 1)
        question.correct <- mean(male.officer.searches.sol$contra) == male.officer.prop.searches.find.contra
        testthat::expect_true(question.correct,
           info = "Make sure you're subsetting the data correctly and taking the mean of the right variable.")
      }
    )
  )
)