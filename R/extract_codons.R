#' Extraction of codons
#'
#' This function extracts codons (triplets of characters) from a given DNA or RNA sequence,
#' starting from a specified position.
#'
#' @param sequence A character string representing the DNA or RNA sequence from which codons are to be extracted.
#' @param start An integer indicating the position in the sequence to start extraction (default is 1).
#'
#' @return A character vector containing the extracted codons from the sequence.
#' @export
#'
#' @examples
#' # Example usage
#' extract_codons("ATGCGATAGCTA", start = 1)
#' # Expected output: c("ATG", "CGA", "TAG")
#'
#' extract_codons("ATGCGATAGCTA", start = 2)
#' # Expected output: c("TGC", "GAT", "AGC")



extract_codons <- function(sequence, start = 1) {
  sequence_length <- nchar(sequence)
  codons <- substring(sequence,
                      first = seq(from = start, to = sequence_length - 3 + 1, by = 3),
                      last = seq(from = 3 + start - 1, to = sequence_length, by = 3))
  return(codons)
}

