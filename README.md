Package CD25
================

# Group 25

- s232119 - Ana Paula Rodríguez Del Moral

- s194377 - Jacqueline Printz

- s204697 - Jenni Kinnunen

- s243036 - João Prazeres

- s242051 - William Gunns

# Introduction

This package CD25 (Central Dogma, written by group 25) can be used to
replicate the central dogma of molecular biology: DNA –\> RNA –\>
protein. This is done by finding a DNA sample, which is transcribed to
RNA, which is then translated to a protein. Translation is done using a
codon table.

## Install package

``` r
devtools::install_github("rforbiodatascience24/group_25_package")
library('CD25')
```

## Function 1: sampler

This function generates a DNA sample of wanted length.

Example usage:

``` r
sampler(5)
#> [1] "GTTCG"
```

## Function 2: dna_to_rna

dna_to_rna function takes an DNA sequence as an input and returns it
transcribed to RNA sequence.

``` r
dna_to_rna('AAGGTTCCTT')
#> [1] "AAGGUUCCUU"
```

## Function 3:

This function extracts codons (triplets of characters) from a given DNA
or RNA sequence, starting from a specified position.

``` r
extract_codons("ATGCGATAGCTA", start = 1)
#> [1] "ATG" "CGA" "TAG" "CTA"
```

``` r
extract_codons("ATGCGATAGCTA", start = 2)
#> [1] "TGC" "GAT" "AGC"
```

## Function 4: translate_codons

Function that translate codons to amino acids to create an amino acid
sequence.

``` r
translate_codons(c("AUG", "UUU", "GGC"))
#> [1] "MFG"
```

## Function 5: Nucleotide_Counts

This function takes a DNA or RNA sequence as input and produces a bar
plot showing the counts of each nucleotide in the sequence.

``` r
Nuc_seq <- "AGCTTAGG"
Nucleotide_Counts(Nuc_seq)
```

![](README_files/figure-gfm/unnamed-chunk-8-1.svg)<!-- -->

# Combining the functions

Replicating the central dogma using the first 4 functions

``` r
# Sample DNA sequence of 15 nucleotides and find the corresponding RNA sequence
dna_sample <- sampler(15)
rna_sample <- dna_to_rna(dna_sample)

# Find codons for the RNA sample
codons <- extract_codons(rna_sample, 1)

# Translate the codons to find amino acids sequence
translate_codons(codons)
#> [1] "RTRTN"
```

# Discussion

This package could have multiple purposes. For example, it can be used
as educational tool when studying the central dogma. It can also be
applied in various bioinformatic analysis including sequence
manipulation. The package could be expanded, including for example
functions like GC content calculator and reverse transcription.

In task 3, we discussed differences between
`@importFrom package function` tag to a function description compared to
using `package::function().` ImportFrom adds the package to the
namespace. By using importFrom, the user avoids specifying the package
every time a function is called. However, it adds depencies on the
imported packages. Good for frequenctly used functions.

Package:: calls a function from an external package directly, without
adding it to the package namespace. This way, the user avoids importing
the entire package dependency. Good for rarely used functions.
