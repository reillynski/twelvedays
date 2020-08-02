context("sing day")

test_that("sing day returns the correct output", {

  expect_equal(sing_day(xmas2, 2, Full.Phrase), "On the second day of Christmas, my true love sent to me,\ntwo meal points\nand an email from Cal Poly.")

})
