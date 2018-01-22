## Coursera Data Science Course
# Module 3: Getting and Cleaning Data - R Script
# User: jbtduremdes

## Below are the necessary code used for cleaning the data from the 3rd Module of Coursera's Data Science Peer Assessment Project:
# Download dataset files into the working directory.
filename <- "raw_dataset.zip"
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if (!file.exists(filename)) {
    download.file(url, filename, method = "curl")
}

# Extract dataset files from .zip file.
if (!file.exists("UCI HAR Dataset")) {
    unzip(filename) 
}

# Load features.
features <- read.table("UCI HAR Dataset/features.txt")

# Load activity labels.
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")

# Load training set, training labels, and training subjects from UCI HAR Dataset/train folder.
trainingSet <- read.table("UCI HAR Dataset/train/X_train.txt")
trainingLabels <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainingSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")

# Load test set, test labels, and test subjects from UCI HAR Dataset/test folder.
testSet <- read.table("UCI HAR Dataset/test/X_test.txt")
testLabels <- read.table("UCI HAR Dataset/test/Y_test.txt")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")

# Retrieve mean and standard deviation measurements from features.
selectedFeatures <- grep(".*mean.*|.*std.*", as.character(features[, 2]))

# Extract mean and standard deviation measurements only from training and test sets using selectedFeatures.
trainingSet <- trainingSet[selectedFeatures]
testSet <- testSet[selectedFeatures]

# Standardize selected feature names, apply camel casing.
selectedFeaturesNames <- features[selectedFeatures, 2]
selectedFeaturesNames <- gsub("-mean", "Mean", selectedFeaturesNames)
selectedFeaturesNames <- gsub("-std", "Std", selectedFeaturesNames)
selectedFeaturesNames <- gsub("[-()]", "", selectedFeaturesNames)

# Merge training dataset, labels, and subjects.
trainingSet <- cbind(trainingSubjects, trainingLabels, trainingSet)

# Merge test dataset, labels, and subjects.
testSet <- cbind(testSubjects, testLabels, testSet)

# Merge training and test datasets.
mergedDataSet <- rbind(trainingSet, testSet)

# Rename mergedDataSet column names.
colnames(mergedDataSet) <- c("subject", "activity", selectedFeaturesNames)

# Convert mergedDataSet$activity and mergedDataSet$subject into factors.
mergedDataSet$activity <- factor(mergedDataSet$activity, activityLabels[, 1], as.character(activityLabels[, 2]))
mergedDataSet$subject <- as.factor(mergedDataSet$subject)

# Melt mergedDataSet with subject and activity columns as id.
mergedDataSet_Melted <- melt(mergedDataSet, id = c("subject", "activity"))

# Cast mergedDataSet_Melted.
mergedDataSet_Mean <- dcast(mergedDataSet_Melted, subject + activity ~ variable, mean)

# Export tidy data into a text file (row.names = FALSE, as per instruction).
write.table(mergedDataSet_Mean, "tidy_dataset.txt", row.names = FALSE, quote = FALSE)
