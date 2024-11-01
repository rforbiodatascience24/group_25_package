% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/initial_name_sampling.R
\name{sampler}
\alias{sampler}
\title{DNA Sampling}
\usage{
sampler(size)
}
\arguments{
\item{size}{length of the desired output}
}
\value{
returns sample of specified length from the inbuilt sample c("A", "T", "G", "C")
}
\description{
DNA Sampling
}
\examples{
#' # Generate a sample of length 5
sampler(5)

# Generate a sample of length 10
sampler(10)
}
