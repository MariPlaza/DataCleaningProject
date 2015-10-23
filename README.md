##  DataCleaningProject
Data Cleaning Project Submission

## PURPOSE OF THE CODE AND INTRODUCTION TO THE DATA SET. 
The purpose of this code is to prepare a tidy data for the experiment "Human Activity Recognition Using Smartphones Data Set" perfomed by Smartlab - Non Linear Complex Systems Laboratory. The complete explanation and dataset for this experiment is available at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. 

## STRUCTURE OF THE DATA SET PROVIDED
The original Data Set provides 28 txt files organized in several sub-folders. Please view the CodeBook.md for further details of the data and variables contained in the dataset. 

## EXPLANATION OF THE CODE
The code is documented directly in the R File, nonetheless, here is provided a general structure of the code for better understanding. 

The code is divided in 6 Steps:
Step 0: Setup. This step performs the basic procedures to set-up the working environment to process appropiately the data. These procedure are: 
	Checks if the neccesary libraries are installed and if not install them. It also upload all of them. 
	Establish initial working directory
    	Download File from Internet source and read its content. 
    	Read Information from txt files.         
# Step 1: Create 3 data sets, merging the training and the test sets. The 3 datasets created are X (effective values), Y (activity label) and Subject(subject that runned the experiment).
# Step 2: Extracts only the measurements on the mean and standard deviation for each measurement from the X Consolidated vector. 
# Step 3: Replace the code of the activities in dataframe Y for the corresponding descriptive activity names. 
# Step 4: Name appropriately the columns of each dataframe and merge these dataframe through cbind to create the data consolidated dataframe. 
# Step5:  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. To perform this operation, use the function melt to create a long dataset of all variables in the Data_Consolidated dataframe, then using the function ddply this step calculate the mean for each variable summarized by subject and activity, and finally use spread to get again a wide form of this tidy data. Finally the resulted dataframe is writed in the tidy_data.txt file. 
