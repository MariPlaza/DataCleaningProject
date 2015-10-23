## CODE BOOK

### Data collection and Transformation Method
**Source:** https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

###  Data Structure

This section provides an overall understanding of the variables measures and the transformation that they suffer in order to get these variables. A detailed list of variables of the tidy data is provided in DATA DICTIONARY - List of Variables Definition - Detail Section. 

There are 81 Columns in Tidy Data file. The first two represents the subject and the activity respectively while the rest 79 represents the mean and standard desviation from different features of the data set. 

|Column Name| Description| Range / Possible Values |
|---|---|---|
|Subject| Summary Measure| 0-30  |
|Activity| Summary Measure|WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING|
|Feature Name Measure (79 Columns)   | Represent the mean or the standard desviation of the indicated feature for the subject and activity specified in the row|Numeric value normalized and bounded within [-1,1]  |

### Unit of Measure
From the original data set file in: http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.names, could we get the following notes: 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
- The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).
- The gyroscope units are rad/seg.

Since the Consolidated_Data uses information from features contained in X (Please see Read.Me file), and the features were normalized there are no Unit of Measure for this variables.  

###Legend

- **NA:** Not Applicable
- **X:** Values measured in the X-Axis
- **Y:** Values measured in the Y-Axis
- **Z:** Values measured in the Z-Axis
- **Jerk:** Time rate of change of acceleration. It is the acceleration of the acceleration. More information in this link:
http://www.mmsonline.com/articles/understanding-jerk-control

###  DATA DICTIONARY - List of Variables Definition - Detail

|Variable Name   | Summary Measure| Description  | Axis| Type of Signal | Previous Transformation |
|---|---|---|---|---|---|
|Subject| NA  |Subject number that perform the activity|NA|NA|Data recorded directly from experiment|
|Activity|  NA  |Activity perfomed when the data was recorded |NA|NA|Data recorded directly from experiment|
|tBodyAcc-mean()-X|Mean| Body Acceleration Signal | X  |Time domain signals|Separated using a Butterworth low-pass filter|
|tBodyAcc-mean()-Y|Mean| Body Acceleration Signal  | Y  |Time domain signals|Total Accelaration - Gravity|
|tBodyAcc-mean()-Z|Mean| Body Acceleration Signal  | Z  |Time domain signals|Total Accelaration - Gravity|
|tBodyAcc-std()-X|Standard Desviation| Body Acceleration Signal | X  |Time domain signals|Total Accelaration - Gravity|
|tBodyAcc-std()-Y|Standard Desviation| Body Acceleration Signal | Y  |Time domain signals|Total Accelaration - Gravity|
|tBodyAcc-std()-Z|Standard Desviation| Body Acceleration Signal | Z  |Time domain signals|Total Accelaration - Gravity|
|tGravityAcc-mean()-X|Mean|   | X  |   |
|tGravityAcc-mean()-Y|Mean|   | Y  |   |
|tGravityAcc-mean()-Z|Mean|   | Z  |   |
|tGravityAcc-std()-X|Standard Desviation|   | X  |   |
|tGravityAcc-std()-Y|Standard Desviation|   | Y  |   |
|tGravityAcc-std()-Z|Standard Desviation|   | Z  |   |
|tBodyAccJerk-mean()-X|Mean| Mean of Body Acceleration Signal-X Axis  | X  |   |
|tBodyAccJerk-mean()-Y|Mean|   | Y  |   |
|tBodyAccJerk-mean()-Z|Mean|   | Z  |   |
|tBodyAccJerk-std()-X|Standard Desviation|   | X  |   |
|tBodyAccJerk-std()-Y|Standard Desviation|   | Y  |   |
|tBodyAccJerk-std()-Z|Standard Desviation|   | Z  |   |
|tBodyGyro-mean()-X|Mean|Mean   | X  |   |
|tBodyGyro-mean()-Y|Mean|Mean   | Y  |   |
|tBodyGyro-mean()-Z|Mean|Mean   | Z  |   |
|tBodyGyro-std()-X|Standard Desviation|   | X  |   |
|tBodyGyro-std()-Y|Standard Desviation|   | Y  |   |
|tBodyGyro-std()-Z|Standard Desviation|   | Z  |   |
|tBodyGyroJerk-mean()-X|Mean| X  |   |   |
|tBodyGyroJerk-mean()-Y|Mean| Y  |   |   |
|tBodyGyroJerk-mean()-Z|Mean| Z  |   |   |
|tBodyGyroJerk-std()-X|Standard Desviation|   | X  |   |
|tBodyGyroJerk-std()-Y|Standard Desviation|   | Y  |   |
|tBodyGyroJerk-std()-Z|Standard Desviation|   | Z  |   |
|tBodyAccMag-mean()|Mean|   | NA  |   |
|tBodyAccMag-std()|g|Standard Desviation| NA  |   |
|tGravityAccMag-mean()|Mean| NA  |   |   |
|tGravityAccMag-std()|Standard Desviation| NA  |   |   |
|tBodyAccJerkMag-mean()|Mean|   | NA  |   |
|tBodyAccJerkMag-std()|Standard Desviation|   | NA  |   |
|tBodyGyroMag-mean()|Mean|   | NA  |   |
|tBodyGyroMag-std()|Standard Desviation|   | NA  |   |
|tBodyGyroJerkMag-mean()|Mean|   | NA  |   |
|tBodyGyroJerkMag-std()|Standard Desviation|   |  NA |   |
|fBodyAcc-mean()-X|Mean|   | X  |   |
|fBodyAcc-mean()-Y|Mean|   | Y |   |
|fBodyAcc-mean()-Z|Mean|   | Z |   |
|fBodyAcc-std()-X|Standard Desviation|   | X  |   |
|fBodyAcc-std()-Y|Standard Desviation|   | Y  |   |
|fBodyAcc-std()-Z|Standard Desviation|   | Z  |   |
|fBodyAcc-meanFreq()-X|Mean|   |  X |   |
|fBodyAcc-meanFreq()-Y|Mean|   |  Y |   |
|fBodyAcc-meanFreq()-Z|Mean|   |  Z |   |
|fBodyAccJerk-mean()-X|Mean|   |  X |   |
|fBodyAccJerk-mean()-Y|Mean|   |  Y |   |
|fBodyAccJerk-mean()-Z|Mean|   |  Z |   |
|fBodyAccJerk-std()-X|Standard Desviation|   | X  |   |
|fBodyAccJerk-std()-Y|Standard Desviation|   | Y  |   |
|fBodyAccJerk-std()-Z|Standard Desviation|   | Z  |   |
|fBodyAccJerk-meanFreq()-X|Mean|   |  X |   |
|fBodyAccJerk-meanFreq()-Y|Mean|   | Y  |   |
|fBodyAccJerk-meanFreq()-Z|Mean|   | Z  |   |
|fBodyGyro-mean()-X|Mean|   | X  |   |
|fBodyGyro-mean()-Y|Mean|   | Y  |   |
|fBodyGyro-mean()-Z|Mean|   | Z  |   |
|fBodyGyro-std()-X|Standard Desviation|   | X |   |
|fBodyGyro-std()-Y|Standard Desviation|   | Y |   |
|fBodyGyro-std()-Z|Standard Desviation|   | Z |   |
|fBodyGyro-meanFreq()-X|Mean|   | X |   |
|fBodyGyro-meanFreq()-Y|Mean|   | Y |   |
|fBodyGyro-meanFreq()-Z|Mean|   | Z |   |
|fBodyAccMag-mean()|Mean|   | NA |   |
|fBodyAccMag-std()|Standard Desviation|   | NA |   |
|fBodyAccMag-meanFreq()|Mean|   | NA |   |
|fBodyBodyAccJerkMag-mean()|Mean|   | NA |   |
|fBodyBodyAccJerkMag-std()|Standard Desviation|   | NA |   |
|fBodyBodyAccJerkMag-meanFreq()|Mean|  | NA |   |
|fBodyBodyGyroMag-mean()|Mean|   | NA  |   |
|fBodyBodyGyroMag-std()|Standard Desviation|   | NA |   |
|fBodyBodyGyroMag-meanFreq()|Mean|   | NA |   |
|fBodyBodyGyroJerkMag-mean()|Mean|   | NA |   |
|fBodyBodyGyroJerkMag-std()|Standard Desviation|   | NA |   |
|fBodyBodyGyroJerkMag-meanFreq()|Mean|   | NA  |   |

