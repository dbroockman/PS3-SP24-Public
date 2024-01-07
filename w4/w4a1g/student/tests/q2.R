test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- identical( data$treatment_effect, data$po_treat - data$po_control )
        testthat::expect_true(question.correct,
                                    info = "Make sure you are subtracting PO Control from PO Treatment")
      }
    )
  )
)