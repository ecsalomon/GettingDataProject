# Codebook for Getting and Cleaning Data Course Project Tidy Data Set


## The Data

These data were collected from 30 volunteers wearing a Samsung Galaxy S II phone
on their waists while they performed six activities (WALKING, WALKING_UPSTAIRS,
WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). Data from the accelerometer and
gyroscope were recorded during each of these activities.

Subjects' data were then randomly divided into training and test data sets,
stored in separate folders.

For this project, only the variables that are means and standard deviations of
these recordings are kept. **Units**: These variables were normalized and
bounded within [-1, 1].

Several recordings of each variable were made for each participant during each
activity. The final, tidy data set (tidyData.txt), includes the *average* for
each of these variables by participant and activity.

These are recorded in the tidy data set as:

| Variable Name        | Description |
| ------------- |-------------|
|"subject"| Subject ID number |
|"activity"| Activity being peformed |
|"tBodyAccmeanX"| Mean of mean body linear acceleration on the X-axis | 
|"tBodyAccmeanY"| Mean of mean body linear acceleration on the Y-axis |
|"tBodyAccmeanZ"| Mean of mean body linear acceleration on the Z-axis |
|"tBodyAccstdX"| Mean of standard deviation of body linear acceleration on the X-axis |
|"tBodyAccstdY"| Mean of standard deviation of body linear acceleration on the Y-axis |
|"tBodyAccstdZ"| Mean of standard deviation of body linear acceleration on the Z-axis |
|"tGravityAccmeanX"| Mean of mean acceleration due to gravity on the X-axis |
|"tGravityAccmeanY"| Mean of mean acceleration due to gravity on the Y-axis |
|"tGravityAccmeanZ"| Mean of mean acceleration due to gravity on the Z-axis |
|"tGravityAccstdX"| Mean of standard deviation of acceleration due to gravity on the X-axis |
|"tGravityAccstdY"| Mean of standard deviation of acceleration due to gravity on the Y-axis |
|"tGravityAccstdZ"| Mean of standard deviation of acceleration due to gravity on the Z-axis |
|"tBodyAccJerkmeanX"| Mean of mean body linear acceleration jerk on the X-axis |
|"tBodyAccJerkmeanY"| Mean of mean body linear acceleration jerk on the Y-axis |
|"tBodyAccJerkmeanZ"| Mean of mean body linear acceleration jerk on the Z-axis |
|"tBodyAccJerkstdX"| Mean of standard deviation of body linear acceleration jerk on the X-axis |
|"tBodyAccJerkstdY"| Mean of standard deviation of body linear acceleration jerk on the Y-axis |
|"tBodyAccJerkstdZ"| Mean of standard deviation of body linear acceleration jerk on the Z-axis |
|"tBodyGyromeanX"| Mean of mean body angular velocity on the X-axis |
|"tBodyGyromeanY"| Mean of mean body angular velocity on the Y-axis |
|"tBodyGyromeanZ"| Mean of mean body angular velocity on the X-axis |
|"tBodyGyrostdX"| Mean of standard deviation of body angular velocity on the X-axis |
|"tBodyGyrostdY"| Mean of standard deviation of body angular velocity on the Y-axis |
|"tBodyGyrostdZ"| Mean of standard deviation of body angular velocity on the Z-axis |
|"tBodyGyroJerkmeanX"| Mean of mean body angular velocity jerk on the X-axis |
|"tBodyGyroJerkmeanY"| Mean of mean body angular velocity jerk on the Y-axis |
|"tBodyGyroJerkmeanZ"| Mean of mean body angular velocity jerk on the Z-axis |
|"tBodyGyroJerkstdX"| Mean of standard deviation of body angular velocity jerk on the X-axis |
|"tBodyGyroJerkstdY"| Mean of standard deviation of body angular velocity jerk on the Y-axis |
|"tBodyGyroJerkstdZ"| Mean of standard deviation of body angular velocity jerk on the Z-axis |
|"tBodyAccMagmean"| Mean of mean body linear acceleration magnitude | 
|"tBodyAccMagstd"| Mean of standard deviation of body linear acceleration magnitude | 
|"tGravityAccMagmean"| Mean of mean acceleration due to gravity magnitude | 
|"tGravityAccMagstd"| Mean of standard deviation of acceleration due to gravity magnitude | 
|"tBodyAccJerkMagmean"| Mean of mean body linear acceleration jerk magnitude | 
|"tBodyAccJerkMagstd"| Mean of standard deviation of body linear acceleration jerk magnitude | 
|"tBodyGyroMagmean"| Mean of mean body angular velocity magnitude | 
|"tBodyGyroMagstd"| Mean of standard deviation of body angular velocity magnitude | 
|"tBodyGyroJerkMagmean"| Mean of mean body angular velocity jerk magnitude | 
|"tBodyGyroJerkMagstd"| Mean of standard deviation of body angular velocity jerk magnitude | 
|"fBodyAccmeanX"| Mean of mean Fast Fourier Transformed body angular velocity magnitude on the X-axis | 
|"fBodyAccmeanY"| Mean of mean Fast Fourier Transformed body angular velocity magnitude on the Y-axis | 
|"fBodyAccmeanZ"| Mean of mean Fast Fourier Transformed body angular velocity magnitude on the Z-axis | 
|"fBodyAccstdX"| Mean of standard deviation of Fast Fourier Transformed body angular velocity magnitude on the X-axis | 
|"fBodyAccstdY"| Mean of standard deviation of Fast Fourier Transformed body angular velocity magnitude on the Y-axis | 
|"fBodyAccstdZ"| Mean of standard deviation of Fast Fourier Transformed body angular velocity magnitude on the Z-axis | 
|"fBodyAccmeanFreqX"| Mean of weighted average of the frequency components of body linear acceleration on the X-axis |
|"fBodyAccmeanFreqY"| Mean of weighted average of the frequency components of body linear acceleration on the Y-axis |
|"fBodyAccmeanFreqZ"| Mean of weighted average of the frequency components of body linear acceleration on the Z-axis |
|"fBodyAccJerkmeanX"| Mean of mean Fast Fourier Transformed body linear acceleration jerk on the X-axis |
|"fBodyAccJerkmeanY"| Mean of mean Fast Fourier Transformed body linear acceleration jerk on the Y-axis |
|"fBodyAccJerkmeanZ"| Mean of mean Fast Fourier Transformed body linear acceleration jerk on the Z-axis |
|"fBodyAccJerkstdX"| Mean of standard deviation of Fast Fourier Transformed body linear acceleration jerk on the X-axis |
|"fBodyAccJerkstdY"| Mean of standard deviation of Fast Fourier Transformed body linear acceleration jerk on the Y-axis |
|"fBodyAccJerkstdZ"| Mean of standard deviation of Fast Fourier Transformed body linear acceleration jerk on the Z-axis |
|"fBodyAccJerkmeanFreqX"| Mean of weighted average of the frequency components of body linear acceleration jerk on the X-axis |
|"fBodyAccJerkmeanFreqY"| Mean of weighted average of the frequency components of body linear acceleration jerk on the Y-axis |
|"fBodyAccJerkmeanFreqZ"| Mean of weighted average of the frequency components of body linear acceleration jerk on the Z-axis |
|"fBodyGyromeanX"| Mean of mean Fast Fourier Transformed body angular velocity on the X-axis |
|"fBodyGyromeanY"| Mean of mean Fast Fourier Transformed body angular velocity on the Y-axis |
|"fBodyGyromeanZ"| Mean of mean Fast Fourier Transformed body angular velocity on the Z-axis |
|"fBodyGyrostdX"| Mean of standard deviation of Fast Fourier Transformed body angular velocity on the X-axis |
|"fBodyGyrostdY"| Mean of standard deviation of Fast Fourier Transformed body angular velocity on the Y-axis |
|"fBodyGyrostdZ"| Mean of standard deviation of Fast Fourier Transformed body angular velocity on the Z-axis |
|"fBodyGyromeanFreqX"| Mean of weighted average of the frequency components of body angular velocity on the X-axis |
|"fBodyGyromeanFreqY"| Mean of weighted average of the frequency components of body angular velocity on the Y-axis |
|"fBodyGyromeanFreqZ"| Mean of weighted average of the frequency components of body angular velocity on the Z-axis |
|"fBodyAccMagmean"| Mean of mean Fast Fourier Transformed body linear acceleration magnitude |
|"fBodyAccMagstd"| Mean of standard deviation of Fast Fourier Transformed body linear acceleration magnitude |
|"fBodyAccMagmeanFreq"| Mean of weighted average of the frequency components of body angular velocity magnitude |
|"fBodyBodyAccJerkMagmean"| Mean of mean Fast Fourier Transformed body linear acceleration jerk magnitude |
|"fBodyBodyAccJerkMagstd"| Mean of standard deviation of Fast Fourier Transformed body linear acceleration jerk magnitude |
|"fBodyBodyAccJerkMagmeanFreq"| Mean of weighted average of frequency components of body linear acceleration jerk magnitude |
|"fBodyBodyGyroMagmean"| Mean of mean Fast Fourier Transformed body angular velocity magnitude |
|"fBodyBodyGyroMagstd"| Mean of standard deviation of Fast Fourier Transformed body angular velocity magnitude |
|"fBodyBodyGyroMagmeanFreq"| Mean of wieghted average of frequency components of body angular velocity magnitude |
|"fBodyBodyGyroJerkMagmean"| Mean of mean Fast Fourier Transformed body angular velocity jerk magnitude |
|"fBodyBodyGyroJerkMagstd"| Mean of standard deviation of Fast Fourier Transformed body angular velocity jerk magnitude |
|"fBodyBodyGyroJerkMagmeanFreq"| Mean of weighted average of frequency components of body angular velocity jerk magnitude |



*Further information about the data set can be found in the UCI HAR Dataset
folder.*

## Citation for original data:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L.
Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using
Smartphones. 21th European Symposium on Artificial Neural Networks,
Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium
24-26 April 2013.

## Original data available from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
