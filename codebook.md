
This code book explains all the variables used for the Coursera course project for the "Getting and Cleaning Data" class.

The following data frames are used to read the files needed for the project. These files were downloaded in a zip format from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Data Frame			Purpose
activity_label			Reads in the activity name associated with the activity code
featurename			Reads in the names for each of the column of data in the test and training sets
info_test_ds			Reads in x_test.txt file which measures 561 different variables multiple times for multiple "test" subjects
subject_test_ds 		Reads in subject_test.txt file for which subject (1-30) ties to the observations in the x_test file
activity_test_ds 		Reads in y_test.txt file for type of activity used by the test group of subject	
merged_test_ds 			Merges the three data frames above into one
subset_data_test 		Creates a subset of the full data frame to only contain the Body Accelaration Mean and Std Deviation for X,Y and Z axis for the test sample of subjects

info_train_ds			Reads in x_train.txt file which measures 561 different variables multiple times for multiple "train" subjects
subject_train_ds 		Reads in subject_train.txt file for which subject (1-30) ties to the observations in the x_train file
activity_train_ds 		Reads in y_train.txt file for type of activity used by the train group of subject	
merged_train_ds 		Merges the three data frames above into one
subset_data_train 		Creates a subset of the full data frame to only contain the Body Accelaration Mean and Std Deviation for X,Y and Z axis for the train sample of subjects

full_merge 			Contains a data set that merges the train and test subsets shown above. This has a total of 10299 rows of 6 observations for the 30 subjects over the different activities

tidy_data 			Data frame created from the fully merged data that contains the mean of the mean and std deviation for X,Y and Z axis as detailed in the ful_merge data frame. This is also written to a file
  

Variables in the Tidy data file

"Subject" - Variable showing the Subject number (1-30)

"Activity" - Showing the Activity performed (1-6) as explained in the documentation

The following are variables that shows means of different mean and std deviation values by subject and activity. Values between -1 and 1 for each

"tBodyAcc-mean()-X" 
"tBodyAcc-mean()-Y"
"tBodyAcc-mean()-Z" 
"tBodyAcc-std()-X" 
"tBodyAcc-std()-Y" 
"tBodyAcc-std()-Z"
"tGravityAcc-mean()-X" 
"tGravityAcc-mean()-Y" 
"tGravityAcc-mean()-Z" 
"tGravityAcc-std()-X" 
"tGravityAcc-std()-Y" 
"tGravityAcc-std()-Z" 
"tBodyAccJerk-mean()-X" 
"tBodyAccJerk-mean()-Y" 
"tBodyAccJerk-mean()-Z" 
"tBodyAccJerk-std()-X" 
"tBodyAccJerk-std()-Y" 
"tBodyAccJerk-std()-Z" 
"tBodyGyro-mean()-X" 
"tBodyGyro-mean()-Y" 
"tBodyGyro-mean()-Z" 
"BodyGyro-std()-X" 
"tBodyGyro-std()-Y" 
"tBodyGyro-std()-Z"
"tBodyGyroJerk-mean()-X"
"tBodyGyroJerk-mean()-Y" 
"tBodyGyroJerk-mean()-Z" 
"tBodyGyroJerk-std()-X" 
"tBodyGyroJerk-std()-Y" 
"tBodyGyroJerk-std()-Z" 
"tBodyAccMag-mean()" 
"tBodyAccMag-std()" 
"tGravityAccMag-mean()" 
"tGravityAccMag-std()" 
"tBodyAccJerkMag-mean()" 
"tBodyAccJerkMag-std()" 
"tBodyGyroMag-mean()" 
"tBodyGyroMag-std()"
"tBodyGyroJerkMag-mean()" 
"tBodyGyroJerkMag-std()" 
"fBodyAcc-mean()-X" 
"fBodyAcc-mean()-Y" 
"fBodyAcc-mean()-Z" 
"fBodyAcc-std()-X" 
"fBodyAcc-std()-Y" 
"fBodyAcc-std()-Z" 
"fBodyAccJerk-mean()-X" 
"fBodyAccJerk-mean()-Y" 
"fBodyAccJerk-mean()-Z" 
"fBodyAccJerk-std()-X" 
"fBodyAccJerk-std()-Y" 
"fBodyAccJerk-std()-Z" 
"fBodyGyro-mean()-X" 
"fBodyGyro-mean()-Y" 
"fBodyGyro-mean()-Z" 
"fBodyGyro-std()-X" 
"fBodyGyro-std()-Y" 
"fBodyGyro-std()-Z" 
"fBodyAccMag-mean()" 
"fBodyAccMag-std()" 
"fBodyBodyAccJerkMag-mean()" 
"fBodyBodyAccJerkMag-std()" 
"fBodyBodyGyroMag-mean()" 
"fBodyBodyGyroMag-std()" 
"fBodyBodyGyroJerkMag-mean()" 
"fBodyBodyGyroJerkMag-std()"


