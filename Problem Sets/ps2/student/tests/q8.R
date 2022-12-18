test = list(
  name = "q8",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- identical( max.plausible.voters.turned.out ,
         difference_in_means(voted14~treat, data = data)$conf.high * 10000 ) 
        testthat::expect_true(question.correct,
               info = "Review the end of Week 7, Lecture 2.")
      }
    )
  )
)