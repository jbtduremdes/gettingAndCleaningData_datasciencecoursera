# Coursera Data Science Course
Module 3: Getting and Cleaning Data - Code Book

User: jbtduremdes

Below is a summary of information about the 3rd Module of Coursera's Data Science Peer Assessment Project:

### Dataset Source:
* https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Script Used for Cleaning Data:
* run_analysis.R

Notes: The following steps were done to clean the data.

* Download dataset files into the working directory.
* Extract dataset files from .zip file.
* Load features and activity labels into R Studio.
* Load training set, training labels, and training subjects from UCI HAR Dataset/train folder into R Studio.
* Load test set, test labels, and test subjects from UCI HAR Dataset/test folder into R Studio.
* Retrieve mean and standard deviation measurements from features into selectedFeatures.
* Extract mean and standard deviation measurements only from training and test sets using selectedFeatures.
* Standardize selected features names by apply camel casing and removing non-alphanumeric characters.
* Merge training dataset, labels, and subjects.
* Merge test dataset, labels, and subjects.
* Merge training and test datasets.
* Rename mergedDataSet column names with descriptive names,
* Convert mergedDataSet$activity and mergedDataSet$subject into factors.
* Melt mergedDataSet with subject and activity columns as id (melt into mergedDataSet_Melted).
* Cast mergedDataSet_Melted into mergedDataSet_Mean.
* Export tidy data into a text file (row.names = FALSE, as per instruction).

### Variables:
* subject - the test subject's ID.
* activity - the activity being performed by the test subject.

### Measurements:
* tBodyAccMeanX
* tBodyAccMeanY
* tBodyAccMeanZ
* tBodyAccStdX
* tBodyAccStdY
* tBodyAccStdZ
* tGravityAccMeanX
* tGravityAccMeanY
* tGravityAccMeanZ
* tGravityAccStdX
* tGravityAccStdY
* tGravityAccStdZ
* tBodyAccJerkMeanX
* tBodyAccJerkMeanY
* tBodyAccJerkMeanZ
* tBodyAccJerkStdX
* tBodyAccJerkStdY
* tBodyAccJerkStdZ
* tBodyGyroMeanX
* tBodyGyroMeanY
* tBodyGyroMeanZ
* tBodyGyroStdX
* tBodyGyroStdY
* tBodyGyroStdZ
* tBodyGyroJerkMeanX
* tBodyGyroJerkMeanY
* tBodyGyroJerkMeanZ
* tBodyGyroJerkStdX
* tBodyGyroJerkStdY
* tBodyGyroJerkStdZ
* tBodyAccMagMean
* tBodyAccMagStd
* tGravityAccMagMean
* tGravityAccMagStd
* tBodyAccJerkMagMean
* tBodyAccJerkMagStd
* tBodyGyroMagMean
* tBodyGyroMagStd
* tBodyGyroJerkMagMean
* tBodyGyroJerkMagStd
* fBodyAccMeanX
* fBodyAccMeanY
* fBodyAccMeanZ
* fBodyAccStdX
* fBodyAccStdY
* fBodyAccStdZ
* fBodyAccMeanFreqX
* fBodyAccMeanFreqY
* fBodyAccMeanFreqZ
* fBodyAccJerkMeanX
* fBodyAccJerkMeanY
* fBodyAccJerkMeanZ
* fBodyAccJerkStdX
* fBodyAccJerkStdY
* fBodyAccJerkStdZ
* fBodyAccJerkMeanFreqX
* fBodyAccJerkMeanFreqY
* fBodyAccJerkMeanFreqZ
* fBodyGyroMeanX
* fBodyGyroMeanY
* fBodyGyroMeanZ
* fBodyGyroStdX
* fBodyGyroStdY
* fBodyGyroStdZ
* fBodyGyroMeanFreqX
* fBodyGyroMeanFreqY
* fBodyGyroMeanFreqZ
* fBodyAccMagMean
* fBodyAccMagStd
* fBodyAccMagMeanFreq
* fBodyBodyAccJerkMagMean
* fBodyBodyAccJerkMagStd
* fBodyBodyAccJerkMagMeanFreq
* fBodyBodyGyroMagMean
* fBodyBodyGyroMagStd
* fBodyBodyGyroMagMeanFreq
* fBodyBodyGyroJerkMagMean
* fBodyBodyGyroJerkMagStd
* fBodyBodyGyroJerkMagMeanFreq

### Activities:
* (1) WALKING
* (2) WALKING_UPSTAIRS
* (3) WALKING_DOWNSTAIRS
* (4) SITTING
* (5) STANDING
* (6) LAYING
