context("pluralize gift")

test_that("pluralize gift returns the correct output for words ending in y", {

  expect_equal(pluralize_gift(c("puppy")), c("puppies"))

})
