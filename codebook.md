#codebook

The file tidy.txt is a processed subset of the original Human Activity Recognition Using Smartphones Data Set.


# tidy.txt
It does the following - 

* Merging the training and the test subjects into a single dataset.
* Extracting only the measurements corresponding to the mean (Mean) and standard deviation (std) for 
 each available measurement
* Joining the subjects with the activities performed by the subjects with the measurements from the dataset
* Evaluating the mean per subject and activity of the available meassurements and sorting by subject and activity
* Saving the resulting dataset in a text file
* Saving the dataset column names in a text file.

There are total 66 columns of averaged information(per subject and activity) corresponding to the 
Mean and std of different meassurements for a total of 180 observations (30 subjects x 6 activities). 
These observations include meassurements in Time and Frequency of magnitude (Mag) and components in X,Y and Z 
direction for the linear acceleration (Acc), angular acceleration (Gyro), linear jerk (AccJerk) 
and angular jerk (GyroJerk) for both Body and Gravity components. Columns 1 and 2 correspond to 
the Subject and Activity.

 # Column names 
 
 "x"
"Subject"
"Activity"
"Time.BodyAcc-Mean-X"
"Time.BodyAcc-Mean-Y"
"Time.BodyAcc-Mean-Z"
"Time.BodyAcc-std-X"
"Time.BodyAcc-std-Y"
"Time.BodyAcc-std-Z"
"Time.GravityAcc-Mean-X"
"Time.GravityAcc-Mean-Y"
"Time.GravityAcc-Mean-Z"
"Time.GravityAcc-std-X"
"Time.GravityAcc-std-Y"
"Time.GravityAcc-std-Z"
"Time.BodyAccJerk-Mean-X"
"Time.BodyAccJerk-Mean-Y"
"Time.BodyAccJerk-Mean-Z"
"Time.BodyAccJerk-std-X"
"Time.BodyAccJerk-std-Y"
"Time.BodyAccJerk-std-Z"
"Time.BodyGyro-Mean-X"
"Time.BodyGyro-Mean-Y"
"Time.BodyGyro-Mean-Z"
"Time.BodyGyro-std-X"
"Time.BodyGyro-std-Y"
"Time.BodyGyro-std-Z"
"Time.BodyGyroJerk-Mean-X"
"Time.BodyGyroJerk-Mean-Y"
"Time.BodyGyroJerk-Mean-Z"
"Time.BodyGyroJerk-std-X"
"Time.BodyGyroJerk-std-Y"
"Time.BodyGyroJerk-std-Z"
"Time.BodyAccMag-Mean"
"Time.BodyAccMag-std"
"Time.GravityAccMag-Mean"
"Time.GravityAccMag-std"
"Time.BodyAccJerkMag-Mean"
"Time.BodyAccJerkMag-std"
"Time.BodyGyroMag-Mean"
"Time.BodyGyroMag-std"
"Time.BodyGyroJerkMag-Mean"
"Time.BodyGyroJerkMag-std"
"Frequency.BodyAcc-Mean-X"
"Frequency.BodyAcc-Mean-Y"
"Frequency.BodyAcc-Mean-Z"
"Frequency.BodyAcc-std-X"
"Frequency.BodyAcc-std-Y"
"Frequency.BodyAcc-std-Z"
"Frequency.BodyAccJerk-Mean-X"
"Frequency.BodyAccJerk-Mean-Y"
"Frequency.BodyAccJerk-Mean-Z"
"Frequency.BodyAccJerk-std-X"
"Frequency.BodyAccJerk-std-Y"
"Frequency.BodyAccJerk-std-Z"
"Frequency.BodyGyro-Mean-X"
"Frequency.BodyGyro-Mean-Y"
"Frequency.BodyGyro-Mean-Z"
"Frequency.BodyGyro-std-X"
"Frequency.BodyGyro-std-Y"
"Frequency.BodyGyro-std-Z"
"Frequency.BodyAccMag-Mean"
"Frequency.BodyAccMag-std"
"Frequency.BodyAccJerkMag-Mean"
"Frequency.BodyAccJerkMag-std"
"Frequency.BodyGyroMag-Mean"
"Frequency.BodyGyroMag-std"
"Frequency.BodyGyroJerkMag-Mean"
"Frequency.BodyGyroJerkMag-std"
