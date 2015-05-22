# Codebook
Getting and Cleaning Data Course Project Codebook

Input files
* UCI HAR Dataset/features.txt
  * Contains list of features.  Used to label the columns in the output dataset
* UCI HAR Dataset/activity_labels.txt
  * Contains a list of activity IDs and labels.  Used to assign meaningful labels to describe the activities in the dataset
* UCI HAR Dataset/train/X_train.txt
  * Main file containing feature data for training partition of the data
* UCI HAR Dataset/train/y_train.txt
  * File containing activity ID info corresponding to the feature data for the training partition of the data
* UCI HAR Dataset/train/subject_train.txt
  * File containing subject ID info corresponding to the feature data for the training partition of the data
* UCI HAR Dataset/test/X_test.txt
  * Main file containing feature data for test partition of the data
* UCI HAR Dataset/test/y_test.txt
  * File containing activity ID info corresponding to the feature data for the test partition of the data
* UCI HAR Dataset/test/subject_test.txt
  * File containing subject ID info corresponding to the feature data for the test partition of the data

Output file
* Contains an average of all mean() and std() variables for each activity and subject

Output variables
* subject_id
  * ID number of the test subject.  This ranges from 1 to 30
* activity_label
  * Descriptive label of the type of activity the subject was doing during the measurement
* tBodyAcc-mean()-X
  * mean of time domain signal of BodyAcc feature for X axis
* tBodyAcc-mean()-Y
  * mean of time domain signal of BodyAcc feature for Y axis
* tBodyAcc-mean()-Z
  * mean of time domain signal of BodyAcc feature for Z axis
* tGravityAcc-mean()-X
  * mean of time domain signal of GravityAcc feature for X axis
* tGravityAcc-mean()-Y
  * mean of time domain signal of GravityAcc feature for Y axis
* tGravityAcc-mean()-Z
  * mean of time domain signal of GravityAcc feature for Z axis
* tBodyAccJerk-mean()-X
  * mean of time domain signal of BodyAccJerk feature for X axis
* tBodyAccJerk-mean()-Y
  * mean of time domain signal of BodyAccJerk feature for Y axis
* tBodyAccJerk-mean()-Z
  * mean of time domain signal of BodyAccJerk feature for Z axis
* tBodyGyro-mean()-X
  * mean of time domain signal of BodyAccJerk feature for X axis
* tBodyGyro-mean()-Y
  * mean of time domain signal of BodyAccJerk feature for Y axis
* tBodyGyro-mean()-Z
  * mean of time domain signal of BodyAccJerk feature for Z axis
* tBodyGyroJerk-mean()-X
  * mean of time domain signal of BodyAccJerk feature for X axis
* tBodyGyroJerk-mean()-Y
  * mean of time domain signal of BodyAccJerk feature for Y axis
* tBodyGyroJerk-mean()-Z
  * mean of time domain signal of BodyAccJerk feature for Z axis
* tBodyAccMag-mean()
  * mean of time domain signal of BodyAccMag feature
* tGravityAccMag-mean()
  * mean of time domain signal of GravityAccMag feature 
* tBodyAccJerkMag-mean()
  * mean of time domain signal of AccJerkMag feature 
* tBodyGyroMag-mean()
  * mean of time domain signal of BodyGyroMag feature 
* tBodyGyroJerkMag-mean()
  * mean of time domain signal of BodyGyroJerkMag feature
* fBodyAcc-mean()-X
  * mean of FFT of time domain signal of BodyAcc feature for X axis
* fBodyAcc-mean()-Y
  * mean of FFT of time domain signal of BodyAcc feature for Y axis
* fBodyAcc-mean()-Z
  * mean of FFT of time domain signal of BodyAcc feature for Z axis
* fBodyAccJerk-mean()-X
  * mean of FFT of time domain signal of BodyAccJerk feature for X axis
* fBodyAccJerk-mean()-Y
  * mean of FFT of time domain signal of BodyAccJerk feature for Y axis
* fBodyAccJerk-mean()-Z
  * mean of FFT of time domain signal of BodyAccJerk feature for Z axis
* fBodyGyro-mean()-X
  * mean of FFT of time domain signal of BodyAccJerk feature for X axis
* fBodyGyro-mean()-Y
  * mean of FFT of time domain signal of BodyAccJerk feature for Y axis
* fBodyGyro-mean()-Z
  * mean of FFT of time domain signal of BodyAccJerk feature for Z axis
* fBodyAccMag-mean()
  * mean of FFT of time domain signal of BodyAccMag feature
* fBodyAccJerkMag-mean()
  * mean of FFT of time domain signal of AccJerkMag feature 
* fBodyGyroMag-mean()
  * mean of FFT of time domain signal of BodyGyroMag feature 
* fBodyGyroJerkMag-mean()
  * mean of FFT of time domain signal of BodyGyroJerkMag feature
* tBodyAcc-std()-X
  * standard deviation of time domain signal of BodyAcc feature for X axis
* tBodyAcc-std()-Y
  * standard deviation of time domain signal of BodyAcc feature for Y axis
* tBodyAcc-std()-Z
  * standard deviation of time domain signal of BodyAcc feature for Z axis
* tGravityAcc-std()-X
  * standard deviation of time domain signal of GravityAcc feature for X axis
* tGravityAcc-std()-Y
  * standard deviation of time domain signal of GravityAcc feature for Y axis
* tGravityAcc-std()-Z
  * standard deviation of time domain signal of GravityAcc feature for Z axis
* tBodyAccJerk-std()-X
  * standard deviation of time domain signal of BodyAccJerk feature for X axis
* tBodyAccJerk-std()-Y
  * standard deviation of time domain signal of BodyAccJerk feature for Y axis
* tBodyAccJerk-std()-Z
  * standard deviation of time domain signal of BodyAccJerk feature for Z axis
* tBodyGyro-std()-X
  * standard deviation of time domain signal of BodyAccJerk feature for X axis
* tBodyGyro-std()-Y
  * standard deviation of time domain signal of BodyAccJerk feature for Y axis
* tBodyGyro-std()-Z
  * standard deviation of time domain signal of BodyAccJerk feature for Z axis
* tBodyGyroJerk-std()-X
  * standard deviation of time domain signal of BodyAccJerk feature for X axis
* tBodyGyroJerk-std()-Y
  * standard deviation of time domain signal of BodyAccJerk feature for Y axis
* tBodyGyroJerk-std()-Z
  * standard deviation of time domain signal of BodyAccJerk feature for Z axis
* tBodyAccMag-std()
  * standard deviation of time domain signal of BodyAccMag feature
* tGravityAccMag-std()
  * standard deviation of time domain signal of GravityAccMag feature 
* tBodyAccJerkMag-std()
  * standard deviation of time domain signal of AccJerkMag feature 
* tBodyGyroMag-std()
  * standard deviation of time domain signal of BodyGyroMag feature 
* tBodyGyroJerkMag-std()
  * standard deviation of time domain signal of BodyGyroJerkMag feature
* fBodyAcc-std()-X
  * standard deviation of FFT of time domain signal of BodyAcc feature for X axis
* fBodyAcc-std()-Y
  * standard deviation of FFT of time domain signal of BodyAcc feature for Y axis
* fBodyAcc-std()-Z
  * standard deviation of FFT of time domain signal of BodyAcc feature for Z axis
* fBodyAccJerk-std()-X
  * standard deviation of FFT of time domain signal of BodyAccJerk feature for X axis
* fBodyAccJerk-std()-Y
  * standard deviation of FFT of time domain signal of BodyAccJerk feature for Y axis
* fBodyAccJerk-std()-Z
  * standard deviation of FFT of time domain signal of BodyAccJerk feature for Z axis
* fBodyGyro-std()-X
  * standard deviation of FFT of time domain signal of BodyAccJerk feature for X axis
* fBodyGyro-std()-Y
  * standard deviation of FFT of time domain signal of BodyAccJerk feature for Y axis
* fBodyGyro-std()-Z
  * standard deviation of FFT of time domain signal of BodyAccJerk feature for Z axis
* fBodyAccMag-std()
  * standard deviation of FFT of time domain signal of BodyAccMag feature
* fBodyAccJerkMag-std()
  * standard deviation of FFT of time domain signal of AccJerkMag feature 
* fBodyGyroMag-std()
  * standard deviation of FFT of time domain signal of BodyGyroMag feature 
* fBodyGyroJerkMag-std()
  * standard deviation of FFT of time domain signal of BodyGyroJerkMag feature
  
Transformations
* Read features.txt data and labeled columns "feature_id" and "feature"
* Read activity_labels.txt data and labeled columns "activity_id" and "activity_label"
* Training data
  * Read X_train.txt data and assigned column names to be the corresponding feature column of the features dataset above
  * Read y_train.txt, labeled column "activity_id" and converted to factor
  * Also performed a merge to join the activity_label field to the y_train data
  * Added the y_train columns to the front of the X_train dataset
  * Read subject_train.txt data, labeled column "subject_id", and converted to factor
  * Added a column called "partition" to the subject_train data, and assigned a literal value of "train"
  * Added the subject_train data to the front of the X_train dataset
* Test data
  * Read X_test.txt data and assigned column names to be the corresponding feature column of the features dataset above
  * Read y_test.txt, labeled column "activity_id" and converted to factor
  * Also performed a merge to join the activity_label field to the y_test data
  * Added the y_test columns to the front of the X_test dataset
  * Read subject_test.txt data, labeled column "subject_id", and converted to factor
  * Added a column called "partition" to the subject_test data, and assigned a literal value of "test"
  * Added the subject_test data to the front of the X_test dataset
* Used rbind to append the transformed X_train and X_test datasets together in a dataset called X_all
* Selected only the 4 factor columns, and all mean and standard deviation feature columns
	* Feature columns with the string "mean()" or the string "std()" in the field name were included
	* Output dataset was named x_all_mean_std
* Created an aggregated dataset with the mean (avg) of all feature columns grouped by subject_id and activity_label
	Output dataset was named x_all_mean_std_avg
* Wrote the aggregated dataset out to a file called "x_all_mean_std_avg.txt"
    	
  
