##########################################################################################
# run_analysis.R
#
# Script for Getting and Cleaning Data Course Project
#
# This script does the following:
# 1. Merges the training and the test sets to create one data set.
# - Descriptive variable names and activity names are added to the dataset
#   during this merge process
# - Descriptive variable names
# - The Intertial Signals data is not required for the project tasks
#   It will not be processed by this script
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. From the data set in step 2 (above), creates a second, independent tidy data set 
#    with the average of each variable for each activity and each subject.
##########################################################################################

# Read Features labels file
features <- read.table("UCI HAR Dataset/features.txt")
names(features) <- c("feature_id","feature")

# Read Activity Labels file
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
names(activity_labels) <- c("activity_id","activity_label")

###############
# Training data
###############

# Read X_train file
# 7352 rows x 561 columns (features)
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
names(X_train) <- features$feature

# Read y_train file
# 7352 rows x 1 column
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
names(y_train) <- c("activity_id")
y_train$activity_id <- as.factor(y_train$activity_id)

# Add activity labels to y_train dataset
y_train <- merge(y_train, activity_labels, by="activity_id")

# Add activity IDs and labels to X_train dataset
X_train <- cbind(y_train, X_train)

# Read subject_train file
# 7352 rows x 1 column
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
names(subject_train) <- c("subject_id")
subject_train$subject_id <- as.factor(subject_train$subject_id)

# Add partition name to subject_train dataset
subject_train <- cbind("train", subject_train)
names(subject_train)[1] <- "partition"

# Add subject IDs to X_train dataset
X_train <- cbind(subject_train, X_train)

###############
# Testing data
###############

# Read X_test file
# 2947 rows x 561 columns (features)
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
names(X_test) <- features$feature

# Read y_test file
# 2947 rows x 1 column
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
names(y_test) <- c("activity_id")
y_test$activity_id <- as.factor(y_test$activity_id)

# Add activity labels to y_test dataset
y_test <- merge(y_test, activity_labels, by="activity_id")

# Add activity IDs and labels to X_test dataset
X_test <- cbind(y_test, X_test)

# Read subject_test file
# 2947 rows x 1 column
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
names(subject_test) <- c("subject_id")
subject_test$subject_id <- as.factor(subject_test$subject_id)

# Add partition name to subject_test dataset
subject_test <- cbind("test", subject_test)
names(subject_test)[1] <- "partition"

# Add subject IDs to X_test dataset
X_test <- cbind(subject_test, X_test)

#########################################
# Combine all data into a single data set
#########################################

X_all <- rbind(X_train, X_test)

#####################################################
# Select only identifier and mean() and std() columns
#####################################################
column_list <- c("partition","subject_id","activity_id","activity_label")
column_list <- c(column_list, as.character(features$feature[grep("mean()", features$feature)]))
column_list <- c(column_list, as.character(features$feature[grep("std()", features$feature)]))

X_all_mean_std <- X_all[,column_list]

#####################################################
# Group by subject_id, activity_label, take mean of all columns other than first 4
#####################################################

X_all_mean_std_summary <- aggregate(X_all_mean_std[,-(1:4)], list(subject_id=X_all_mean_std$subject_id,activity_label=X_all_mean_std$activity_label), FUN = "mean")

write.table(X_all_mean_std_summary,"X_all_mean_std_summary.txt", row.names=FALSE)

# Read data back in with:
# read.table("X_all_mean_std_summary.txt", header=TRUE)