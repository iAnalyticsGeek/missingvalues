
# import data

data_url <- "https://github.com/iAnalyticsGeek/Datasets/raw/master/missingvalue.csv"

missingdata <- read.csv(data_url)

str(missingdata)

# check if there are missing values
is.na(missingdata)

# alternative method
missingdata <- read.csv(data_url, na.strings = c("", "NA"))

# mean of the age variable
mean(missingdata$Age, na.rm = T)

# removing the rows that contain NA's in it
newDataFrame <- na.omit(missingdata)

# data loss?
dim(missingdata)
dim(newDataFrame)

# imputation of NA's in Age variable with mean values
missingdata$Age[is.na(missingdata$Age)] <- mean(missingdata$Age, na.rm = T)












