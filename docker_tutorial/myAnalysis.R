#####
# title: myAnalysis.R
# author: Matteo Carrara (carrara@nexus.ethz.ch)
# date: 21 November 2023
#
# Description: 
#	An example script for the RDSM workshop held during the 2023 BSSE retreat in Basel
#	Plot expression histograms of values, colored by category using a TSV file as input.
# Input:
#	-  A TSV file with at least two columns: a numeric column containing the values to plot and a text column containing the category assigned to the value
#
# Notes:
#	- the names of the value and category columns must be set using the command-line arguments "--value_name" and "--category_name"
#####

require(argparse)
require(ggplot2)

parser <- argparse::ArgumentParser()
parser$add_argument("--input", type = "character", help = "Input TSV table containing the expression and the subject it belongs to")
parser$add_argument("--output", type = "character", help = "Path and name for the output plot")
args <- parser$parse_args()

print(args)
expression <- read.delim(args$input)
print(is(expression$expression))
myplot <- ggplot(expression, aes(x=value, color=subject, fill=subject)) +
  geom_histogram(alpha=0.5, position="identity")

ggsave(args$output, myplot, device="png")

