test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        question.correct <- identical(low.income.countries, subset(happiness_data, gdpcapita_cat == 'low-income'))
        testthat::expect_true(question.correct,
                                    info = "Recall subset(data, colname == 'something')")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        low.inc.subset <- subset(happiness_data, gdpcapita_cat == 'low-income')
        question.correct <- identical( low.income.happiness.table , table(low.inc.subset$happiness_cat) )
        testthat::expect_true(question.correct,
                                    info = "Recall table(dataset$column)")
      }
    )
  )
)