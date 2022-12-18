test = list(
  name = "q2b",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        equal.within.tol <- function(x, y, tol = .0001) return(x - .0001 < y & x + .0001 > y)
        question.correct <- equal.within.tol(male.officer.contra.found.rate,
                        mean(officerdata$contra[officerdata$officer_female == 0]))
        testthat::expect_true(question.correct,
                    "Make sure you're taking the average of contra in the new make.officer.search.rate dataset you made.")
      }
    )
  )
)