FROM alpine:3.7

FROM rocker/r-ver:4.4.0

FROM rstudio/plumber:v1.0.0

RUN apt-get update -qq && apt-get install -y \
  libssl-dev \
  libcurl4-gnutls-dev \
  curl \
  libxt-dev \
  libssl-dev

COPY . /app

WORKDIR /app

EXPOSE 5050

RUN R -e "install.packages(c('dplyr', 'plumber', 'readr', 'stringr', 'gmailr'))"

ENTRYPOINT ["Rscript", "code/runApi.R"]

CMD ["R", "-e", "code/runApi.R"]