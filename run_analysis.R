# Getting and Cleaning Data Course Project

library(stringr)
library(dplyr)

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "Dataset.zip")

 unzip("Dataset.zip", list=TRUE)

#1. Merge the training and test sets to create one dataset
 
  # Read in features 
  features <- read.table("UCI HAR Dataset//features.txt")
    
  # Read in test files  
  
  test_files_list <- list.files("UCI HAR Dataset//test//", full.names=TRUE, pattern="*.txt")
  test_files <- lapply(test_files_list, read.table)
  names(test_files) <- list.files("UCI HAR Dataset//test//", full.names=FALSE, pattern="*.txt")
  
  #Read in train files 
  train_files_list <- list.files("UCI HAR Dataset//train//", full.names=TRUE, pattern="*.txt")
  train_files <- lapply(train_files_list, read.table)
  names(train_files) <- list.files("UCI HAR Dataset//train//", full.names=FALSE, pattern="*.txt")
  
  #Prepare test data for merge
    # Assign variable names to x_test 
    names(test_files$X_test.txt) <- features$V2
    
    # Add variable names and cbind subject_test
    names(test_files$subject_test.txt) <- "subject"
    
    names(test_files$y_test.txt) <- "activity"
    
    test_data <- cbind(test_files$X_test.txt, test_files$y_test.txt,test_files$subject_test.txt)
    
    #keep relevant columns
   test_data <- test_data %>% 
      select(subject, activity, contains("mean"), contains("std"))
  
  #Prepare train data for merge
    # Assign variable names to x_train
    names(train_files$X_train.txt) <- features$V2
    
    # Add variable names and cbind subject_train
    names(train_files$subject_train.txt) <- "subject"
    
    names(train_files$y_train.txt) <- "activity"
    
    train_data <- cbind(train_files$X_train.txt, train_files$y_train.txt,train_files$subject_train.txt)
    
    #keep relevant columns
    train_data <- train_data %>% 
      select(subject, activity, contains("mean"), contains("std"))
    
    # Merge datasets
    
    data <- rbind(test_data, train_data)
  
#2. Extract only the mean and standard deviation for each measurement 
      #(completed above)
    
    
#3. Use descriptive activity names to name the activities in the dataset
    #import activity names 
    activity_names <- read.table("UCI HAR Dataset\\activity_labels.txt")
    
    data$activity <- factor(data$activity, levels=sort(activity_names$V1), labels=(activity_names$V2))

#4. Appropriately label the data set with descriptive variable names
      
    #replace "t" and "f" with "Time" and "Freq" 
    names(data) <- sub("^t", "Time", names(data))
    names(data) <- sub("^f", "Freq", names(data))
    
    #remove "BodyBody" typo
    names(data) <- sub("BodyBody", "Body", names(data))
    
    #remove () 
    names(data) <- sub("\\()","", names(data))
    
#5. From the data set in step 4, create a second, independent tidy data set wit hteh average of each variable for reach activity and each subject
     tidydataset <-  data %>%
      group_by(subject, activity) %>%
      dplyr::summarize(across(everything(), list(mean)))
     
     
     
     
