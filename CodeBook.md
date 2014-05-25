# Samsung Galaxy SII accelerometer and gyroscope tidy data

## Summary
Tidy data set from accelerometer and gyroscope readings from Samsung Galaxy SII smart phones. Participants, wore the smart phone while performing physical activities. Readings were recorded to be used in activity-classification algorithms. This repository does not contain the classification algorith. Instead, it creates two tidy data sets, one with the standard deviation and mean of each measurement mapped to clear activity, and one with the mean of each previous measurement for each subject and activity combination. 


## Raw Data Description

From [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

__The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

It is important to note that what is considered raw data in this repository is actually data that was pre processed as described below. 


The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.__ 

## Data definitions
From [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
__The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.__

**accelerometer-gyroscope-activities.txt:** 
activity: Text description of the activity performed during the reading. Possible values are "walking", "walking.upstairs", "walking.downstairs", "sitting", "standing", "laying"
subject: Integer denoting which test subject the reading is from. No text descriptions of the test subject were recorded. 
*Jerk signals*
f.body.acc.jerk.mean.x
f.body.acc.jerk.mean.y
f.body.acc.jerk.mean.z
f.body.acc.jerk.std.x
f.body.acc.jerk.std.y
f.body.acc.jerk.std.z
f.body.acc.mag.mean
f.body.acc.mag.std
f.body.acc.mean.x
f.body.acc.mean.y
f.body.acc.mean.z
f.body.acc.std.x
f.body.acc.std.y
f.body.acc.std.z
f.body.body.acc.jerk.mag.mean
f.body.body.acc.jerk.mag.std
f.body.body.gyro.jerk.mag.mean
f.body.body.gyro.jerk.mag.std
f.body.body.gyro.mag.mean
f.body.body.gyro.mag.std
f.body.gyro.mean.x
f.body.gyro.mean.y
f.body.gyro.mean.z
f.body.gyro.std.x
f.body.gyro.std.y
f.body.gyro.std.z
t.body.acc.jerk.mag.mean
t.body.acc.jerk.mag.std
t.body.acc.jerk.mean.x
t.body.acc.jerk.mean.y
t.body.acc.jerk.mean.z
t.body.acc.jerk.std.x
t.body.acc.jerk.std.y
t.body.acc.jerk.std.z
t.body.acc.mag.mean
t.body.acc.mag.std
t.body.acc.mean.x
t.body.acc.mean.y
t.body.acc.mean.z
t.body.acc.std.x
t.body.acc.std.y
t.body.acc.std.z
t.body.gyro.jerk.mag.mean
t.body.gyro.jerk.mag.std
t.body.gyro.jerk.mean.x
t.body.gyro.jerk.mean.y
t.body.gyro.jerk.mean.z
t.body.gyro.jerk.std.x
t.body.gyro.jerk.std.y
t.body.gyro.jerk.std.z
t.body.gyro.mag.mean
t.body.gyro.mag.std
t.body.gyro.mean.x
t.body.gyro.mean.y
t.body.gyro.mean.z
t.body.gyro.std.x
t.body.gyro.std.y
t.body.gyro.std.z
t.gravity.acc.mag.mean
t.gravity.acc.mag.std
t.gravity.acc.mean.x
t.gravity.acc.mean.y
t.gravity.acc.mean.z
t.gravity.acc.std.x
t.gravity.acc.std.y
t.gravity.acc.std.z

