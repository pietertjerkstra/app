library(plumber)
# 'plumber.R' is the location of the file shown above
pr("/home/rstudio/app-main/plumber.R") %>%
  pr_run(port=8000, host = "0.0.0.0")


#run in terminal:
#cd app-main
#R CMD BATCH start_app.R