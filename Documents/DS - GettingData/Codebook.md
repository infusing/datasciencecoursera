
# Codebook for Analysis of the Human Activity Recognition Using Smartphones Data Set [1] as a part of the Getting and Cleaning Data by Jeff Leek, PhD, Roger D. Peng, PhD, Brian Caffo, PhD on coursera.org

==================================================================
Codebook by Marcus Persson, Stockholm
==================================================================

Description of the experiments generating the data set used for analysis (taken from original documentation):
"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually." 

==================================================================
Original data set code book - cited below
==================================================================

=========================START OF CITATION=========================================

	The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

	Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

	Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

	These signals were used to estimate variables of the feature vector for each pattern:  
	'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

	tBodyAcc-XYZ
	tGravityAcc-XYZ
	tBodyAccJerk-XYZ
	tBodyGyro-XYZ
	tBodyGyroJerk-XYZ
	tBodyAccMag
	tGravityAccMag
	tBodyAccJerkMag
	tBodyGyroMag
	tBodyGyroJerkMag
	fBodyAcc-XYZ
	fBodyAccJerk-XYZ
	fBodyGyro-XYZ
	fBodyAccMag
	fBodyAccJerkMag
	fBodyGyroMag
	fBodyGyroJerkMag

	The set of variables that were estimated from these signals are: 

	mean(): Mean value
	std(): Standard deviation
	mad(): Median absolute deviation 
	max(): Largest value in array
	min(): Smallest value in array
	sma(): Signal magnitude area
	energy(): Energy measure. Sum of the squares divided by the number of values. 
	iqr(): Interquartile range 
	entropy(): Signal entropy
	arCoeff(): Autorregresion coefficients with Burg order equal to 4
	correlation(): correlation coefficient between two signals
	maxInds(): index of the frequency component with largest magnitude
	meanFreq(): Weighted average of the frequency components to obtain a mean frequency
	skewness(): skewness of the frequency domain signal 
	kurtosis(): kurtosis of the frequency domain signal 
	bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
	angle(): Angle between to vectors.

	Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

	gravityMean
	tBodyAccMean
	tBodyAccJerkMean
	tBodyGyroMean
	tBodyGyroJerkMean

=========================END OF CITATION=========================================

==================================================================

The complete list of variables of each feature vector is available in 'features.txt' provided along with the original data set.

=========================================================================
Additions to the original code book, relevant for the analysis performed
=========================================================================

All of the following analysis variables were grouped by subjectid and activity label and aggregated by mean value to produce the analysis file:

	
	mean() and std() variables of the following measures:
	tBodyAcc-XYZ
	tGravityAcc-XYZ
	tBodyAccJerk-XYZ
	tBodyGyro-XYZ
	tBodyGyroJerk-XYZ
	tBodyAccMag
	tGravityAccMag
	tBodyAccJerkMag
	tBodyGyroMag
	tBodyGyroJerkMag
	fBodyAcc-XYZ
	fBodyAccJerk-XYZ
	fBodyGyro-XYZ
	fBodyAccMag
	fBodyAccJerkMag
	fBodyGyroMag
	fBodyGyroJerkMag


Variables included in the analysis output file 'tidyMeanData.txt':

	SubjectId - id refering to one of the volonteers participating in the experiment
	Activity_label - the activity being measured. In total there were six activities being measured (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

	All of the following analysis variables are grouped by subjectid and activity label and aggregated by mean value:
	meanAggregation_tBodyAcc-mean()-X
	meanAggregation_tBodyAcc-mean()-Y
	meanAggregation_tBodyAcc-mean()-Z
	meanAggregation_tGravityAcc-mean()-X
	meanAggregation_tGravityAcc-mean()-Y
	meanAggregation_tGravityAcc-mean()-Z
	meanAggregation_tBodyAccJerk-mean()-X
	meanAggregation_tBodyAccJerk-mean()-Y
	meanAggregation_tBodyAccJerk-mean()-Z
	meanAggregation_tBodyGyro-mean()-X
	meanAggregation_tBodyGyro-mean()-Y
	meanAggregation_tBodyGyro-mean()-Z
	meanAggregation_tBodyGyroJerk-mean()-X
	meanAggregation_tBodyGyroJerk-mean()-Y
	meanAggregation_tBodyGyroJerk-mean()-Z
	meanAggregation_tBodyAccMag-mean()
	meanAggregation_tGravityAccMag-mean()
	meanAggregation_tBodyAccJerkMag-mean()
	meanAggregation_tBodyGyroMag-mean()
	meanAggregation_tBodyGyroJerkMag-mean()
	meanAggregation_fBodyAcc-mean()-X
	meanAggregation_fBodyAcc-mean()-Y
	meanAggregation_fBodyAcc-mean()-Z
	meanAggregation_fBodyAccJerk-mean()-X
	meanAggregation_fBodyAccJerk-mean()-Y
	meanAggregation_fBodyAccJerk-mean()-Z
	meanAggregation_fBodyGyro-mean()-X
	meanAggregation_fBodyGyro-mean()-Y
	meanAggregation_fBodyGyro-mean()-Z
	meanAggregation_fBodyAccMag-mean()
	meanAggregation_fBodyBodyAccJerkMag-mean()
	meanAggregation_fBodyBodyGyroMag-mean()
	meanAggregation_fBodyBodyGyroJerkMag-mean()
	meanAggregation_tBodyAcc-std()-X
	meanAggregation_tBodyAcc-std()-Y
	meanAggregation_tBodyAcc-std()-Z
	meanAggregation_tGravityAcc-std()-X
	meanAggregation_tGravityAcc-std()-Y
	meanAggregation_tGravityAcc-std()-Z
	meanAggregation_tBodyAccJerk-std()-X
	meanAggregation_tBodyAccJerk-std()-Y
	meanAggregation_tBodyAccJerk-std()-Z
	meanAggregation_tBodyGyro-std()-X
	meanAggregation_tBodyGyro-std()-Y
	meanAggregation_tBodyGyro-std()-Z
	meanAggregation_tBodyGyroJerk-std()-X
	meanAggregation_tBodyGyroJerk-std()-Y
	meanAggregation_tBodyGyroJerk-std()-Z
	meanAggregation_tBodyAccMag-std()
	meanAggregation_tGravityAccMag-std()
	meanAggregation_tBodyAccJerkMag-std()
	meanAggregation_tBodyGyroMag-std()
	meanAggregation_tBodyGyroJerkMag-std()
	meanAggregation_fBodyAcc-std()-X
	meanAggregation_fBodyAcc-std()-Y
	meanAggregation_fBodyAcc-std()-Z
	meanAggregation_fBodyAccJerk-std()-X
	meanAggregation_fBodyAccJerk-std()-Y
	meanAggregation_fBodyAccJerk-std()-Z
	meanAggregation_fBodyGyro-std()-X
	meanAggregation_fBodyGyro-std()-Y
	meanAggregation_fBodyGyro-std()-Z
	meanAggregation_fBodyAccMag-std()
	meanAggregation_fBodyBodyAccJerkMag-std()
	meanAggregation_fBodyBodyGyroMag-std()
	meanAggregation_fBodyBodyGyroJerkMag-std()

For more info on the original data set and the experimental design please review the documentation provided along with the orginal data set. The datasets used to perfrom this analysis originate from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

==================================================================
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012





