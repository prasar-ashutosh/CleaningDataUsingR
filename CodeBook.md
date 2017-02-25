# Codebook for Getting and Cleaning Data Course Project Assignment

##

**Data Sources:** From the UCI HAR Dataset, following data is used in this project

* features.txt: List of all features.
* activity_labels.txt: Links the class labels with their activity name.

Training Set:
* train/X_train.txt: Training set.
* train/y_train.txt: Training labels.
* train/subject_train.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

Test Set
* test/X_test.txt: Test set.
* test/y_test.txt: Test labels.
* test/subject_test.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.


**Transformation Steps:**

1. Read test data and train data and merge them into merged_data
2. Read features and extract only measurements on the mean and standard deviation
3. Read test labels and train labels and merge them together as merged_labels
4. Read test subjects and train subjects and merge them together as merged_subjects
5. Read all the name of 6 activity labels and join with merged_labels
6. Column bind Subjects , Labels and mesaurement Data together into data_complete
7. Group by subject_id and activity_name
8. Summarize all the columns by mean
9. Write the summarized_data into file system

**Varaibles in the Output**

1. subject_id               : Subject ID 
2. activity_name            : Activity Name 
3. activity_id              : Activity ID 
4. tBodyAcc-mean()-X        : Mean value of tBodyAcc-mean()-X for a given subject and Acitivity 
5. tBodyAcc-mean()-Y        : Mean value of tBodyAcc-mean()-Y for a given subject and Acitivity 
6. tBodyAcc-mean()-Z        : Mean value of tBodyAcc-mean()-Z for a given subject and Acitivity 
7. tBodyAcc-std()-X         : Mean value of tBodyAcc-std()-X for a given subject and Acitivity 
8. tBodyAcc-std()-Y         : Mean value of tBodyAcc-std()-Y for a given subject and Acitivity 
9. tBodyAcc-std()-Z         : Mean value of tBodyAcc-std()-Z for a given subject and Acitivity 
10.  tGravityAcc-mean()-X   : Mean value of tGravityAcc-mean()-X for a given subject and Acitivity 
11.  tGravityAcc-mean()-Y   : Mean value of tGravityAcc-mean()-Y for a given subject and Acitivity 
12.  tGravityAcc-mean()-Z   : Mean value of tGravityAcc-mean()-Z for a given subject and Acitivity 
13.  tGravityAcc-std()-X    : Mean value of tGravityAcc-std()-X for a given subject and Acitivity 
14.  tGravityAcc-std()-Y    : Mean value of tGravityAcc-std()-Y for a given subject and Acitivity 
15.  tGravityAcc-std()-Z    : Mean value of tGravityAcc-std()-Z for a given subject and Acitivity 
16.  tBodyAccJerk-mean()-X  : Mean value of tBodyAccJerk-mean()-X for a given subject and Acitivity 
17.  tBodyAccJerk-mean()-Y  : Mean value of tBodyAccJerk-mean()-Y for a given subject and Acitivity 
18.  tBodyAccJerk-mean()-Z  : Mean value of tBodyAccJerk-mean()-Z for a given subject and Acitivity 
19.  tBodyAccJerk-std()-X   : Mean value of tBodyAccJerk-std()-X for a given subject and Acitivity 
20.  tBodyAccJerk-std()-Y   : Mean value of tBodyAccJerk-std()-Y for a given subject and Acitivity 
21.  tBodyAccJerk-std()-Z   : Mean value of tBodyAccJerk-std()-Z for a given subject and Acitivity 
22.  tBodyGyro-mean()-X     : Mean value of tBodyGyro-mean()-X for a given subject and Acitivity 
23.  tBodyGyro-mean()-Y     : Mean value of tBodyGyro-mean()-Y for a given subject and Acitivity 
24.  tBodyGyro-mean()-Z     : Mean value of tBodyGyro-mean()-Z for a given subject and Acitivity 
25.  tBodyGyro-std()-X      : Mean value of tBodyGyro-std()-X for a given subject and Acitivity 
26.  tBodyGyro-std()-Y      : Mean value of tBodyGyro-std()-Y for a given subject and Acitivity 
27.  tBodyGyro-std()-Z      : Mean value of tBodyGyro-std()-Z for a given subject and Acitivity 
28.  tBodyGyroJerk-mean()-X : Mean value of tBodyGyroJerk-mean()-X for a given subject and Acitivity 
29.  tBodyGyroJerk-mean()-Y : Mean value of tBodyGyroJerk-mean()-Y for a given subject and Acitivity 
30.  tBodyGyroJerk-mean()-Z : Mean value of tBodyGyroJerk-mean()-Z for a given subject and Acitivity 
31.  tBodyGyroJerk-std()-X  : Mean value of tBodyGyroJerk-std()-X for a given subject and Acitivity 
32.  tBodyGyroJerk-std()-Y  : Mean value of tBodyGyroJerk-std()-Y for a given subject and Acitivity 
33.  tBodyGyroJerk-std()-Z  : Mean value of tBodyGyroJerk-std()-Z for a given subject and Acitivity 
34.  fBodyAcc-mean()-X      : Mean value of fBodyAcc-mean()-X for a given subject and Acitivity 
35.  fBodyAcc-mean()-Y      : Mean value of fBodyAcc-mean()-Y for a given subject and Acitivity 
36.  fBodyAcc-mean()-Z      : Mean value of fBodyAcc-mean()-Z for a given subject and Acitivity 
37.  fBodyAcc-std()-X       : Mean value of fBodyAcc-std()-X for a given subject and Acitivity 
38.  fBodyAcc-std()-Y       : Mean value of fBodyAcc-std()-Y for a given subject and Acitivity 
39.  fBodyAcc-std()-Z       : Mean value of fBodyAcc-std()-Z for a given subject and Acitivity 
40.  fBodyAccJerk-mean()-X  : Mean value of fBodyAccJerk-mean()-X for a given subject and Acitivity 
41.  fBodyAccJerk-mean()-Y  : Mean value of fBodyAccJerk-mean()-Y for a given subject and Acitivity 
42.  fBodyAccJerk-mean()-Z  : Mean value of fBodyAccJerk-mean()-Z for a given subject and Acitivity 
43.  fBodyAccJerk-std()-X   : Mean value of fBodyAccJerk-std()-X for a given subject and Acitivity 
44.  fBodyAccJerk-std()-Y   : Mean value of fBodyAccJerk-std()-Y for a given subject and Acitivity 
45.  fBodyAccJerk-std()-Z   : Mean value of fBodyAccJerk-std()-Z for a given subject and Acitivity 
46.  fBodyGyro-mean()-X     : Mean value of fBodyGyro-mean()-X for a given subject and Acitivity 
47.  fBodyGyro-mean()-Y     : Mean value of fBodyGyro-mean()-Y for a given subject and Acitivity 
48. fBodyGyro-mean()-Z     : Mean value of fBodyGyro-mean()-Z for a given subject and Acitivity 
49. fBodyGyro-std()-X      : Mean value of fBodyGyro-std()-X for a given subject and Acitivity 
50. fBodyGyro-std()-Y      : Mean value of fBodyGyro-std()-Y for a given subject and Acitivit
51. fBodyGyro-std()-Z      : Mean value of fBodyGyro-std()-Z : Mean value if  for a given subject and Acitivit