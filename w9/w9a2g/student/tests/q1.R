test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- identical( poc.wait.longer , 
             difference_in_means(vote_wait ~ person_of_color, data, weight = vvweight_post) )  |
            identical( poc.wait.longer , 
             difference_in_means(vote_wait ~ person_of_color, data, weight = vvweight_post,
                                condition1 = 0, condition2 = 1) ) 
        testthat::expect_true(question.correct,
                                    info = "Recall difference_in_means( ... ~ ... , data, weight = ...)")
      }
    )
  )
)