# Getting-Data-Course-Project




Run_Analysis.r code for Coursera project - Getting Data class. Readme file

These are the steps to generate the data file required for the course project. These steps are also added as comments in the run_analysis.R program.

* Read the different test data files for activity,subject and observations for activity and subject

* Merge subject,activity and observation into one data frame and subset to get only mean and std deviation values

* Assign descriptive names to the subset data

* Repeat the reading and merging for the train data set

*  Merge the test and train data into one data frame

* Create a tidy data frame by getting mean of mean and std deviation and group by subject and activity

*  Assign more descriptive column names

*  Write data to a file

* The end result of the program is a file called tidy_data.txt with 180 rows containing observations by subjects and activity performed.
