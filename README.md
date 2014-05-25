# Samsung Galaxy data analysis. 

## Summary
This repository holds scripts and data from accelerometer and gyroscope readings from thirty participants who wore a Galaxy SII smartphone on their hips during specific activities. Read CodeBook.md for descriptions of the actvities and variables in the provided tidy data sets. 

## File List
* run_analysis.R: An R script for cleaning and summarizing the data. See below for steps to use run_analysis.R and see CodeBook.md for details on the resulting data. 
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

