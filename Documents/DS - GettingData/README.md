
# Analysis of the Human Activity Recognition Using Smartphones Data Set [1] as a part of the Getting and Cleaning Data by Jeff Leek, PhD, Roger D. Peng, PhD, Brian Caffo, PhD on coursera.org

==================================================================
Analysis by Marcus Persson, Stockholm
==================================================================

The analysis files includes:
'run_analysis.R' - 	An R script that takes the orginal "Human Activity Recognition Using Smartphones Data Set" and uses it for further analysis. It is required that the data set is already downloaded and unziped in you working directory.
					If you haven't already downloaded the data, the code to download the data is provided at the top of the 'run_analysis.R' script, but commented out. 

					Analysis is performed in 4 major steps

					Step 1. Loads and labels the data, then merges the training and test data sets into one data set
					Step 2. Extracts mean and standard deviation measures from the merged data set
					Step 3. Recodes activity ids into descriptive names
					Step 4. Aggregates all measures by mean calculations grouped by SubjectId and Activity_label, and then saves the new data set to disk

					More detailed comments are provided in the script.

'tidyMeanData.txt' - A text file containing the output form the analysis described above. 

'Codebook.md' - A file containing variable descriptions.

For more info on the original data set please review the documentation provided along with the orginal data set. The datasets used to perfrom this analysis originate from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

==================================================================
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012