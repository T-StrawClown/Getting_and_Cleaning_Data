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
 - the script creates bunch of data frames and other objects on the way. Most of them were created for debug purposes or just out of curioucity, 
 the ones that you might be interested in are:
  * t_activities - contains activities
  * t_features - contains feature (variable) names
  * t_data - merged training and testing set, that should be received in point 4. of the project task
  * t_tidy - tidy data that is the ultimate goal of this project

## How run_analysis.R script works
 - first of all it loads feature names (variables) from file features.txt into data frame t_features
 - creates pretty testing data set. That means - it reads files X_test.txt, y_test.txt and subject_test.txt, combines them into single data frame on a row-by row basis
 (1st row in all 3 files is combined into 1st row, 2nd row from all 3 files is combined into 2nd row and so on...),
 names features (variables) with something more or less meaningful, and then filters out all features (variables), except subj_id (data from subject_test.txt),
 activity_id (data from y_test.txt) and all features that contain "-mean()" or "-std()" in their original name. This pretty data frame is called t_test_f
 - does same as above with training data, creates pretty training data set t_train_f
 - merges 2 pretty data sets (testing and training) together, loads activity description from activity_labels.txt and adds it to merged data frame called t_data 
 - creates tidy data set by doing the following (using dplyr library):
  * grouping data set by subject and activity (features subj_id and activity respectfully)
  * ordering data set by subject and activity in ascending ordering
  * calculating means for all features (variables) of t_data, starting from 3rd and ending with 68th (in other words all except subj_id and activity)
 - saves the result in tidy.txt file in the working directory

## Notes:
 - X_test.txt and X_train.txt files are treated as fixed width files, where each of 561 features is 16 positions wide. That is where LaF package was used and it is really fast way
 to load this type of files. I tried to load it with read.fwf, but that's like suicide...
 - in the final result (tidy data set) you might notice that original feature (variable) names are a bit different than ones described in features_info.txt. The names were changed 
 by laf_open_fwf. It seems that all non alpha-numeric characters are replaced by . (dot) internally, so instead of tBodyAcc-mean()-X you'll see tBodyAcc.mean...X, and I didn't bother to
 do anything about it as it doesn't seem to affect anything in any way
 - version info: script created with RStudio Version 0.98.1091, on 64-bit Windows 7, 64-bit R version 3.1.2, LaF version 0.6.1, dplyr version 0.3.0.2 - everything brand new and shining ATM
 - more info about sourse dataset of Human Activity Recognition Using Smartphones Data Set here http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
 - if you need Human Activity Recognition Using Smartphones Data Set, it can be obtained here https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
 - no animals were harmed during this project
