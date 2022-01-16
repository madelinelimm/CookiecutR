## Click on "Source" on top right of this script to run the entire script
## Before runing this script, you might need to install 
## rjson and dplyr using install.packages(<package_name>)


library(rjson)
library(dplyr)

lock_file <-  fromJSON(file = 'renv.lock')

packs <- dplyr::bind_rows(lock_file$Packages)


lib_to_install <- c('blob', 'binom.test', 'boot', 'broom', 'caret', 'chisquare',
                    'class', 'collections', 'data.table', 'digest', 'dbplyr', 
                    'dplyr', 'esquisse', 'googledrive', 'googlesheets4', 
                    'ggplot2', 'janitor', 'knitr', 'lubridate', 'magrittr',
                    'Mass', 'mlr', 'poisson', 'purr', 'readxl', 'rjson', 'rlang',
                    'RPostgres', 'RSQLite', 'rvest', 'rmarkdown', 'sass', 'shiny',
                    'sqldf', 'stringi', 'stringr', 'survival', 'tibble', 'tidyr',
                    'tidyverse', 'tidyselect', 'timeDate', 'vroom', 'weibull',
                    'wilcoxon', 'xtable')

for (pkg in 1:length(lib_to_install)) {
  if (!(pkg %in% packs$Package)){
    renv::install(pkg)
  }
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