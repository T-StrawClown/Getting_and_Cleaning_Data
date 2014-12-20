# Getting and Cleaning Data - Course Project

This repo countains course project of Getting and Cleaning Data Coursera class. The answer to all questions is inside R script file, called run_analysis.R.
It loads Human Activity Recognition Using Smartphones Data Set, does what project tasks require it to do and produces tidy dataset, that is saved in file tidy.txt.

## Project Task
You should create one R script called run_analysis.R that does the following.
 1. Merges the training and the test sets to create one data set.
 2. Extracts only the measurements on the mean and standard deviation for each measurement.
 3. Uses descriptive activity names to name the activities in the data set.
 4. Appropriately labels the data set with descriptive variable names.
 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Before you run run_analysis.R script
 - dplyr and LaF packages, like this - install.packages(c("dplyr", "LaF"))
 - download and extract Human Activity Recognition Using Smartphones Data Set to the same folder that contains where run_analysis.R
 - set your working directory to the same folder, like this - setwd("path_to_the_folder_where_run_analysi.R_is_located")

## How run_analysis.R script works


## Notes:
 - more info about sourse dataset of Human Activity Recognition Using Smartphones Data Set here http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
 - if you need Human Activity Recognition Using Smartphones Data Set, it can be obtained here https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
 - version info: script created with RStudio Version 0.98.1091, on 64-bit Windows 7, 64-bit R version 3.1.2, LaF version 0.6.1, dplyr version 0.3.0.2
