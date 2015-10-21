# Step 0: Establish working directory and upload neccesary libraries and read Information from txt files. 
#list.of.packages <- c("ggplot2", "Rcpp")
#new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
#if(length(new.packages)) install.packages(new.packages)
directory <- '/Users/Marines/Documents/6.-R/Cursera/Data_Cleaning/Project'
setwd (directory)
library(dplyr)
library(plyr)
library(reshape2)
library(tidyr)
#Download File from Internet source. 
#download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
ActivityLabels <- read.table("activity_labels.txt", stringsAsFactors = FALSE)
feature_label <- read.table("features.txt")
Subject_Test <- read.table("subject_test.txt")
Subject_Train <- read.table("subject_train.txt")
X_Test <- read.table("X_test.txt")
X_Train <- read.table("X_train.txt")
Y_Test <- read.table("y_test.txt")
Y_Train <- read.table("y_train.txt")
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
# Step5: From the data set in step 4, creates a second, independent tidy data set 
#        with the average of each variable for each activity and each subject.
Data_Consolidated$Subject <- as.factor(Data_Consolidated$Subject)
Data_Consolidated$Activity <- as.factor(Data_Consolidated$Activity)
tidy_Data <- melt(Data_Consolidated, id.vars=c("Subject", "Activity"))
tidy_Data <- ddply(tidy_Data, c("Subject", "Activity", "variable"), summarise, mean = mean(value))
tidy_Data <- spread(tidy_Data, variable, mean)
write.table(tidy_Data, "tidy_data.txt",row.name=FALSE)
#http://stackoverflow.com/questions/6373277/git-sync-local-repo-with-remote-one