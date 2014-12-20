## Tidy dataset
It contains 6 record 1 for each activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) for each of 30 subjects. That in total produces 6x30=180 rows.

Rows are ordered by subject # and activity name in ascending order. Each row has an average value calculated for the following features from original source (in the same order as they
appear in tidy.txt):
 - tBodyAcc-mean()-X
 - tBodyAcc-mean()-Y
 - tBodyAcc-mean()-Z
 - tGravityAcc-mean()-X
 - tGravityAcc-mean()-Y
 - tGravityAcc-mean()-Z
 - tBodyAccJerk-mean()-X
 - tBodyAccJerk-mean()-Y
 - tBodyAccJerk-mean()-Z
 - tBodyGyro-mean()-X
 - tBodyGyro-mean()-Y
 - tBodyGyro-mean()-Z
 - tBodyGyroJerk-mean()-X
 - tBodyGyroJerk-mean()-Y
 - tBodyGyroJerk-mean()-Z
 - tBodyAccMag-mean()
 - tGravityAccMag-mean()
 - tBodyAccJerkMag-mean()
 - tBodyGyroMag-mean()
 - tBodyGyroJerkMag-mean()
 - fBodyAcc-mean()-X
 - fBodyAcc-mean()-Y
 - fBodyAcc-mean()-Z
 - fBodyAccJerk-mean()-X
 - fBodyAccJerk-mean()-Y
 - fBodyAccJerk-mean()-Z
 - fBodyGyro-mean()-X
 - fBodyGyro-mean()-Y
 - fBodyGyro-mean()-Z
 - fBodyAccMag-mean()
 - fBodyBodyAccJerkMag-mean()
 - fBodyBodyGyroMag-mean()
 - fBodyBodyGyroJerkMag-mean()
 - tBodyAcc-std()-X
 - tBodyAcc-std()-Y
 - tBodyAcc-std()-Z
 - tGravityAcc-std()-X
 - tGravityAcc-std()-Y
 - tGravityAcc-std()-Z
 - tBodyAccJerk-std()-X
 - tBodyAccJerk-std()-Y
 - tBodyAccJerk-std()-Z
 - tBodyGyro-std()-X
 - tBodyGyro-std()-Y
 - tBodyGyro-std()-Z
 - tBodyGyroJerk-std()-X
 - tBodyGyroJerk-std()-Y
 - tBodyGyroJerk-std()-Z
 - tBodyAccMag-std()
 - tGravityAccMag-std()
 - tBodyAccJerkMag-std()
 - tBodyGyroMag-std()
 - tBodyGyroJerkMag-std()
 - fBodyAcc-std()-X
 - fBodyAcc-std()-Y
 - fBodyAcc-std()-Z
 - fBodyAccJerk-std()-X
 - fBodyAccJerk-std()-Y
 - fBodyAccJerk-std()-Z
 - fBodyGyro-std()-X
 - fBodyGyro-std()-Y
 - fBodyGyro-std()-Z
 - fBodyAccMag-std()
 - fBodyBodyAccJerkMag-std()
 - fBodyBodyGyroMag-std()
 - fBodyBodyGyroJerkMag-std()

## Source Data
Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
orge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. 
Smartlab - Non Linear Complex Systems Laboratory 
DITEN - UniversitÃ  degli Studi di Genova, Genoa I-16145, Italy. 
activityrecognition '@' smartlab.ws 
www.smartlab.ws 

### Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

### Attribute Information
For each record in the dataset it is provided: 
 - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
 - Triaxial Angular velocity from the gyroscope. 
 - A 561-feature vector with time and frequency domain variables. 
 - Its activity label. 
 - An identifier of the subject who carried out the experiment.

### Files Included
 - 'features_info.txt': Shows information about the variables used on the feature vector.
 - 'features.txt': List of all features.
 - 'activity_labels.txt': Links the class labels with their activity name.
 - 'train/X_train.txt': Training set.
 - 'train/y_train.txt': Training labels.
 - 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
 - 'test/X_test.txt': Test set.
 - 'test/y_test.txt': Test labels.
 - 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
 - bunch of other files we're not interested in.
 
### Notes
 - Features are normalized and bounded within [-1,1].
 - Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

### License:
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
