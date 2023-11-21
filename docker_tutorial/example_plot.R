#####
# title: example_plot.R
# author: Matteo Carrara (carrara@nexus.ethz.ch)
# date: 21 November 2023
#
# Description: An example script for the RDSM workshop held during the 2023 BSSE retreat in Basel
#		Creates a normal distribution of data and plots an histogram

# Generate random numbers with a normal distribution
y <- rnorm(500)
# Open the device for saving the image
png("/output/example_plot.png")
# Plot
myplot <- hist(y)
# Close the device
dev.off()
