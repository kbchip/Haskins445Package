library(Haskins445Package)
library(testthat)

test_that("Length of output is equal to input arg", {
    expect_equal(5, length(fizz_buzz(5)))
    expect_equal(7, length(fizz_buzz(7)))
    expect_equal(1, length(fizz_buzz(1)))
    expect_equal(99, length(fizz_buzz(99)))
    expect_equal(15, length(fizz_buzz(15)))
})

test_that("Error thrown if n negative, zero, or infinite", {
    expect_error(fizz_buzz(-1))
    expect_error(fizz_buzz(0))
    expect_error(fizz_buzz(Inf))
    expect_error(fizz_buzz(-Inf))
    expect_error(fizz_buzz(-15))
})
