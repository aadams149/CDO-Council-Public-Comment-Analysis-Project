FROM alpine:3.7

FROM rocker/rstudio:4.0.1

FROM rstudio/plumber:v1.0.0

RUN apt-get update -qq && apt-get install -y \
  libssl-dev \
  libcurl4-gnutls-dev \
  curl \
  libxt-dev \
  libssl-dev

RUN R -e "install.packages(c('dplyr','readr', 'plumber','stringr'),repos='http://cran.us.r-project.org/')"

COPY . /app

EXPOSE 8080

WORKDIR /app/code

ENTRYPOINT ["Rscript", "runApi.R"]