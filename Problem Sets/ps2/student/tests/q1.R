test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- identical( mail_dim ,
              difference_in_means(voted14~treat, data = data) )  | 
        identical( mail_dim ,
              difference_in_means(voted14~treat, data = data, condition1 = 0, condition2 = 1))  | 
        identical( mail_dim ,
              difference_in_means(voted14~treat, data = data, condition1 = '0', condition2 = '1')) 
        testthat::expect_true(question.correct,
         info = "Doesn't look right. Take a look at the R Cheat sheet for a reminder about how to use difference_in_means().")
      }
    )
  )
)