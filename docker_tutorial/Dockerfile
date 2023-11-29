## The FROM statement decides the base image to use
## We use the official conda base image
## https://hub.docker.com/r/continuumio/miniforge3
## Other images can be found on dockerHub: https://hub.docker.com
##
## HINT: Always define a specific version of your operating system and avoid tags such as "latest" to improve reproducibility
##
## We use a base image with the Mamba package manager installed (Mamba: https://mamba.readthedocs.io/en/latest/) to speed up the installation of R and its libraries
FROM condaforge/miniforge3:23.3.1-1

## We use "mamba install" to select the packages of interest. Packages can be searched on https://anaconda.org/anaconda/repo
## HINT: Always define a specific version of your packages to improve reproducibility
## HINT: User the option "-y" to automatically answer "yes" to the install prompt. The image building process does not allow to answer interactive prompts
RUN mamba install -y r-base=4.3.2 r-ggplot2=3.4.4 r-argparse=2.2.2

## We define the command to run once the container has been built
## For more complex instructions we can provide a custom bash script that runs multiple commands
## The syntax below shows how to write an entrypoint with a command (Rscript) followed by options (example_plot.R)
##
## HINT: The whitespace after "ENTRYPOINT" is mandatory
ENTRYPOINT ["Rscript", "/input/myAnalysis.R", "--input", "/input/input.tsv", "--output", "/output/plot.png" ]
