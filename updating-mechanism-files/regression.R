# The respective csv files have been created based on the Excel data available in the crunchbase_data.xlsx file
# Here, the csv files have been located in a folder called "data" that was accessible from the working directory

locationData <- read.csv(file = 'data/location.csv')
industriesData <- read.csv(file = 'data/industries.csv')
foundersData <- read.csv(file = 'data/founders.csv')

locationModel <- lm(percentage ~ ., data = locationData)
industriesModel <- lm(percentage ~ ., data = industriesData)
foundersModel <- lm(percentage ~ ., data = foundersData)

print(locationModel)
print(industriesModel)
print(foundersModel)