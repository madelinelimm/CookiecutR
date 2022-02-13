## Sample code to connect to database with R

cat("\n========================================================\n")
print('Entering Module 4')
cat("\n========================================================\n")

library(RPostgres)
library(DBI)
library(rjson)

db<- fromJSON(file = 'config/db.template.json')
dbcon <- db$cdm$connection

connect <- dbConnect(RPostgres::Postgres(),
                 dbname = dbcon$dbname,
                 host = dbcon$host,
                 port = dbcon$port,
                 password = dbcon$password,
                 user = dbcon$user)

# sample query
# table <- (dbGetQuery(connect,
#           "SELECT * FROM testing_schema.accounts"))
# 
# print(table)

cat("\n--------------------------------------------------------------\n")