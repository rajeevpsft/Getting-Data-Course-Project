## Coursera Codebook

This code book explains all the variables used for the Coursera course project for the "Getting and Cleaning Data" class.

The following data frames are used to read the files needed for the project. These files were downloaded in a zip format from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Data Frame			Purpose
info_test_ds		--	Reads in x_test.txt file which measures 561 different variables multiple times for multiple "test" subjects

subject_test_ds  -- 		Reads in subject_test.txt file for which subject (1-30) ties to the observations in the x_test file

activity_test_ds 	--	Reads in y_test.txt file for type of activity used by the test group of subject

merged_test_ds 	--		Merges the three data frames above into one

subset_data_test  --		Creates a subset of the full data frame to only contain the Body Accelaration Mean and Std 		 Deviation for X,Y and Z axis for the test sample of subjects

info_train_ds	--		Reads in x_train.txt file which measures 561 different variables multiple times for multiple "train" subjects

subject_train_ds 	--	Reads in subject_train.txt file for which subject (1-30) ties to the observations in the x_train file

activity_train_ds --	Reads in y_train.txt file for type of activity used by the train group of subject	

merged_train_ds 	--	Merges the three data frames above into one

subset_data_train --		Creates a subset of the full data frame to only contain the Body Accelaration Mean and Std Deviation for X,Y and Z axis for the train sample of subjects

full_merge 	--		Contains a data set that merges the train and test subsets shown above. This has a total of 10299 rows of 6 observations for the 30 subjects over the different activities

tidy_data 	-- 		Data frame created from the fully merged data that contains the mean of the mean and std deviation for X,Y and Z axis as detailed in the ful_merge data frame. This is also written to a file


## Variables in the Tidy data file

"Subject" - Variable showing the Subject number (1-30)

"Activity" - Showing the Activity performed (1-6) as explained in the documentation

"Body_Accl_Mean_X" - Mean of Mean of acceleration in X axis by subject and activity. Values between -1 and 1
"Body_Accl_Mean_Y" - Mean of Mean of acceleration in Y axis by subject and activity. Values between -1 and 1
"Body_Accl_Mean_Z" - Mean of Mean of acceleration in Z axis by subject and activity. Values between -1 and 1
"Body_Accl_Std_Dev_X" - Mean of Std Deviation of acceleration in X axis by subject and activity. Values between -1 and 1
"Body_Accl_Std_Dev_Y" - Mean of Std Deviation of acceleration in X axis by subject and activity. Values between -1 and 1
"Body_Accl_Std_Dev_Z" - Mean of Std Deviation of acceleration in X axis by subject and activity. Values between -1 and 1
