test = list(
  name = "q5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- identical(average.treatment.effect, mean(data$po_treat - data$po_control) )
        testthat::expect_true(question.correct,
                                    info = "Make sure you are subtracting PO control from PO treatment")
      }
    )
  )
)