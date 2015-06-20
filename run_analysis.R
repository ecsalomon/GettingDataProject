###### This code executes the steps necessary complete the course project for 
###### the Getting and Cleaning Data course (part of the Data Science 
###### Specialization on Coursera).

###### Input: 
###### Output: 

###### Required packages: data.table

# load required package
library(reshape2)


### 1. Merge the training and the test sets to create one data set.

# download and extract the data sets
URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(URL, "UCI_HAR_Dataset.zip", method="curl")
unzip("UCI_HAR_Dataset.zip")

# read in the X variable names
xVars <- read.table("UCI HAR Dataset/features.txt", nrow=561, 
                    col.names=c("varNum", "varName"))

# Function to read in subject IDs, x variables, and y variables, combine
# them into a single data frame, and return that data frame.
# Parameters are the data set to build ("train" or "test") and the names of the
# X variables
readData <- function(dataset, xVars) {
  filePath <- paste("UCI HAR Dataset/", dataset, sep="")
  subj <- read.table(paste(filePath,"/subject_", dataset, ".txt", sep=""),
                     col.names="subject")
  x <- read.table(paste(filePath,"/X_", dataset, ".txt", sep=""), col.names=xVars)
  y <- read.table(paste(filePath,"/Y_", dataset, ".txt", sep=""), 
                  col.names="activity")
  cbind(subj, x, y)
}

# build and then combine the training and test data sets
trainData <- readData("train", xVars$varName)
testData <- readData("test", xVars$varName)
mergedData <- rbind(trainData, testData)


### 2. Extract only the measurements on the mean and standard deviation for each 
###    measurement. 

# identify the mean and standard deviation variables
meanVars <- grep("mean()", xVars$varName)
stdVars <- grep("std()", xVars$varName)
keepVars <- sort(c(meanVars, stdVars))

# because the first column of the merged data contains subject numbers, need to
# increment all of the variable numbers by 1 to match the column numbers
keepVars <- keepVars + 1

# select columns from  merged data set containing subject numbers, means,
# standard deviations, and activities
selectedData <- mergedData[,c(1,keepVars,ncol(mergedData))]


### 3. Use descriptive activity names to name the activities in the data set.

# read in the activity labels
activities <- read.table("UCI HAR Dataset/activity_labels.txt", nrow=6, 
                    col.names=c("code", "name"))

# name the activities in the selected data
selectedData$activity <- factor(selectedData$activity, levels = activities$code,
                                labels = activities$name)


### 4. Appropriately label the data set with descriptive variable names. 

# This was done in step 1 with the col.names argument of the read.table
# function, but it's a good idea to simplify the names, so let's remove the
# punctuation.
colnames(selectedData) <- gsub("[[:punct:]]","",colnames(selectedData))


### 5. From the data set in step 4, create a second, independent tidy data set 
###    with the average of each variable for each activity and each subject.

# "melt" the data and then "cast" it summarized by subject and activity
tidyData <- dcast(melt(selectedData, id.vars=c("subject","activity")),
                  formula=subject + activity ~ ..., mean)

# save the data as a text file
write.table(tidyData, "tidyData.txt", row.name=FALSE)


### Miscellaneous 

# save variable names as text file
write.table(colnames(tidyData), "variables.txt", row.name=FALSE)