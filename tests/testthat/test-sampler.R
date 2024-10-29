test_that("sampler returns correct length", {
  expect_equal(nchar(sampler(5)), 5)    # Test if sampler returns a string of length 5
  expect_equal(nchar(sampler(10)), 10)  # Test if sampler returns a string of length 10
})

test_that("sampler returns only A, T, G, or C", {
  sample_output <- sampler(100) # Generate a longer sample for better probability coverage
  unique_chars <- unique(strsplit(sample_output, "")[[1]])
  expect_true(all(unique_chars %in% c("A", "T", "G", "C")))  # Check that output only contains A, T, G, or C
})

test_that("sampler handles size = 0", {
  expect_equal(sampler(0), "")  # Test if sampler returns an empty string when size is 0
})
