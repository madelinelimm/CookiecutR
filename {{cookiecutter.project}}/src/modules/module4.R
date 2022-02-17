## Sample code to connect to database with R

cat("\n========================================================\n")
print('Entering Module 4')
cat("\n========================================================\n")

#import function getAllData to run query from database
source('src/lib/databaseIO/pgIO.R')


table <- getAllData(query = "SELECT * FROM testing_schema.accounts")

print(table)

cat("\n--------------------------------------------------------------\n")