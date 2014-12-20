## load libraries
#library(data.table)
library(dplyr)
# much much much faster way to read fixed width files
library(LaF)

# get feature list
t_features <- read.table("./UCI HAR Dataset/features.txt",
                         sep = " ",
                         header = F,
                         col.names = c("id", "name"),
                         stringsAsFactors = F
                        )

# read test data using LaF
# file is fwf, all columns are 16 signs long
X_test_data <- laf_open_fwf("./UCI HAR Dataset/test/X_test.txt",
                            column_widths = c(rep(16, times = 561)),
                            column_types = c(rep("numeric", times = 561)),
                            column_names = t_features$name)

# convert to data frame
t_test <- X_test_data[,]
# read activity of test data
y_test_data <- read.table("./UCI HAR Dataset/test/y_test.txt", sep = "\n")
# read subject data
s_test_data <- read.table("./UCI HAR Dataset/test/subject_test.txt", sep = "\n")
# append activity and subject test data
t_test <- cbind(subj_id = s_test_data[,1], activity_id = y_test_data[,1], t_test)
# filter only columns that contain -mean() and -std()
t_test_f <- select(t_test, subj_id, activity_id, contains(".mean.."), contains(".std.."))

# do same things with train data
X_train_data <- laf_open_fwf("./UCI HAR Dataset/train/X_train.txt",
                             column_widths = c(rep(16, times = 561)),
                             column_types = c(rep("numeric", times = 561)),
                             column_names = t_features$name)

# convert to data frame
t_train <- X_train_data[,]
# read activity of train data
y_train_data <- read.table("./UCI HAR Dataset/train/y_train.txt", sep = "\n")
# read subject data
s_train_data <- read.table("./UCI HAR Dataset/train/subject_train.txt", sep = "\n")
# append activity and subject train data
t_train <- cbind(subj_id = s_train_data[,1], activity_id = y_train_data[,1], t_train)
# filter only columns that contain -mean() and -std()
t_train_f <- select(t_train, subj_id, activity_id, contains(".mean.."), contains(".std.."))

# now merge training and testing data together
t_data <- rbind(t_train_f, t_test_f)

# add descriptive activity names
t_activities <- read.table("./UCI HAR Dataset/activity_labels.txt",
                           sep = " ",
                           col.names = c("id", "name"),
                           #colClasses = c("numeric", "character"),
                           stringsAsFactors = F)
# join and re-arrange columns after join
t_data <- inner_join(t_activities, t_data, by = c("id" = "activity_id")) %>%
        select(subj_id, activity = name, 4:69)

# create tidy data with means for columns 3:68
t_tidy <- t_data %>%
        arrange(subj_id, activity) %>%
        group_by(subj_id, activity) %>%
        summarise_each(funs(mean), 3:68)

# save tidy data to file
write.table(t_tidy, "./tidy.txt", row.names = F)

t_tidy
