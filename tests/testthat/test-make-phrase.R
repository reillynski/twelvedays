context("make phrase")

test_that("make phrase returns the correct output", {

  expect_equal(make_phrase(3, "three", "swans", "a-swimming", "", ""), "three swans a-swimming")

})
