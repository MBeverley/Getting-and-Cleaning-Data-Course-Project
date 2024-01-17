# Getting and Cleaning Data Course Project

library(stringr)

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "Dataset.zip")

 unzip("Dataset.zip", list=TRUE)

 
# Read in test files  
test_files_list <- list.files("UCI HAR Dataset//test//Inertial Signals//", full.names=TRUE)

test_files <- lapply(test_files_list, read.table) 

test_files_list2 <- list.files("UCI HAR Dataset//test//", full.names=TRUE, pattern="*.txt")
test_files2 <- lapply(test_files_list2, read.table)
names(test_file2) <- list.files(path=test_files_list <- list.files("UCI HAR Dataset//test//", full.names=FALSE))


names(test_files) <- list.files(path="UCI HAR Dataset//test//Inertial Signals//", full.names=FALSE)

# Read in train files 
train_files_list <- list.files("UCI HAR Dataset//train//Inertial Signals//", full.names=TRUE)

train_files <- lapply(train_files_list, read.table) 

names(train_files) <- list.files(path="UCI HAR Dataset//train//Inertial Signals//", full.names=FALSE)
