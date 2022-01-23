## Click on "Source" on top right of this script to run the entire script
install.packages('rjson')
install.packages('dplyr')

library(rjson)
library(dplyr, warn.conflicts = FALSE)

lock_file <-  fromJSON(file = 'renv.lock')

packs <- dplyr::bind_rows(lock_file$Packages)


lib_to_install <- c('blob', 'binom', 'boot', 'broom', 'caret', 'stats',
                    'class', 'collections', 'data.table', 'digest', 'dbplyr', 
                    'dplyr', 'esquisse', 'googledrive', 'googlesheets4', 
                    'ggplot2', 'janitor', 'knitr', 'lubridate', 'magrittr',
                    'MASS', 'mlr', 'poisson', 'purrr', 'readxl', 'rjson', 'rlang',
                    'RPostgres', 'RSQLite', 'rvest', 'rmarkdown', 'sass', 'shiny',
                    'sqldf', 'stringi', 'stringr', 'survival', 'tibble', 'tidyr',
                    'tidyverse', 'tidyselect', 'timeDate', 'vroom', 'WeibullR',
                    'xtable')

for (i in 1:length(lib_to_install)) {
  pkg <- lib_to_install[i]
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