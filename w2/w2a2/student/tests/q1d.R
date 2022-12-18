test = list(
  name = "q1d",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        female.officer.searches.sol <- subset(officerdata, officer_female == 1 & search_occur == 1)
        question.correct <- mean(female.officer.searches.sol$contra) == female.officer.prop.searches.find.contra
        testthat::expect_true(question.correct,
           info = "Make sure you're subsetting the data correctly and taking the mean of the right variable.")
      }
    )
  )
)