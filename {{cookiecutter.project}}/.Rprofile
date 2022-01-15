# click on "Source" button on the top right hand corner to run this script
# to activate environment and install packages


# activate the environment
source("renv/activate.R")


# install required packages into environment

install.packages("rjson")
library(rjson)

lock_file <- fromJSON(file = 'renv.lock')

# if lock_file only consist 'renv' package, then install the other packages
if(length(lock_file[[2]]) <= 1){
  renv::install('rjson')
  renv::install('collections')
  renv::install('shiny')
  renv::install('esquisse')
  renv::install('caret')
  renv::install('lubridate')
  renv::install('mlr')
  renv::install('rvest')
  renv::install('rmarkdown')
  renv::install('janitor')
  renv::install('knitr')
  renv::install('dplyr')
  renv::install('ggplot2')
  renv::install('RSQLite')
  renv::install('sqldf')
  renv::install('RPostgres')
  renv::install('tidyverse')
  renv::install('survival')
} else{
  renv::restore()
}

renv::snapshot()

##########################
#######   Note   #########
##########################

# https://rstudio.github.io/renv/reference/snapshot.html
# can run the command renv::settings$snapshot.type("implicit") to capture only 
# packages used in project into the lockfile.
# it is currently set to all so all packages will enter lockfile, but might 
# result in undesired packages entering lockfile. 


