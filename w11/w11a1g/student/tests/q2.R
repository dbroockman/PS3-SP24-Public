test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        republicans.test <- subset(data, dem_won_ushouse_2018 == 0)
        question.correct <- identical( q2$coefficients , 
                                      summary(lm(dem_us_house_percent_2020 ~ 
                                                       spending_rep_ushouse_2020 +
                   clinton_percent_2016 + dem_us_house_percent_2018, republicans.test))$coefficients ) |
            identical( q2$coefficients , 
                                      summary(lm(dem_us_house_percent_2020 ~ 
                                                       spending_rep_ushouse_2020 +
                   dem_us_house_percent_2018 + clinton_percent_2016, republicans.test))$coefficients )
        testthat::expect_true(question.correct,
                                    info = "WHOOPS, make sure your variables are correct!")
      }
    )
  )
)