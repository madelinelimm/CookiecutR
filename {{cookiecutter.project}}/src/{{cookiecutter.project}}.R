# main R code to be run
# click on "Source" button on the top right of this script to run it

library(rjson)

result <- fromJSON(file = 'config/modules.json')


# This function imports the active modules from config/modules.json

ImportModule <- function(modules_json) {
  modules_dict <- collections::dict()
  modules <- length(modules_json)
  for (m in 1:modules) {
    if (modules_json[m][[1]]$execute == TRUE){
      mod <- modules_json[m][[1]]
      modules_dict$set(mod$moduleName, mod$path)
    }
  }
  return(modules_dict)
} 

# This is the main function to run the modules

main <- function(modules_json){
  mod_dict <- ImportModule(modules_json)
  mod_names <- mod_dict$keys()
  for (m in 1:length(mod_names)){
    path <- mod_dict$get(mod_names[[m]])
    source(path)
  }
}

main(result)


