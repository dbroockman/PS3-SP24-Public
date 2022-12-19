test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        reps_only_test <- subset(bp_data, party == 'republican')
        question.correct <- identical( trump_effect_reps , 
        difference_in_means(support ~ treat, reps_only_test, condition1 = 'control', condition2 = 'libtrump') ) 
        testthat::expect_true(question.correct,
                                    info = "Try again!")
      }
    )
  )
)