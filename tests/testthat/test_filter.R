test_that("Filter function works", {
    mat <- matrix(rnorm(1000, mean = 10), ncol=10, nrow=10)
    expect_silent(res <- filter_genes(mat))

    expect_true(nrow(res) <= nrow(mat))
})
