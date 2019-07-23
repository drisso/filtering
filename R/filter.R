#' Filtering function
#'
#' This function filters genes.
#'
#' @param x a
#' @param num_reads a
#' @param num_samples a
#'
#' @export
filter_genes <- function(x, num_reads = 5, num_samples = 5) {
    keep <- which(rowSums(x >= num_reads) >= num_samples)
    x[keep,]
}
