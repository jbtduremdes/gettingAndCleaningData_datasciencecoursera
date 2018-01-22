# gettingAndCleaningData_datasciencecoursera
This repository contains the files for Module 3: Getting and Cleaning Data of Coursera's Data Science course. Included in this repository are the following files:
* README.md - contains information about the repository.
* CodeBook.md - contains a summary of relevant information in cleaning the data, along with a list of variables.
* run_analysis.R - contains all R scripts used for cleaning the data.

Running the run_analysis.R on R Studio accomplishes the following using the dataset from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
