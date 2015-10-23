## CODE BOOK

### Data collection and Transformation Method
**Textual from Source:** https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

###  Data Structure

This section provides an overall understanding of the variables measures and the transformation that they suffer in order to get these variables. A detailed list of variables of the tidy data is provided in DATA DICTIONARY - List of Variables Definition - Detail Section. 

There are 81 Columns in Tidy Data file. The first two represents the subject and the activity respectively while the rest 79 represents the mean and standard desviation from different features of the data set. 

|Column Name| Description| Range / Possible Values |
|---|---|---|
|Subject|Represent the Subject number that performed the activity| 0-30  |
|Activity|Represent the Activity perfomed when the data was recorded|WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING|
|Feature Name Measure (79 Columns)   | Represent the mean or the standard desviation of the indicated feature for the subject and activity specified in the row|Numeric value normalized and bounded within [-1,1]  |

### Unit of Measure
From the original data set file in: http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.names, could we get the following notes: 

**Notes:**
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
- The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).
- The gyroscope units are rad/seg.

Since the Consolidated_Data uses information from features contained in X (Please see Read.Me file), and the features were normalized there are no Unit of Measure for this variables.  

###  Data Transformation 

This section is a summary from the feature_info.txt in order to understand the meaing of the different features retrieved in the tidy data. For detailed information please referred directly to the file in the dataset.

The transformation of the data are represented in the following image: 

file:///https://github.com/MariPlaza/DataCleaningProject/blob/master/Data_Transformation.jpg


###Legend

- **NA:** Not Applicable
- **X:** Values measured in the X-Axis
- **Y:** Values measured in the Y-Axis
- **Z:** Values measured in the Z-Axis
- **t:** Time domain signals
- **f:** Frequency domain signals
- **Jerk:** Time rate of change of acceleration. It is the acceleration of the acceleration. More information in this link:
http://www.mmsonline.com/articles/understanding-jerk-control

###  DATA DICTIONARY - List of Variables Definition - Detail

|Variable Name   | Summary Measure| Description  | Axis| Type of Signal | Previous Transformation |
|---|---|---|---|---|---|
|Subject| NA  |Subject number that perform the activity|NA|NA|Data recorded directly from experiment|
|Activity|  NA  |Activity perfomed when the data was recorded |NA|NA|Data recorded directly from experiment|
|tBodyAcc-mean()-X|Mean| Body Acceleration| X  |t|Separation from  Total Acceleration|
|tBodyAcc-mean()-Y|Mean| Body Acceleration| Y  |t|Separation from  Total Acceleration|
|tBodyAcc-mean()-Z|Mean| Body Acceleration| Z  |t|Separation from  Total Acceleration|
|tBodyAcc-std()-X|Standard Desviation|Body Acceleration| X  |t|Separation from  Total Acceleration|
|tBodyAcc-std()-Y|Standard Desviation|Body Acceleration| Y  |t|Separation from  Total Acceleration|
|tBodyAcc-std()-Z|Standard Desviation| Body Acceleration| Z  |t|Separation from  Total Acceleration|
|tGravityAcc-mean()-X|Mean|Gravity Acceleration| X  |t|Separation from  Total Acceleration|
|tGravityAcc-mean()-Y|Mean|Gravity Acceleration   | Y  |t|Separation from  Total Acceleration|
|tGravityAcc-mean()-Z|Mean|Gravity Acceleration   | Z  |t|Separation from  Total Acceleration|
|tGravityAcc-std()-X|Standard Desviation|Gravity Acceleration   | X  |t|Separation from  Total Acceleration|
|tGravityAcc-std()-Y|Standard Desviation|Gravity Acceleration   | Y  |t|Separation from  Total Acceleration|
|tGravityAcc-std()-Z|Standard Desviation|Gravity Acceleration   | Z  |t|Separation from  Total Acceleration|
|tBodyAccJerk-mean()-X|Mean|Body Acceleration Jerk|X|t|Derived in Time from Body Acceleration|
|tBodyAccJerk-mean()-Y|Mean|Body Acceleration Jerk   | Y  |t|Derived in Time from Body Acceleration|
|tBodyAccJerk-mean()-Z|Mean|Body Acceleration Jerk   | Z  |t|Derived in Time from Body Acceleration|
|tBodyAccJerk-std()-X|Standard Desviation|Body Acceleration Jerk   | X  |t|Derived in Time from Body Acceleration|
|tBodyAccJerk-std()-Y|Standard Desviation|Body Acceleration Jerk   | Y  |t|Derived in Time from Body Acceleration|
|tBodyAccJerk-std()-Z|Standard Desviation|Body Acceleration Jerk   | Z  |t|Derived in Time from Body Acceleration|
|tBodyGyro-mean()-X|Mean|Body Angular Speed| X  |t   |Clean noise from Gyro raw data|
|tBodyGyro-mean()-Y|Mean|Body Angular Speed| Y  |t   |Clean noise from Gyro raw data|
|tBodyGyro-mean()-Z|Mean|Body Angular Speed| Z  |t   |Clean noise from Gyro raw data|
|tBodyGyro-std()-X|Standard Desviation|Body Angular Speed   | X  |t   |Clean noise from Gyro raw data|
|tBodyGyro-std()-Y|Standard Desviation|Body Angular Speed   | Y  |t   |Clean noise from Gyro raw data|
|tBodyGyro-std()-Z|Standard Desviation|Body Angular Speed   | Z  |t   |Clean noise from Gyro raw data|
|tBodyGyroJerk-mean()-X|Mean|Body Angular Acceleration(Jerk)|X   |t   |Derived in Time from Body Angular Speed|
|tBodyGyroJerk-mean()-Y|Mean|Body Angular Acceleration(Jerk)|Y   |t  |Derived in Time from Body Angular Speed|
|tBodyGyroJerk-mean()-Z|Mean|Body Angular Acceleration(Jerk)|Z   |t   |Derived in Time from Body Angular Speed|
|tBodyGyroJerk-std()-X|Standard Desviation|Body Angular Acceleration(Jerk)| X  |t   |Derived in Time from Body Angular Speed|
|tBodyGyroJerk-std()-Y|Standard Desviation|Body Angular Acceleration(Jerk)| Y  |t   |Derived in Time from Body Angular Speed|
|tBodyGyroJerk-std()-Z|Standard Desviation|Body Angular Acceleration(Jerk)| Z  |t   |Derived in Time from Body Angular Speed|
|tBodyAccMag-mean()|Mean|Body Acceleration Magnitude| NA  |t   |Eucladian Norm applied to tBodyAcc|
|tBodyAccMag-std()|Standard Desviation|Body Acceleration Magnitude|NA  |t   |Eucladian Norm applied to tBodyAcc|
|tGravityAccMag-mean()|Mean|Gravity Acceleration Magnitude|NA   |t   |Eucladian Norm applied to tGravityAcc|
|tGravityAccMag-std()|Standard Desviation|Gravity Acceleration Magnitude| NA  |t  |Eucladian Norm applied to tGravityAcc|
|tBodyAccJerkMag-mean()|Mean|Body Angular Acceleration Magnitude| NA  |t   |Eucladian Norm applied to tBodyAccJerk|
|tBodyAccJerkMag-std()|Standard Desviation|Body Angular Acceleration Magnitude| NA  |t   |Eucladian Norm applied to tBodyAccJerk|
|tBodyGyroMag-mean()|Mean|Body Angular Speed Magnitude   | NA  |t   |Eucladian Norm applied to tBodyGyro|
|tBodyGyroMag-std()|Standard Desviation|Body Angular Speed Magnitude| NA  |t   |Eucladian Norm applied to tBodyGyro|
|tBodyGyroJerkMag-mean()|Mean|Body Angular Speed Magnitude| NA  |t   |Eucladian Norm applied to tBodyGyroJerk|
|tBodyGyroJerkMag-std()|Standard Desviation|Body Angular Speed Magnitude|  NA |t   |Eucladian Norm applied to tBodyGyroJerk|
|fBodyAcc-mean()-X|Mean|Body Acceleration| X  |f   |Fast Fouier Transformation from tBodyAcc|
|fBodyAcc-mean()-Y|Mean|Body Acceleration| Y |f   |Fast Fouier Transformation from tBodyAcc|
|fBodyAcc-mean()-Z|Mean|Body Acceleration| Z |f   |Fast Fouier Transformation from tBodyAcc|
|fBodyAcc-std()-X|Standard Desviation|Body Acceleration   | X  |f   |Fast Fouier Transformation from tBodyAcc|
|fBodyAcc-std()-Y|Standard Desviation|Body Acceleration   | Y  |f   |Fast Fouier Transformation from tBodyAcc|
|fBodyAcc-std()-Z|Standard Desviation|Body Acceleration   | Z  |f   |Fast Fouier Transformation from tBodyAcc|
|fBodyAcc-meanFreq()-X|Mean|   |  X |f   |Fast Fouier Transformation from |
|fBodyAcc-meanFreq()-Y|Mean|   |  Y |f   |Fast Fouier Transformation from |
|fBodyAcc-meanFreq()-Z|Mean|   |  Z |f   |Fast Fouier Transformation from |
|fBodyAccJerk-mean()-X|Mean|Body Acceleration Jerk   |  X |f   |Fast Fouier Transformation from tBodyAccJerk|
|fBodyAccJerk-mean()-Y|Mean|Body Acceleration Jerk   |  Y |f   |Fast Fouier Transformation from tBodyAccJerk|
|fBodyAccJerk-mean()-Z|Mean|Body Acceleration Jerk   |  Z |f   |Fast Fouier Transformation from tBodyAccJerk|
|fBodyAccJerk-std()-X|Standard Desviation|Body Acceleration Jerk   | X  |f   |Fast Fouier Transformation from tBodyAccJerk|
|fBodyAccJerk-std()-Y|Standard Desviation|Body Acceleration Jerk   | Y  |f   |Fast Fouier Transformation from tBodyAccJerk|
|fBodyAccJerk-std()-Z|Standard Desviation|Body Acceleration Jerk   | Z  |f   |Fast Fouier Transformation from tBodyAccJerk|
|fBodyAccJerk-meanFreq()-X|Mean|   |  X |f   |Fast Fouier Transformation from |
|fBodyAccJerk-meanFreq()-Y|Mean|   | Y  |f   |Fast Fouier Transformation from |
|fBodyAccJerk-meanFreq()-Z|Mean|   | Z  |f   |Fast Fouier Transformation from |
|fBodyGyro-mean()-X|Mean|Body Acceleration   | X  |f  |Fast Fouier Transformation from tBodyGyro|
|fBodyGyro-mean()-Y|Mean|Body Acceleration   | Y  |f  |Fast Fouier Transformation from tBodyGyro|
|fBodyGyro-mean()-Z|Mean|Body Acceleration   | Z  |f  |Fast Fouier Transformation from tBodyGyro|
|fBodyGyro-std()-X|Standard Desviation|Body Acceleration   | X |f   |Fast Fouier Transformation from tBodyGyro|
|fBodyGyro-std()-Y|Standard Desviation|Body Acceleration   | Y |f   |Fast Fouier Transformation from tBodyGyro|
|fBodyGyro-std()-Z|Standard Desviation|Body Acceleration   | Z |f   |Fast Fouier Transformation from tBodyGyro|
|fBodyGyro-meanFreq()-X|Mean|   | X |f   |Fast Fouier Transformation from |
|fBodyGyro-meanFreq()-Y|Mean|   | Y |f  |Fast Fouier Transformation from |
|fBodyGyro-meanFreq()-Z|Mean|   | Z |f   |Fast Fouier Transformation from |
|fBodyAccMag-mean()|Mean|Body Acceleration Magnitude   | NA |f   |Fast Fouier Transformation from tBodyAccMag|
|fBodyAccMag-std()|Standard Desviation|Body Acceleration Magnitude   | NA |f   |Fast Fouier Transformation from tBodyAccMag|
|fBodyAccMag-meanFreq()|Mean|   | NA |f   |Fast Fouier Transformation from |
|fBodyBodyAccJerkMag-mean()|Mean|Body Acceleration Jerk Magnitude   | NA |f   |Fast Fouier Transformation from tBodyAccJerkMag|
|fBodyBodyAccJerkMag-std()|Standard Desviation|Body Acceleration Jerk Magnitude   | NA |f   |Fast Fouier Transformation from tBodyAccJerkMag|
|fBodyBodyAccJerkMag-meanFreq()|Mean|  | NA |f   |
|fBodyBodyGyroMag-mean()|Mean|Body Angular Speed Magnitude   | NA  |f   |Fast Fouier Transformation from tBodyGyroMag|
|fBodyBodyGyroMag-std()|Standard Desviation|Body Angular Speed Magnitude   | NA |f   |Fast Fouier Transformation from tBodyGyroMag|
|fBodyBodyGyroMag-meanFreq()|Mean|   | NA |f   |
|fBodyBodyGyroJerkMag-mean()|Mean|Body Angular Acceleration Magnitude   | NA |f   |Fast Fouier Transformation from tBodyGyroJerkMag|
|fBodyBodyGyroJerkMag-std()|Standard Desviation|Body Angular Acceleration Magnitude   | NA |f   |Fast Fouier Transformation from tBodyGyroJerkMag|
|fBodyBodyGyroJerkMag-meanFreq()|Mean|   | NA  |f   |

