# Samsung Galaxy data analysis. 

## Summary
This repository holds scripts and data from accelerometer and gyroscope readings from thirty participants who wore a Galaxy SII smartphone on their hips during specific activities. The purpose of this data is to classify physical activities using readings from the phon's accelerometer and gyroscope.

The original data this repository is derived from is found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). 

Read CodeBook.md for descriptions of the actvities and variables in the provided tidy data sets. 

## File List
* run_analysis.R: An R script for cleaning and summarizing the data. Reads in test and training data, then outputs subject-activity-means.txt and accelerometer-gyroscope-activities.txt. See below for steps to use run_analysis.R and see CodeBook.md for details on the resulting data. 
* README.md: This file
* accelerometer-gyroscope-activities.txt: Tidy data set containing mean and standard-deviation measurements from Galaxy SIIs. See CodeBook.md for more details
* subject-activity-means.txt: Tidy data set summarizing the data in accelerometer-gyroscope-activites.txt with one row for each subject/activity combination and the mean of each variable tracked.
* data/activity_labels.txt: A list of activities tracked. See CodeBook.md for more details.
* data/features.txt: A list of features (variables) tracked in the raw datasets. See CodeBook.md for more details
* data/test/subject_test.txt: A list mapping test subjects to rows in the X_test data. See CodeBook.md for more details.
* data/test/X_test.txt: Test set with accelerometer and gyroscope readings. See CodeBook.md for more details.
* data/test/y_test.txt: A list mapping activities to rows in the X_test data set. See CodeBook.md for more details.
* data/train/subject_test.txt: A list mapping train subjects to rows in the X_train data. See CodeBook.md for more details.
* data/train/X_train.txt: Training set with accelerometer and gyroscope readings. See CodeBook.md for more details.
* data/train/y_train.txt: A list mapping activities to rows in the X_train data set. See CodeBook.md for more details.

## Data reproduction
1. In your workin directory, create a subdirectory named "data"
2. Download the raw dataset [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zipk)
3. Extract the zip file 
4. Copy the files UCI HAR Dataset/features.txt and activity_labels.txt into data
5. Copy the directories UCI HAR Dataset\train and UCI HAR Dataset\test into data
6. Ensure the reshape2 packages is installed in R
7. Run run_analysisR with R 
8. This creates accelerometer-gyroscope-activities.txt and subject-activity-means.txt 