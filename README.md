# Getting and Cleaning Data Course Project: Readme

The goal of this project is to take a set of averages and standard deviations of
biometric readings from a Samsung Galaxy S II phone and summarize them by
subject and activity.


## Data Description

These data were collected from 30 volunteers wearing a Samsung Galaxy S II phone
on their waists while they performed six activities (WALKING, WALKING_UPSTAIRS,
WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). Data from the accelerometer and
gyroscope were recorded during each of these activities.

Subjects' data were then randomly divided into training and test data sets,
stored in separate folders.

For this project, only the variables that are means and standard deviations of
these recordings are kept.

*Further information about the data set can be found in the Codebook.md file and
in the README.txt file in the UCI HAR Dataset folder.*

### Citation:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L.
Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using
Smartphones. 21th European Symposium on Artificial Neural Networks,
Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium
24-26 April 2013.

### Available from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


## Data Manipulation

To create the final tiday data set containing the variable means by subject and
activity, run the run_analysis.R script.

This script will
1. download and read in the raw data
2. merge the test and training data into a single data set
3. select the relevant data (means and standard deviations)
4. apply labels to the activity factor
5. apply appropriate variable names
6. calculate a mean for each of the retained variables for each subject and activity
7. save a tidy data set containing these means

The following packages are required to run the script successfully:
* reshape2