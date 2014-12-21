# Downloads the data
# download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "courseProject.zip")
# unzip ("courseProject.zip",exdir = ".")

## Merge the training and the test sets to create one data set. (Step 1)

# Getting the full paths to all files in the train and test folders, 
# excluding the "Inertial Signals" folder since it contains less processed data
# and also are lacking column names, and thus would anyways be excluded in subsequent steps
trainFilePaths <- list.files(path="./UCI HAR Dataset/train", pattern = ".txt", full.names = TRUE)
testFilePaths <- list.files(path="./UCI HAR Dataset/test", pattern = ".txt", full.names = TRUE)

# Loads test and train data into memory
trainFiles <- sapply(trainFilePaths, read.table)
testFiles <- sapply(testFilePaths, read.table)

# Remove the full path from the filenames
names(trainFiles)<-basename(names(trainFiles))
names(testFiles)<-basename(names(testFiles))

# Clean up memory
rm(trainFilePaths, testFilePaths)

# To make subsequent steps more understandable the datasets will now be labeled (Step 4)
# (Appropriately labels the data set with descriptive variable names)

# Load the feature file
features <- read.table("./UCI HAR Dataset/features.txt")

# Sets column names for the X variables
names(trainFiles$X_train.txt) <- features[,2]
names(testFiles$X_test.txt) <- features[,2]

# Sets column names for the other variables
names(trainFiles$y_train.txt) <- "Activity_label"
names(testFiles$y_test.txt) <- "Activity_label"
names(trainFiles$subject_train.txt) <- "SubjectId"
names(testFiles$subject_test.txt) <- "SubjectId"

# Now combine the subjectId with X and y variables for both data sets
testData <- cbind(testFiles$subject_test.txt, testFiles$X_test.txt, testFiles$y_test.txt)
trainData <- cbind(trainFiles$subject_train.txt, trainFiles$X_train.txt, trainFiles$y_train.txt)

# Now add the two data sets together to create the merged data set
mergedData <- rbind(testData, trainData)

# Clean up memory
rm(features, testFiles, trainFiles, testData, trainData)

## Extract only the measurements on the mean and standard deviation for each measurement (Step 2)

# Create an index for all columns we want to keep
index <- c(1, grep("mean\\(", names(mergedData)), grep("std\\(", names(mergedData)), 563)

# Now create a filtered data set
filteredData <- mergedData[,index]

# Clean up memory
rm(mergedData, index)

## Use descriptive activity names to name the activities in the data set (Step 3)

# Load activity label names
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")

# Apply the activity label names to the dataset
filteredData$Activity_label <- sapply(filteredData$Activity_label, function(x){ as.character(activities[x,2]) })

# Now the filtered data can be regarded as tidy
tidyData <- filteredData

# Clean up memory
rm(activities, filteredData)

# From the data set in Step 3 (step 4 in the original assignment text), create a second, independent tidy data set with the average of each variable for each activity and each subject.

# To preform the following operations the "reshape2" package is required
require(reshape2)

# Reshape data by melting it based on subjectid and activity label
tallAndtidyData <- melt(tidyData, id=c("SubjectId", "Activity_label"))

# Now calculate mean values for all variables divided by subjectid and activity label
tidyMeanData <- dcast(tallAndtidyData, SubjectId + Activity_label ~ variable, mean)

# Get the column names of the variables that have been aggregated
aggregatedVariableColumnNames <- names(tidyMeanData[,!names(tidyMeanData) %in% c("SubjectId","Activity_label")])

# Clearify the column names that have been aggregated
names(tidyMeanData) <- c("SubjectId", "Activity_label", paste("meanAggregation_", aggregatedVariableColumnNames, sep=""))

# Finally, write the tidyMeanData file to disk
write.table(x = tidyMeanData, file = "tidyMeanData.txt", row.name=FALSE) 




