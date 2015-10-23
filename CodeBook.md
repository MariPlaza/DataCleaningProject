## CODE BOOK

###Legend
- **NA:** Not Applicable
- **rad/s:** radians/second
- **g:** gravity units. 
- **X:** Values measured in the X-Axis
- **Y:** Values measured in the Y-Axis
- **Z:** Values measured in the Z-Axis
- **Jerk:** Time rate of change of acceleration. It is the acceleration of the acceleration. More information in this link
http://www.mmsonline.com/articles/understanding-jerk-control

###

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix ‘t’ to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the ‘f’ to indicate frequency domain signals).
These signals were used to estimate variables of the feature vector for each pattern:‘-XYZ’ is used to denote 3-axial signals in the X, Y and Z directions.


time domain signals body acceleration Jerk signals mean x-axis


### Variables Definition
|Variable Name   | Units  | Description  | Axis| Source RawData Type | Source RawData Type Detail |
|---|---|---|---|---|---|
|Subject| NA  | Describe the subject number that perform the activity  | NA  | Measure  |Data recorded directly from experiment|
|Activity|  NA  | Describe the activity perfomed when the data was recorded  | NA  | Measure  |Data recorded directly from experiment|
|tBodyAcc-mean()-X| g  | Mean of Body Acceleration Signal-X Axis | X  |Calculation|Total Accelaration - Gravity|
|tBodyAcc-mean()-Y| g  | Mean of Body Acceleration Signal-Y Axis  | Y  |Calculation|Total Accelaration - Gravity|
|tBodyAcc-mean()-Z| g  | Mean of Body Acceleration Signal-Z Axis  | Z  |Calculation|Total Accelaration - Gravity|
|tBodyAcc-std()-X| g | Standard Desviation of Body Acceleration Signal-X Axis  | X  |Calculation|Total Accelaration - Gravity|
|tBodyAcc-std()-Y| g  | Standard Desviation of Body Acceleration Signal-Y Axis  | Y  |Calculation|Total Accelaration - Gravity|
|tBodyAcc-std()-Z| g  | Standard Desviation of Body Acceleration Signal-Z Axis  | Z  |Calculation|Total Accelaration - Gravity|
|tGravityAcc-mean()-X|   | X  |   |   |
|tGravityAcc-mean()-Y|   | Y  |   |   |
|tGravityAcc-mean()-Z|   | Z  |   |   |
|tGravityAcc-std()-X|   |   | X  |   |
|tGravityAcc-std()-Y|   |   | Y  |   |
|tGravityAcc-std()-Z|   |   | Z  |   |
|tBodyAccJerk-mean()-X| g  | Mean of Body Acceleration Signal-X Axis  | X  |   |
|tBodyAccJerk-mean()-Y| g  |   | Y  |   |
|tBodyAccJerk-mean()-Z| g  |   | Z  |   |
|tBodyAccJerk-std()-X| g  |   | X  |   |
|tBodyAccJerk-std()-Y| g  |   | Y  |   |
|tBodyAccJerk-std()-Z| g  |   | Z  |   |
|tBodyGyro-mean()-X|rad/s|   | X  |   |
|tBodyGyro-mean()-Y|rad/s|   | Y  |   |
|tBodyGyro-mean()-Z|rad/s|   | Z  |   |
|tBodyGyro-std()-X|rad/s|   | X  |   |
|tBodyGyro-std()-Y|rad/s|   | Y  |   |
|tBodyGyro-std()-Z|rad/s|   | Z  |   |
|tBodyGyroJerk-mean()-X|rad/s| X  |   |   |
|tBodyGyroJerk-mean()-Y|rad/s| Y  |   |   |
|tBodyGyroJerk-mean()-Z|rad/s| Z  |   |   |
|tBodyGyroJerk-std()-X|rad/s|   | X  |   |
|tBodyGyroJerk-std()-Y|rad/s|   | Y  |   |
|tBodyGyroJerk-std()-Z|rad/s|   | Z  |   |
|tBodyAccMag-mean()|g|   | NA  |   |
|tBodyAccMag-std()|g|   | NA  |   |
|tGravityAccMag-mean()|   | NA  |   |   |
|tGravityAccMag-std()|   | NA  |   |   |
|tBodyAccJerkMag-mean()|g|   | NA  |   |
|tBodyAccJerkMag-std()|g|   | NA  |   |
|tBodyGyroMag-mean()|rad/s|   | NA  |   |
|tBodyGyroMag-std()|rad/s|   | NA  |   |
|tBodyGyroJerkMag-mean()|rad/s|   | NA  |   |
|tBodyGyroJerkMag-std()|rad/s|   |  NA |   |
|fBodyAcc-mean()-X|g|   | X  |   |
|fBodyAcc-mean()-Y|g|   | Y |   |
|fBodyAcc-mean()-Z|g|   | Z |   |
|fBodyAcc-std()-X|g|   | X  |   |
|fBodyAcc-std()-Y|g|   | Y  |   |
|fBodyAcc-std()-Z|g|   | Z  |   |
|fBodyAcc-meanFreq()-X|g|   |  X |   |
|fBodyAcc-meanFreq()-Y|g|   |  Y |   |
|fBodyAcc-meanFreq()-Z| g  |   |  Z |   |
|fBodyAccJerk-mean()-X| g  |   |  X |   |
|fBodyAccJerk-mean()-Y| g  |   |  Y |   |
|fBodyAccJerk-mean()-Z| g  |   |  Z |   |
|fBodyAccJerk-std()-X| g  |   | X  |   |
|fBodyAccJerk-std()-Y| g  |   | Y  |   |
|fBodyAccJerk-std()-Z| g  |   | Z  |   |
|fBodyAccJerk-meanFreq()-X| g |   |  X |   |
|fBodyAccJerk-meanFreq()-Y| g  |   | Y  |   |
|fBodyAccJerk-meanFreq()-Z| g  |   | Z  |   |
|fBodyGyro-mean()-X| rad/s  |   | X  |   |
|fBodyGyro-mean()-Y| rad/s  |   | Y  |   |
|fBodyGyro-mean()-Z| rad/s  |   | Z  |   |
|fBodyGyro-std()-X|rad/s|   | X |   |
|fBodyGyro-std()-Y|rad/s|   | Y |   |
|fBodyGyro-std()-Z|rad/s|   | Z |   |
|fBodyGyro-meanFreq()-X|rad/s|   | X |   |
|fBodyGyro-meanFreq()-Y|rad/s|   | Y |   |
|fBodyGyro-meanFreq()-Z|rad/s|   | Z |   |
|fBodyAccMag-mean()| g  |   | NA |   |
|fBodyAccMag-std()|  g |   | NA |   |
|fBodyAccMag-meanFreq()| g  |   | NA |   |
|fBodyBodyAccJerkMag-mean()| g  |   | NA |   |
|fBodyBodyAccJerkMag-std()|  g |   | NA |   |
|fBodyBodyAccJerkMag-meanFreq()| g  |  | NA |   |
|fBodyBodyGyroMag-mean()|rad/s|   | NA  |   |
|fBodyBodyGyroMag-std()|rad/s|   | NA |   |
|fBodyBodyGyroMag-meanFreq()|rad/s|   | NA |   |
|fBodyBodyGyroJerkMag-mean()|rad/s|   | NA |   |
|fBodyBodyGyroJerkMag-std()|rad/s|   | NA |   |
|fBodyBodyGyroJerkMag-meanFreq()|rad/s|   | NA  |   |

