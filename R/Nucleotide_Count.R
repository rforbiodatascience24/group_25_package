#' Nucleotide Count Plot
#'
#' This function takes a DNA or RNA sequence as input and produces a bar plot
#' showing the counts of each nucleotide in the sequence.
#' @importFrom stringr str_split boundary str_count
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @examples
#' # Example DNA sequence
#' Nuc_seq <- "AGCTTAGG"
#' Nucleotide_Counts(Nuc_seq)

#' @param Nuc_seq A character string representing a DNA or RNA sequence.

#' @return A bar plot of nucleotide counts of the input sequence.

#' @export
#'

Nucleotide_Counts <- function(Nuc_seq) {

  # Split the sequence by each nucleotide and get unique nucleotide types
  unique_nucleotides <- Nuc_seq |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # Count occurrences of each unique nucleotide in the sequence
  counts <- sapply(unique_nucleotides, function(amino_acid) stringr::str_count(string = Nuc_seq, pattern = amino_acid)) |>
    as.data.frame()

  # Set column names for the data frame of nucleotide counts
  colnames(counts) <- c("Counts")
  counts[["Nucleotide"]] <- rownames(counts)

  # Create the bar plot of nucleotide counts
  nucleotide_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Nucleotide, y = Counts, fill = Nucleotide)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(nucleotide_plot)
}
