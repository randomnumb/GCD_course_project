

######################
# This is a program that gets and cleans raw data from observations conducted with the Samsung S2 accelerometer.
# 
# The program:
# 
#   -downloads the data from the web to the working directory.
# 
#   -transforms the raw data into a single data frame with only the mean and standard deviation 
#    variables for each measurement.  
# 
#   -aggregates this dataset so that means are shown by subect and activity and writes this data to
# 
#   -writes TidyDataAgg.txt in the working directory.
#
#####################

#Install required packages if not present
if (!require(dplyr)){         # if package not loaded
  install.packages("dplyr")   # install package if required
  library(dplyr)              # load package
}
if (!require(reshape2)){         # if package not loaded
  install.packages("reshape2")   # install package if required
  library(reshape2)              # load package
}

#Downloading raw data into working directory
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
              destfile="GCDproject.zip")

#Capturing filenames and unzipping the files
files = unzip("GCDproject.zip",list=TRUE)
unzip("GCDproject.zip")

#Getting activity and feature labels
activity_labels = read.table("UCI HAR Dataset/activity_labels.txt")
features = read.table("UCI HAR Dataset/features.txt")

#Read Test Files
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")

#Read Training Files
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")

#Stacking Test and traing datasets
subject <- rbind(subject_test,subject_train)
X <- rbind(X_test,X_train)
y <- rbind(y_test,y_train)

#Name columns of X with the names from, order ensures that columns are named correctly
features <- arrange(features,V1)
colnames(X) <- features$V2

#Extracting columns labeled as 'mean(' or 'std', ignores mean freq  
X1 <- select(X,matches(c("mean\\(|std")))


#Create factor version of activity levels  in Y
y$activity_label <- as.factor(y$V1)
activity_labels <- arrange(activity_labels,V1)
levels(y$activity_label) <- activity_labels$V2

#Mergre Component Columns into Single Data Set
data <- cbind(subject,y$activity_label,X1)

#Rename subject and activity column names
data <- rename(data,c("V1"="subject", "y$activity_label" = "activity"))

#Aggregate the data set to show means by subject and activity
dataMelt <- melt(data, id = c("subject","activity"))
dataAgg = dcast(dataMelt, subject + activity ~ variable, mean)

#Write aggregated datafile to working directory.
write.table(dataAgg,file="TidyDataAgg.txt",row.name=FALSE)









