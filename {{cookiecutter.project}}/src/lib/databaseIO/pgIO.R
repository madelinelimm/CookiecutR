# Main function getAllData to retrieve tables from database, taking in queries

library(RPostgres)
library(DBI)
library(rjson)


# subfunction
connectToDB <- function(query, dbname = NULL){
  db <- fromJSON(file = 'config/db.template.json')
  dbcon <- db$cdm$connection
  
  if (is.null(dbname)){
    dbname_ <- dbcon$dbname
  }
  else{
    dbname_ <- dbname
  }
  
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
# takes in query and dbname(optional)
# if dbname is stated, then it will be the database used for this query
# else the dbname in db.template.json will be used
# outputs table 

getAllData <- function(query, dbname = NULL){

  tryCatch(
    expr = {
      res <- connectToDB(query, dbname)
      return(res)
    },
    error = function(e){
      message(e)
      return('Error in getAllData, please try again!')
    },
    warning = function(w){
      message(w)
      return('Warning in getAllData, please try again!')
    },
    finally = {
      message(' ')
    }
  )
}




