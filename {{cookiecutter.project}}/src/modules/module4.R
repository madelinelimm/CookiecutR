## Sample code to connect to database with R

cat("\n========================================================\n")
print('Entering Module 4')
cat("\n========================================================\n")

#import function getAllData and commitData to run query from database
source('src/lib/databaseIO/pgIO.R')

commitData(query = "DROP TABLE IF EXISTS Pizzas CASCADE;")
commitData(query = "CREATE TABLE Pizzas(pizza TEXT PRIMARY KEY, price INTEGER);")
commitData(query = "INSERT INTO Pizzas VALUES ('Diavola', '12')")
commitData(query = "INSERT INTO Pizzas VALUES ('Hawaiian', '18')")
commitData(query = "INSERT INTO Pizzas VALUES ('Seafood', '20')")
pizza_table <- getAllData(query = "SELECT * FROM Pizzas")

print(pizza_table)

cat("\n \n")

print('We are getting out of this module')
cat("\n--------------------------------------------------------------\n")

