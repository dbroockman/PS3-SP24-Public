test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        . = "# BEGIN PROMPT
        q2.answer <- '...'
        " # END PROMPT
        # BEGIN SOLUTION NO PROMPT
        q2.answer <- 'e'
        # END SOLUTION
      }
    )
  )
)