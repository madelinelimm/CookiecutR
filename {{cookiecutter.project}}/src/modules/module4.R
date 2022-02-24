## Sample code to connect to database with R

cat("\n========================================================\n")
print('Entering Module 4')
cat("\n========================================================\n")

#import function getAllData to run query from database
source('src/lib/databaseIO/pgIO.R')


table <- getAllData(query = "SELECT * FROM testing_schema.accounts")

print(table)
print('We are getting out of this module')

cat("\n--------------------------------------------------------------\n")