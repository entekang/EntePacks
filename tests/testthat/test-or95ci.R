test_that("or95ci function works", {
  expect_equal(OR_95CI(0, 0, 0.05, 1), "1.0 (1.0, 1.0)")
})
