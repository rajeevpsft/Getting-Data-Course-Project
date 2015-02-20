
## Run_Analysis.r code for Coursera project - Getting Data class

## Read in the activity names and label them
activity_labels <- read.table("./Getting Data class/UCI HAR Dataset/activity_labels.txt")
colnames(activity_labels) = c("code", "activity")

## read features name
featurename <- read.table("./Getting Data class/UCI HAR Dataset/features.txt", colClasses = c("character"))

## Read the different test data files for activity,subject and observations for activity and subject
activity_test_ds <- read.table("./Getting Data class/UCI HAR Dataset/test/y_test.txt")
info_test_ds <- read.table("./Getting Data class/UCI HAR Dataset/test/x_test.txt")
subject_test_ds <- read.table("./Getting Data class/UCI HAR Dataset/test/subject_test.txt")
## assign headers
colnames(info_test_ds) = featurename[,2]


## Repeat the reading and merging for the train data set
activity_train_ds <- read.table("./Getting Data class/UCI HAR Dataset/train/y_train.txt")
info_train_ds <- read.table("./Getting Data class/UCI HAR Dataset/train/x_train.txt")
subject_train_ds <- read.table("./Getting Data class/UCI HAR Dataset/train/subject_train.txt")
colnames(info_train_ds) = featurename[,2]


## replace the activity code with the actual activity name
colnames(activity_test_ds) = "code"
colnames(activity_train_ds) = "code"

## Merge subject,activity and observation into one data frame 
merged_test_ds <- cbind(subject_test_ds,activity_test_ds,info_test_ds)
merged_train_ds <- cbind(subject_train_ds,activity_train_ds,info_train_ds)


merged_test_ds <- merge(activity_labels, merged_test_ds, by = "code", all.x = T, all.y = T)
merged_train_ds <- merge(activity_labels, merged_train_ds, by = "code", all.x = T, all.y = T)




## Assign descriptive names to the subject 
names(merged_test_ds)[1] <- c("Subject")
names(merged_train_ds)[1] <- c("Subject")

## Merge training and test data and drop the duplicate column containing activity code
full_merge <- rbind(merged_test_ds,merged_train_ds)
full_merge2 <- cbind(full_merge[,1],full_merge[,3:564])
names(full_merge2)[1] <- c("Subject")

## Only fetch columns that contain a mean or std in them. Remove columns that contain MeanFreq
full_merge_sub <- full_merge2[,grepl("mean|std|Subject|activity", names(full_merge2))]
full_merge_sub2 <- full_merge_sub[,!(grepl("Freq", names(full_merge_sub)))]

tidy_data <- ddply(full_merge_sub2, c('Subject','activity'), numcolwise(mean))
## Write data to a file
tidy_data <- arrange(tidy_data,activity)
write.table(tidy_data,"./Getting Data class/UCI HAR Dataset/tidy_data.txt")


