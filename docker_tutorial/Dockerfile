## The FROM statement decides the base image to use
## We use a lightweight alpine linux with miniconda3 pre-installed
## https://hub.docker.com/r/continuumio/miniconda3
## Other images can be found on dockerHub: https://hub.docker.com
##
## HINT: Always define a specific version of your operating system and avoid tags such as "latest" to improve reproducibility
FROM continuumio/miniconda3:23.5.2-0-alpine

## Install system packages if necessary
RUN apk add lxqt-desktop cairo


## Instruct docker to copy your code into the image that is being built
## Without absolute paths, docker assumes the origin file to be in the same directory as the Dockerfile
## The destination can be anywhere inside the container. Directories are created as necessary
COPY example_plot.R .

## We run conda to install R
## the option -y is critical, because the building process does not allow interactivity to answer the install questions
##
## HINT: Always define a specific version of the software you install to improve reproducibility
RUN conda install -y -c r r-base=4.2.0

## We define the command to run once the container has been built
## For more complex instructions we can provide a custom bash script that runs multiple commands
## The syntax below shows how to write an entrypoint with a command (Rscript) followed by options (example_plot.R)
## If the script is directly executable, the syntax simplifies to:
## ENTRYPOINT["./example_plot.R"]
##
## HINT: The whitespace after "ENTRYPOINT" is mandatory
ENTRYPOINT ["Rscript", "example_plot.R"]
