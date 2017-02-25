library(dplyr);

# Read test data and train data and merge them into merged_data
test_data<-read.csv("test/X_test.txt", sep="", header=FALSE);
train_data<-read.csv("train/X_train.txt", sep="", header=FALSE);
merged_data<-rbind(test_data,train_data);

# Read features and extract only measurements on the mean and standard deviation
features<-read.csv("features.txt", sep="", header=FALSE);
names(merged_data)<-features$V2;
reqd_columns<-grep(".*-mean\\(\\)-.*|.*-std\\(\\)-",names(merged_data));
merged_data_subset<-merged_data[,reqd_columns];

# Read test labels and train labels and merge them together as merged_labels
test_labels<-read.csv("test/y_test.txt", sep="", header=FALSE);
train_labels<-read.csv("train/y_train.txt", sep="", header=FALSE);
merged_labels<-rbind(test_labels,train_labels);

# Read test subjects and train subjects and merge them together as merged_subjects
test_subjects<-read.csv("test/subject_test.txt", sep="", header=FALSE);
train_subjects<-read.csv("train/subject_train.txt", sep="", header=FALSE);
merged_subjects<-rbind(test_subjects,train_subjects);
names(merged_subjects)<-"subject_id";

# Read all the name of 6 activity labels and map it to merged_labels
activity_labels<-read.csv("activity_labels.txt", sep="", header=FALSE);
merged_labels$V2<-factor(merged_labels$V1,levels = activity_labels$V1,labels = activity_labels$V2);
names(merged_labels)<-c("activity_id","activity_name");

# Column bind Subjects , Labels and mesaurement Data together into data_complete
data_complete<-cbind(merged_subjects,merged_labels,merged_data_subset);

# Group by subject_id and activity_name
data_grouped<-group_by(data_complete, subject_id, activity_name);

# Summarize all the columns by mean
summarized_data<-summarise_each(data_grouped, funs(mean));

# Write the summarized_data into file system
write.table(summarized_data,"output/summarized_data.txt",sep=",",quote=FALSE, row.names=FALSE)