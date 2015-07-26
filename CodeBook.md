##Code Book

This codebook only contains information on the new file (TidyDataAgg.txt) created for the project.  Information about the raw data can be obtained from the README.txt and features_info.txt contained in GCDproject.zip.

###TidyDataAgg.txt
####10299 rows x 68 columns
This is the summary dataset where only the mean for each measure is shown by subject and activity.  For measurements containing "Gyro" in the name the units are radians/second.  For all other measurements the units are standard gravity units 'g'.

Ids:
* subject	ID of the participant
* activity	Labeled factor for the activity observed ("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING" ,"LAYING")

Measurments (mean of all observations):
 * tBodyAcc-mean()-X	
 * tBodyAcc-mean()-Y	
 * tBodyAcc-mean()-Z	
 * tBodyAcc-std()-X	
 * tBodyAcc-std()-Y	
 * tBodyAcc-std()-Z	
 * tGravityAcc-mean()-X	
 * tGravityAcc-mean()-Y	
 * tGravityAcc-mean()-Z	
 * tGravityAcc-std()-X	
 * tGravityAcc-std()-Y	
 * tGravityAcc-std()-Z	
 * tBodyAccJerk-mean()-X	
 * tBodyAccJerk-mean()-Y	
 * tBodyAccJerk-mean()-Z	
 * tBodyAccJerk-std()-X	
 * tBodyAccJerk-std()-Y	
 * tBodyAccJerk-std()-Z	
 * tBodyGyro-mean()-X	
 * tBodyGyro-mean()-Y	
 * tBodyGyro-mean()-Z	
 * tBodyGyro-std()-X	
 * tBodyGyro-std()-Y	
 * tBodyGyro-std()-Z	
 * tBodyGyroJerk-mean()-X	
 * tBodyGyroJerk-mean()-Y	
 * tBodyGyroJerk-mean()-Z	
 * tBodyGyroJerk-std()-X	
 * tBodyGyroJerk-std()-Y	
 * tBodyGyroJerk-std()-Z	
 * tBodyAccMag-mean()	
 * tBodyAccMag-std()	
 * tGravityAccMag-mean()	
 * tGravityAccMag-std()	
 * tBodyAccJerkMag-mean()	
 * tBodyAccJerkMag-std()	
 * tBodyGyroMag-mean()	
 * tBodyGyroMag-std()	
 * tBodyGyroJerkMag-mean()	
 * tBodyGyroJerkMag-std()	
 * fBodyAcc-mean()-X	
 * fBodyAcc-mean()-Y	
 * fBodyAcc-mean()-Z	
 * fBodyAcc-std()-X	
 * fBodyAcc-std()-Y	
 * fBodyAcc-std()-Z	
 * fBodyAccJerk-mean()-X	
 * fBodyAccJerk-mean()-Y	
 * fBodyAccJerk-mean()-Z	
 * fBodyAccJerk-std()-X	
 * fBodyAccJerk-std()-Y	
 * fBodyAccJerk-std()-Z	
 * fBodyGyro-mean()-X	
 * fBodyGyro-mean()-Y	
 * fBodyGyro-mean()-Z	
 * fBodyGyro-std()-X	
 * fBodyGyro-std()-Y	
 * fBodyGyro-std()-Z	
 * fBodyAccMag-mean()	
 * fBodyAccMag-std()	
 * fBodyBodyAccJerkMag-mean()	
 * fBodyBodyAccJerkMag-std()	
 * fBodyBodyGyroMag-mean()	
 * fBodyBodyGyroMag-std()	
 * fBodyBodyGyroJerkMag-mean()	
 * fBodyBodyGyroJerkMag-std()	


####Note:
The tidy dataset "data" created while running the run_analysis.r script has the same columns as TidyDataAgg.txt, however it contains the individual observations for each subject and activity.



