library(plumber)
r <- plumber::plumb("code/api.R"); r$run(port=8080, host = "0.0.0.0")

