#' DNA sequence to RNA
#'
#' @param sequence DNA sequence
#'
#' @return Input DNA sequence converted into RNA
#' @export
#'
#' @examples
#' Example usage:
#' dna_to_rna('AATTGAC')
#' Output:
#' 'AAUUGAC'
#'
dna_to_rna <- function(sequence){
  new_sequence <- gsub("T", "U", sequence)
  return(new_sequence)
}
