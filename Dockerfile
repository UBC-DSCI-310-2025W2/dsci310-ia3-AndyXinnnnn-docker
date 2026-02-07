FROM rocker/rstudio:4.4.2

USER root

RUN R -e "install.packages('remotes', repos='https://cloud.r-project.org')"

RUN R -e "remotes::install_version('cowsay', version='1.2.2', repos='https://cloud.r-project.org')"

USER rstudio
