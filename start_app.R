library(plumber)
# 'plumber.R' is the location of the file shown above
pr("/home/rstudio/plumber.R") %>%
  pr_run(port=8000, host = "0.0.0.0")


#run in terminal:
#R CMD BATCH start_app.R