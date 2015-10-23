##  DataCleaningProject
Data Cleaning Project Submission

## PURPOSE OF THE CODE AND INTRODUCTION TO THE DATA SET. 
The purpose of this code is to prepare a tidy data for the experiment "Human Activity Recognition Using Smartphones Data Set" perfomed by Smartlab - Non Linear Complex Systems Laboratory. The complete explanation and dataset for this experiment is available at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. 

## STRUCTURE OF THE DATA SET PROVIDED
The original Data Set provides 28 txt files organized in several sub-folders. Nonetheless, not all of them are used in the code because just a few are relevants for the tidy data construction. The used documents are:

|Document Name   | Variable| URL  | Description  | 
|---|---|---|---|
|activity_labels.txt|ActivityLabels|./UCI HAR Dataset/(Main Folder)|Contains the labels of the activities corresponding to each activity code.|
|features.txt|feature_label|./UCI HAR Dataset/(Main Folder)|Contains the name of the features calculated in the X file|
|subject_test.txt|Subject_Test|./UCI HAR Dataset/test/|Contain the subjects from the test set. Its range is from 1 to 30.|   
|subject_train.txt|Subject_Train|./UCI HAR Dataset/train/|Contain the subjects from the train set. Its range is from 1 to 30.|   
|X_test.txt|X_Test|./UCI HAR Dataset/test/|Contain the values/variables from the test set|   
|X_train.txt|X_Train|./UCI HAR Dataset/train/|Contain the values/variables from the train set|   
|y_test.txt|Y_Test|./UCI HAR Dataset/test/|Contain the activity code from the test set|   
|y_train.txt|Y_Train|./UCI HAR Dataset/train/|Contain the activity code from the train set|   

Please view the section after Explanation of the Code for further details of the data and variables contained in the dataset. 

## EXPLANATION OF THE CODE
The code is documented directly in the R File, nonetheless, here is provided a general structure of the code for better understanding. 

The code is divided in 6 Steps:
#### Step 0: Setup. 
	This step performs the basic procedures to set-up the working environment to process appropiately the data. These procedure are: 
	Checks if the neccesary libraries are installed and if not install them. It also upload all of them. 
	Establish initial working directory
    	Download File from Internet source and read its content. 
    	Read Information from txt files.         
#### Step 1: 
	Create 3 data sets, merging the training and the test sets. The 3 datasets created are X (effective values), Y (activity label) and Subject(subject that runned the experiment).
#### Step 2: 
	Extracts only the measurements on the mean and standard deviation for each measurement from the X Consolidated vector. 
#### Step 3: 
	Replace the code of the activities in dataframe Y for the corresponding descriptive activity names. 
#### Step 4: 
	Name appropriately the columns of each dataframe and merge these dataframe through cbind to create the data consolidated dataframe. 
#### Step 5:  
	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. To perform this operation, use the function melt to create a long dataset of all variables in the Data_Consolidated dataframe, then using the function ddply this step calculate the mean for each variable summarized by subject and activity, and finally use spread to get again a wide form of this tidy data. Finally the resulted dataframe is writed in the tidy_data.txt file. 

## DETAILED STRUCTURE OF THE DATA-SET. 
The structure of the sub-folders and the txt files contained in them is this:
### MainFolder: 
Contains 2 sub-folders and 4 .txt files. The information contained in the .txt file is the following: 
* **README.txt:** Explains the experiment and the dataset provided. 
* **activity_labels.txt:** Contains the labels of the activities corresponding to each activity code. 
* **features.txt:** Contains the name of the features calculated in the X file
* **features_info.txt:** describe the selection of the features 
#### MainFolder>test:
* **subject_test.txt:** Contains the subjects from the test set
* **X_test.txt:** Contains the values/variables from the test set
* **y_test.txt:** Contains the activity code from the test set
##### MainFolder>test>Inertial Signals:
Contains 9 files, each file represents a 128 vector from the **test set** with data or calculation measured by the gyroscope or accelerometer from the smartphone.
|Variable|Get from|Unit|File Name -X Axis|File Name -Y Axis| File Name -Z Axis| 
|---|---|---|---|---|---|
|Acceleration Signal|Measured with Accelerometer|g|total_acc_x_test.txt|total_acc_y_test.txt|total_acc_z_test.txt| 
|Body Acceleration Signal|Formula: Total_Acc-g|g|body_acc_x_test.txt|body_acc_y_test.txt|body_acc_z_test.txt| 
|Angular velocity|Measured with gyroscope|radians/second|body_gyro_x_test.txt|body_gyro_y_test.txt|body_gyro_z_test.txt| 
#### MainFolder>train:
* **subject_train.txt:** Contains the subjects from the train set
* **X_train.txt:** Contains the values/variables from the train set
* **y_train.txt:** Contains the activity code from the train set
##### MainFolder>train>Inertial Signals:
Contains 9 files, each file represents a 128 vector from the **train set** with data or calculation measured by the gyroscope or accelerometer from the smartphone.
|Variable|Get from|Unit|File Name -X Axis|File Name -Y Axis| File Name -Z Axis| 
|---|---|---|---|---|---|
|Acceleration Signal|Measured with Accelerometer|g|total_acc_x_train.txt|total_acc_y_train.txt|total_acc_z_train.txt| 
|Body Acceleration Signal|Formula: Total_Acc-g|g|body_acc_x_train.txt|body_acc_y_train.txt|body_acc_z_train.txt| 
|Angular velocity|Measured with gyroscope|radians/second|body_gyro_x_train.txt|body_gyro_y_train.txt|body_gyro_z_train.txt| 
