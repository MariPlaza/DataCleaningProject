# Step 0: SetUP
    #Check if the required packaged are installed and upload them. 
        list.of.packages <- c("plyr", "reshape2", "tidyr")
        new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
        if(length(new.packages)) install.packages(new.packages)
        library(plyr)
        library(reshape2)
        library(tidyr)
    #Establish initial working directory
        directory <- '/' #Replace here your working directory. 
        setwd (directory)
    #Download File from Internet source and unzip its content. 
        url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        ZipFile <-"getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        filepath <- file.path(getwd(), ZipFile)
        download.file(url, filepath)
        unzip(ZipFile)
    #Read Information from txt files. 
        ActivityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)
        feature_label <- read.table("./UCI HAR Dataset/features.txt")
        Subject_Test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
        Subject_Train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
        X_Test <- read.table("./UCI HAR Dataset/test/X_test.txt")
        X_Train <- read.table("./UCI HAR Dataset/train/X_train.txt")
        Y_Test <- read.table("./UCI HAR Dataset/test/y_test.txt")
        Y_Train <- read.table("./UCI HAR Dataset/train/y_train.txt")
# Step 1: Merges the training and the test sets to create one data set.
        X_Consolidated <- rbind(X_Test, X_Train)
        Y_Consolidated <- rbind(Y_Test, Y_Train)
        Subject_Consolidated <- rbind(Subject_Test, Subject_Train)
# Step 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
        LogicalVector <- grepl("mean|std",feature_label[,2])
        X_Consolidated <- subset(X_Consolidated,select=LogicalVector)
# Step 3: Uses descriptive activity names to name the activities in the data set
        NAct <- nrow(ActivityLabels)
        for (i in 1: NAct) {
            Y_Consolidated$V1[Y_Consolidated$V1 == ActivityLabels[i,1]] <- ActivityLabels[i,2]
        }
# Step 4: Appropriately labels the data set with descriptive variable names. 
        feature_label <- as.vector(as.matrix(feature_label[,2]))
        feature_label<- feature_label[c(LogicalVector)]
        X_Consolidated <- setNames(X_Consolidated, c(feature_label))
        Y_Consolidated <- setNames(Y_Consolidated, c("Activity"))
        Subject_Consolidated <- setNames(Subject_Consolidated, c("Subject"))
        Data_Consolidated <- cbind(Subject_Consolidated, Y_Consolidated, X_Consolidated)
# Step5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
        tidy_Data <- melt(Data_Consolidated, id.vars=c("Subject", "Activity"))
        tidy_Data <- ddply(tidy_Data, c("Subject", "Activity", "variable"), summarise, mean = mean(value))
        tidy_Data <- spread(tidy_Data, variable, mean)
    # Write tidy_Data to .txt file        
        write.table(tidy_Data, "tidy_data.txt",row.name=FALSE)