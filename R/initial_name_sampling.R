#' Initial Name Sampling
#'
#' @param size length of the desired output
#'
#' @return returns sample of specified length from the inbuilt sample c("A", "T", "G", "C")
#' @export
#'
#' @examples
#' #' # Generate a sample of length 5
#' sampler(5)
#'
#' # Generate a sample of length 10
#' sampler(10)
sampler <- function(size){
  disjoint_sample <- sample(c("A", "T", "G", "C"), size = size, replace = TRUE)
  joint_sample <- paste0(name_me3, collapse = "")
  return(joint_sample)
}
