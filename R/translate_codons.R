#' Translate RNA Codons to Protein Sequence
#'
#' This function translates a vector of RNA codons into a corresponding amino acid sequence.
#'
#' @param codons A character vector of RNA codons (e.g., c("AUG", "UUU", "GGC")).
#' @return A string representing the translated protein sequence.
#' @examples
#' translate_codons(c("AUG", "UUU", "GGC"))
#' # Output: "MFG"
#'
#' translate_codons(c("UUU", "UCU", "UAU"))
#' # Output: "FSY"
#' @export
translate_codons <- function(codons) {
  aa_sequence <- paste0(codon_table[codons], collapse = "")
  return(aa_sequence)
}
