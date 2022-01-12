# click on "Source" button on the top right hand corner to run this script
# to activate environment and install packages


# packages already installed

# renv::install('rjson')
# renv::install('collections')




# other suggested packages to download

# https://rstudio.github.io/renv/reference/snapshot.html
# can run the command renv::settings$snapshot.type("all") to capture all the
# packages but my result in undesired packages entering lockfile. 
# currently snapshot type is implicit, which means only packages used in project
# is in the lockfile

renv::install('shiny')
renv::install('rmake')
renv::install('sqldf')
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
renv::install('RMySQL')
renv::install('tidyverse')


