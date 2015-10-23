## CODE BOOK

### Data collection and Transformation Method
**Textual from Source:** https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

###  Data Structure

This section provides an overall understanding of the variables measures and the transformation that they suffer in order to get these variables. A detailed list of variables of the tidy data is provided in DATA DICTIONARY - List of Variables Definition - Detail Section. 

There are 68 Columns in Tidy Data file. The first two represents the subject and the activity respectively while the rest 66 represents the mean and standard desviation from different features of the data set. 

|Column Name| Description| Range / Possible Values |
|---|---|---|
|Subject|Represent the Subject number that performed the activity| 0-30  |
|Activity|Represent the Activity perfomed when the data was recorded|WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING|
|Feature Name Measure (66 Columns)   | Represent the mean or the standard desviation of the indicated feature for the subject and activity specified in the row|Numeric value normalized and bounded within [-1,1]  |

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

![alt text](https://github.com/MariPlaza/DataCleaningProject/blob/master/Data_Transformation.jpg "Data Transformation Diagram")

**NOTE:** The numbers in the diagram are used for further references, but they do not implied any kind of order in the features. 

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

|Variable Name   | Summary Measure| Description  | Axis| Type of Signal | Data Transformation Diagram Reference|
|---|---|---|---|---|---|
|Subject| NA  |Subject number that perform the activity|NA|NA|Data recorded directly from experiment|
|Activity|  NA  |Activity perfomed when the data was recorded |NA|NA|Data recorded directly from experiment|
|tBodyAcc-mean()-X|Mean| Body Acceleration| X  |t|2|
|tBodyAcc-mean()-Y|Mean| Body Acceleration| Y  |t|2|
|tBodyAcc-mean()-Z|Mean| Body Acceleration| Z  |t|2|
|tBodyAcc-std()-X|Standard Desviation|Body Acceleration| X  |t|2|
|tBodyAcc-std()-Y|Standard Desviation|Body Acceleration| Y  |t|2|
|tBodyAcc-std()-Z|Standard Desviation| Body Acceleration| Z  |t|2|
|tGravityAcc-mean()-X|Mean|Gravity Acceleration| X  |t|1|
|tGravityAcc-mean()-Y|Mean|Gravity Acceleration   | Y  |t|1|
|tGravityAcc-mean()-Z|Mean|Gravity Acceleration   | Z  |t|1|
|tGravityAcc-std()-X|Standard Desviation|Gravity Acceleration   | X  |t|1|
|tGravityAcc-std()-Y|Standard Desviation|Gravity Acceleration   | Y  |t|1|
|tGravityAcc-std()-Z|Standard Desviation|Gravity Acceleration   | Z  |t|1|
|tBodyAccJerk-mean()-X|Mean|Body Acceleration Jerk|X|t|4|
|tBodyAccJerk-mean()-Y|Mean|Body Acceleration Jerk   | Y  |t|4|
|tBodyAccJerk-mean()-Z|Mean|Body Acceleration Jerk   | Z  |t|4|
|tBodyAccJerk-std()-X|Standard Desviation|Body Acceleration Jerk   | X  |t|4|
|tBodyAccJerk-std()-Y|Standard Desviation|Body Acceleration Jerk   | Y  |t|4|
|tBodyAccJerk-std()-Z|Standard Desviation|Body Acceleration Jerk   | Z  |t|4|
|tBodyGyro-mean()-X|Mean|Body Angular Speed| X  |t   |3|
|tBodyGyro-mean()-Y|Mean|Body Angular Speed| Y  |t   |3|
|tBodyGyro-mean()-Z|Mean|Body Angular Speed| Z  |t   |3|
|tBodyGyro-std()-X|Standard Desviation|Body Angular Speed   | X  |t   |3|
|tBodyGyro-std()-Y|Standard Desviation|Body Angular Speed   | Y  |t   |3|
|tBodyGyro-std()-Z|Standard Desviation|Body Angular Speed   | Z  |t   |3|
|tBodyGyroJerk-mean()-X|Mean|Body Angular Acceleration(Jerk)|X   |t   |5|
|tBodyGyroJerk-mean()-Y|Mean|Body Angular Acceleration(Jerk)|Y   |t  |5|
|tBodyGyroJerk-mean()-Z|Mean|Body Angular Acceleration(Jerk)|Z   |t   |5|
|tBodyGyroJerk-std()-X|Standard Desviation|Body Angular Acceleration(Jerk)| X  |t   |5|
|tBodyGyroJerk-std()-Y|Standard Desviation|Body Angular Acceleration(Jerk)| Y  |t   |5|
|tBodyGyroJerk-std()-Z|Standard Desviation|Body Angular Acceleration(Jerk)| Z  |t   |5|
|tBodyAccMag-mean()|Mean|Body Acceleration Magnitude| NA  |t   |6|
|tBodyAccMag-std()|Standard Desviation|Body Acceleration Magnitude|NA  |t   |6|
|tGravityAccMag-mean()|Mean|Gravity Acceleration Magnitude|NA   |t   |8|
|tGravityAccMag-std()|Standard Desviation|Gravity Acceleration Magnitude| NA  |t  |8|
|tBodyAccJerkMag-mean()|Mean|Body Angular Acceleration Magnitude| NA  |t   |9|
|tBodyAccJerkMag-std()|Standard Desviation|Body Angular Acceleration Magnitude| NA  |t   |9|
|tBodyGyroMag-mean()|Mean|Body Angular Speed Magnitude   | NA  |t   |7|
|tBodyGyroMag-std()|Standard Desviation|Body Angular Speed Magnitude| NA  |t   |7|
|tBodyGyroJerkMag-mean()|Mean|Body Angular Speed Magnitude| NA  |t   |10|
|tBodyGyroJerkMag-std()|Standard Desviation|Body Angular Speed Magnitude|  NA |t   |10|
|fBodyAcc-mean()-X|Mean|Body Acceleration| X  |f   |15|
|fBodyAcc-mean()-Y|Mean|Body Acceleration| Y |f   |15|
|fBodyAcc-mean()-Z|Mean|Body Acceleration| Z |f   |15|
|fBodyAcc-std()-X|Standard Desviation|Body Acceleration   | X  |f   |15|
|fBodyAcc-std()-Y|Standard Desviation|Body Acceleration   | Y  |f   |15|
|fBodyAcc-std()-Z|Standard Desviation|Body Acceleration   | Z  |f   |15|
|fBodyAccJerk-mean()-X|Mean|Body Acceleration Jerk   |  X |f   |16|
|fBodyAccJerk-mean()-Y|Mean|Body Acceleration Jerk   |  Y |f   |16|
|fBodyAccJerk-mean()-Z|Mean|Body Acceleration Jerk   |  Z |f   |16|
|fBodyAccJerk-std()-X|Standard Desviation|Body Acceleration Jerk   | X  |f   |16|
|fBodyAccJerk-std()-Y|Standard Desviation|Body Acceleration Jerk   | Y  |f   |16|
|fBodyAccJerk-std()-Z|Standard Desviation|Body Acceleration Jerk   | Z  |f   |16|
|fBodyGyro-mean()-X|Mean|Body Acceleration   | X  |f  |17|
|fBodyGyro-mean()-Y|Mean|Body Acceleration   | Y  |f  |17|
|fBodyGyro-mean()-Z|Mean|Body Acceleration   | Z  |f  |17|
|fBodyGyro-std()-X|Standard Desviation|Body Acceleration   | X |f   |17|
|fBodyGyro-std()-Y|Standard Desviation|Body Acceleration   | Y |f   |17|
|fBodyGyro-std()-Z|Standard Desviation|Body Acceleration   | Z |f   |17|
|fBodyAccMag-mean()|Mean|Body Acceleration Magnitude   | NA |f   |11|
|fBodyAccMag-std()|Standard Desviation|Body Acceleration Magnitude   | NA |f   |11|
|fBodyBodyAccJerkMag-mean()|Mean|Body Acceleration Jerk Magnitude   | NA |f   |13|
|fBodyBodyAccJerkMag-std()|Standard Desviation|Body Acceleration Jerk Magnitude   | NA |f   |13|
|fBodyBodyGyroMag-mean()|Mean|Body Angular Speed Magnitude   | NA  |f   |12|
|fBodyBodyGyroMag-std()|Standard Desviation|Body Angular Speed Magnitude   | NA |f   |12|
|fBodyBodyGyroJerkMag-mean()|Mean|Body Angular Acceleration Magnitude   | NA |f   |14|
|fBodyBodyGyroJerkMag-std()|Standard Desviation|Body Angular Acceleration Magnitude   | NA |f   |14|


