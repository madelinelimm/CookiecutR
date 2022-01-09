# module 2

# try to clean dataset

cat("\n========================================================\n")
print('Entering Module 2')
cat("\n========================================================\n")

stroke_data <- read.csv('data/raw_data/healthcare-dataset-stroke-data.csv')

curdata <- stroke_data[!(stroke_data['bmi'] == 'N/A'),]

curdata1 = curdata[,2:12]

print(head(curdata1))

cat('\nData has been cleaned\n')

cat("\n--------------------------------------------------------------\n")
