test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})


library(testthat)

test_that("extract_codons works correctly", {

  # Test with a standard sequence
  result1 <- extract_codons("ATGCGATAGCTA", start = 1)
  expect_equal(result1, c("ATG", "CGA", "TAG"))

  # Test with a different start position
  result2 <- extract_codons("ATGCGATAGCTA", start = 2)
  expect_equal(result2, c("TGC", "GAT", "AGC"))

  # Test with a sequence that is not a multiple of three
  result3 <- extract_codons("ATGCGATAG", start = 1)
  expect_equal(result3, c("ATG", "CGA", "TAG"))

  # Test with an empty sequence
  result4 <- extract_codons("", start = 1)
  expect_equal(result4, character(0))

  # Test with a sequence shorter than three characters
  result5 <- extract_codons("AT", start = 1)
  expect_equal(result5, character(0))

  # Test with a sequence of exactly three characters
  result6 <- extract_codons("ATG", start = 1)
  expect_equal(result6, "ATG")
})

