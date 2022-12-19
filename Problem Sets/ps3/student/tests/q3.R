test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        dems_only_test <- subset(bp_data, party == 'democrat')
        question.correct <- identical( trump_effect_dem ,
          difference_in_means(support ~ treat, dems_only_test, condition1 = 'control', condition2 = 'libtrump') ) 
        testthat::expect_true(question.correct,
           info = "Not quite!")
      }
    )
  )
)