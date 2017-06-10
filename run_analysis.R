## 1_Merging the training and the test sets to create one data set.

## read training and test sets, combine them (by rows), add column names from features.txt file
training_set <- read.table("./train/X_train.txt")
test_set <- read.table("./test/X_test.txt")
data_raw_set <- rbind(training_set, test_set)
names(data_raw_set) <- read.table("features.txt", stringsAsFactors = FALSE)[,2]

## read training and test data labels, combine them (by rows), add column description
labels_training <- read.table("./train/y_train.txt")
labels_test <- read.table("./test/y_test.txt")
labels <- rbind(labels_training, labels_test)
names(labels) <- "activities"

## read subject info, combine training and test subject data and combine in one vector
subject_training <- read.table("./train/subject_train.txt")
subject_test <- read.table("./test/subject_test.txt")
subjects <- rbind(subject_training, subject_test)
names(subjects) <- "subject_ID"

## combine subjects, labels and data sets
data_raw_all <- cbind(subjects, labels, data_raw_set)

## 2_Extracting only the measurements on the mean and standard deviation for each measurement.
data_mean_std <- data_raw_all[grep("mean\\(\\)|std\\(\\)|activities|subject_ID", names(data_all))]

## 3_Uses descriptive activity names to name the activities in the data set.
activity_labels <- tolower(read.table("activity_labels.txt", stringsAsFactors = FALSE)[,2])
for (i in 1:6) {
  data_mean_std$activities[which(data_mean_std$activities == i)] <- activity_labels[i]
}

## 4_Appropriately labels the data set with descriptive variable names.
names(data_mean_std) <-  gsub("^f", "frequencySignal_", names(data_mean_std))
names(data_mean_std) <-  gsub("^t", "timeSignal_", names(data_mean_std))
names(data_mean_std) <-  gsub("tBody", "timeSignal_Body", names(data_mean_std))
names(data_mean_std) <-  gsub("\\(\\)", "", names(data_mean_std))
names(data_mean_std) <-  gsub("Acc", "_Acceleration", names(data_mean_std))
names(data_mean_std) <-  gsub("Mag", "_Magnitude", names(data_mean_std))
names(data_mean_std) <-  gsub("std", "standard_deviation", names(data_mean_std))
names(data_mean_std) <-  gsub("Gyro", "_Gyroscope", names(data_mean_std))
names(data_mean_std) <-  gsub("BodyBody", "Body", names(data_mean_std))
names(data_mean_std) <-  gsub("Jerk", "_Jerk", names(data_mean_std))
names(data_mean_std) <-  gsub("X", "X_axis", names(data_mean_std))
names(data_mean_std) <-  gsub("Y", "Y_axis", names(data_mean_std))
names(data_mean_std) <-  gsub("Z", "Z_axis", names(data_mean_std))

## From the data set in step 4, creating a second, independent tidy data set with the average of each variable 
## for each activity and each subject.
data_means_by_subj_activity <- aggregate(. ~ activities + subject_ID, data_mean_std, mean)
write.table(data_means_by_subj_activity, "data_means_by_subj_activity.txt", row.names = FALSE)






