test = list(
  name = "q1b",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        republicans.test <- subset(data, dem_won_ushouse_2018 == 0)
        question.correct <- identical( q1b$coefficients ,
          summary(lm(dem_us_house_percent_2020 ~ spending_rep_ushouse_2020, republicans.test))$coefficients ) 
        testthat::expect_true(question.correct,
                                    info = "Try again!")
      }
    )
  )
)