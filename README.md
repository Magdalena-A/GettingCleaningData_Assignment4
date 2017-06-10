

Script 'run_analysis.R'
=======================

The purpose of this script is to combine available data spread over various files into one data set and clean up the data, e.g. renaming it, so that a tidy data set is achieved containing all mean and standard deviation values of the measurmements. Based on this data set a second tidy data set is created that calculates the mean for all mean and standard deviation measurements for each subject and activity. 

Disclaimer:
-----------
The script is based on the assumption that the working directory contains all the original data files to work with:

- train; folder containing
 -- X_train.txt
 -- y_train.txt
 -- subject_train.txt
- test; folder containing
 -- X_test.txt
 -- y_test.txt
 -- subject_test.txt
- features.txt
- activity_labels.txt


The script executes the following steps:
----------------------------------------
1. It merges the training ('X_train.txt') and test ('X_test.txt') sets to create only one data set with all data, including measured data, activity labels and subject IDs.

	First, the train and test data sets, training and test labels and training and test subject IDs are each being combined by rows, and labeled with column names. 
	Then the combined data sets, labels and subject IDs are combined by colums to create a data set containing all data.

2. Next the script createas a new data set only containing measurements on the mean and standard deviation for each measurement. It does so by subsetting all columns that contain 'mean()' or 'std()', while keeping the subject IDs and activities untouched.

	Note: only when the mean and standard deviation were applied to variables measured the mean was extracted, other mean values that were applied to the angle variable are not being included in this step.

3. Next the script renames activity labels and column names to make them descriptive:
- It replaces the activity labels to indicate the activities measured (1 to 6) with descriptive activity names ('walking', 'standing', etc.)
- It replaces column names with descriptive names, such as: replacing 'f' with 'FrequencySignal' or 'Mag' with 'Magnitude'

5. Finally, the script creates another tidy data set based on the data set in the previous steps, that contains the mean value for all variables, for each activity and each subject.



