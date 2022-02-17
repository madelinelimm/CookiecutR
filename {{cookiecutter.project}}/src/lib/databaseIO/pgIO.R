# Main function getAllData to retrieve tables from database, taking in queries

library(RPostgres)
library(DBI)
library(rjson)


# subfunction
connectToDB <- function(query){
  db <- fromJSON(file = 'config/db.template.json')
  dbcon <- db$cdm$connection
  
  dbname_ <- dbcon$dbname
  if (is.null(dbname_) & !is.null(db$defaultDB)){
    dbname_ <- db$defaultDB
  }
  if (is.null(dbname_)){
    return('A database has not been specified')
  }
  connect <- dbConnect(RPostgres::Postgres(),
                       dbname = dbname_,
                       host = dbcon$host,
                       port = dbcon$port,
                       password = dbcon$password,
                       user = dbcon$user)
  
  table <- dbGetQuery(connect, query)
  
}

# main function
getAllData <- function(query){
  tryCatch(connectToDB(query),
            error = function(e)
              if (length(e) > 0){
                print(e)
              }
              else{
                return(connectToDB(query))
              }
  )
}


