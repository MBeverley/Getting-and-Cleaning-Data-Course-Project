---
title: "CodeBook"
output: html_document
date: "2024-01-17"
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

List of variables: 

|codebook                               |description |
|:--------------------------------------|:-----|
|subject                                |subject participating (1-30)      |
|activity                               |activity       |
|TimeBodyAcc-mean-X_1                   |      |
|TimeBodyAcc-mean-Y_1                   |      |
|TimeBodyAcc-mean-Z_1                   |      |
|TimeGravityAcc-mean-X_1                |      |
|TimeGravityAcc-mean-Y_1                |      |
|TimeGravityAcc-mean-Z_1                |      |
|TimeBodyAccJerk-mean-X_1               |      |
|TimeBodyAccJerk-mean-Y_1               |      |
|TimeBodyAccJerk-mean-Z_1               |      |
|TimeBodyGyro-mean-X_1                  |      |
|TimeBodyGyro-mean-Y_1                  |      |
|TimeBodyGyro-mean-Z_1                  |      |
|TimeBodyGyroJerk-mean-X_1              |      |
|TimeBodyGyroJerk-mean-Y_1              |      |
|TimeBodyGyroJerk-mean-Z_1              |      |
|TimeBodyAccMag-mean_1                  |      |
|TimeGravityAccMag-mean_1               |      |
|TimeBodyAccJerkMag-mean_1              |      |
|TimeBodyGyroMag-mean_1                 |      |
|TimeBodyGyroJerkMag-mean_1             |      |
|FreqBodyAcc-mean-X_1                   |      |
|FreqBodyAcc-mean-Y_1                   |      |
|FreqBodyAcc-mean-Z_1                   |      |
|FreqBodyAcc-meanFreq-X_1               |      |
|FreqBodyAcc-meanFreq-Y_1               |      |
|FreqBodyAcc-meanFreq-Z_1               |      |
|FreqBodyAccJerk-mean-X_1               |      |
|FreqBodyAccJerk-mean-Y_1               |      |
|FreqBodyAccJerk-mean-Z_1               |      |
|FreqBodyAccJerk-meanFreq-X_1           |      |
|FreqBodyAccJerk-meanFreq-Y_1           |      |
|FreqBodyAccJerk-meanFreq-Z_1           |      |
|FreqBodyGyro-mean-X_1                  |      |
|FreqBodyGyro-mean-Y_1                  |      |
|FreqBodyGyro-mean-Z_1                  |      |
|FreqBodyGyro-meanFreq-X_1              |      |
|FreqBodyGyro-meanFreq-Y_1              |      |
|FreqBodyGyro-meanFreq-Z_1              |      |
|FreqBodyAccMag-mean_1                  |      |
|FreqBodyAccMag-meanFreq_1              |      |
|FreqBodyAccJerkMag-mean_1              |      |
|FreqBodyAccJerkMag-meanFreq_1          |      |
|FreqBodyGyroMag-mean_1                 |      |
|FreqBodyGyroMag-meanFreq_1             |      |
|FreqBodyGyroJerkMag-mean_1             |      |
|FreqBodyGyroJerkMag-meanFreq_1         |      |
|angle(tBodyAccMean,gravity)_1          |      |
|angle(tBodyAccJerkMean),gravityMean)_1 |      |
|angle(tBodyGyroMean,gravityMean)_1     |      |
|angle(tBodyGyroJerkMean,gravityMean)_1 |      |
|angle(X,gravityMean)_1                 |      |
|angle(Y,gravityMean)_1                 |      |
|angle(Z,gravityMean)_1                 |      |
|TimeBodyAcc-std-X_1                    |      |
|TimeBodyAcc-std-Y_1                    |      |
|TimeBodyAcc-std-Z_1                    |      |
|TimeGravityAcc-std-X_1                 |      |
|TimeGravityAcc-std-Y_1                 |      |
|TimeGravityAcc-std-Z_1                 |      |
|TimeBodyAccJerk-std-X_1                |      |
|TimeBodyAccJerk-std-Y_1                |      |
|TimeBodyAccJerk-std-Z_1                |      |
|TimeBodyGyro-std-X_1                   |      |
|TimeBodyGyro-std-Y_1                   |      |
|TimeBodyGyro-std-Z_1                   |      |
|TimeBodyGyroJerk-std-X_1               |      |
|TimeBodyGyroJerk-std-Y_1               |      |
|TimeBodyGyroJerk-std-Z_1               |      |
|TimeBodyAccMag-std_1                   |      |
|TimeGravityAccMag-std_1                |      |
|TimeBodyAccJerkMag-std_1               |      |
|TimeBodyGyroMag-std_1                  |      |
|TimeBodyGyroJerkMag-std_1              |      |
|FreqBodyAcc-std-X_1                    |      |
|FreqBodyAcc-std-Y_1                    |      |
|FreqBodyAcc-std-Z_1                    |      |
|FreqBodyAccJerk-std-X_1                |      |
|FreqBodyAccJerk-std-Y_1                |      |
|FreqBodyAccJerk-std-Z_1                |      |
|FreqBodyGyro-std-X_1                   |      |
|FreqBodyGyro-std-Y_1                   |      |
|FreqBodyGyro-std-Z_1                   |      |
|FreqBodyAccMag-std_1                   |      |
|FreqBodyAccJerkMag-std_1               |      |
|FreqBodyGyroMag-std_1                  |      |
|FreqBodyGyroJerkMag-std_1              |      |



The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 'Time' to denote time) 
were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these 
three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag.
 (Note the 'Freq' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean
