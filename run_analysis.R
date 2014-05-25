# run_analysis.R 
# Reads accelerometer and gyroscope data that has already been stored in files
# Produces two tidy datasets. 
# 1) accelerometer-gyroscope-activities.txt: Activity-labeled mean and std
# measurements 
# 2) subject-activity-means.txt: Summarized Activity and subject labeled mean
# of all measurements in accelerometer-gyroscope-activities.txt
#
# Requires reshape2


library(reshape2)
# Get activity labels to use for classifying data in y_train.txt
# Using a factor since the activities are labeled 1-6 in teh data
activity.data = read.table("data/activity_labels.txt", stringsAsFactors=FALSE)
# Get lowercase activites, using a standard character vector instead of a factor
activities.lowercase = tolower(activity.data[,2])
# Replace underscores with a period 
activities = gsub("_", "\\.", activities.lowercase)

# Get the column names of the test data that we want. Anything that calculates
# the mean or standard deviation of a feature
feature.data = read.table("data/features.txt")
regex = "-std\\(\\)|-mean\\(\\)" # Pulls anything ending in -std() or -mean()
rows.found = lapply(feature.data$V2, function(x) grep(regex, x))
valid.rows = !is.na(rows.found == 1)
features = feature.data[valid.rows, ]

# Combine the test and training data collection results and add in the 
# subject(user) data
test.X = read.table("data/test/X_test.txt")
train.X = read.table("data/train/X_train.txt")
full.X = rbind(test.X, train.X)

# Combine the subject data for later processing 
# Ensure the rbind is in the same order as the test data
train.subject = read.table("data/train/subject_train.txt")
test.subject = read.table("data/test/subject_test.txt")
full.subject = rbind(test.subject, train.subject)

# Combine the test and training activity results
test.y = read.table("data/test/y_test.txt")
train.y = read.table("data/train/y_train.txt")
full.y = rbind(test.y, train.y)

# Pull only the features that give us the mean or standard deviation
valid.X = full.X[,features$V1]
# Add in the subject data
valid.X = cbind(full.subject, valid.X)
# Clean up the names
# Remove parentheses
feature.names.processing = gsub("\\(\\)", "", features$V2)
# Replace dashes with dots
feature.names.processing = gsub("-", "\\.", feature.names.processing)
# Switch from camelCase to dot.notation
feature.names.processing = gsub("([A-Z])", "\\.\\L\\1", feature.names.processing, perl=TRUE)
# Finally, fix the double dots
feature.names.processing = gsub("\\.\\.", "\\.", feature.names.processing)
# Since we've added the subject(user) to the test data, we need to add a name
# for it
feature.names = c("test.subject", feature.names.processing)
names(valid.X) = feature.names

# Add the activities
activity.column = lapply(full.y, function(x) activities[x])
names(activity.column) = "activity"

combined.data = cbind(activity.column, valid.X)

# Write our nice, tidy dataset to a file
write.table(combined.data, file="accelerometer-gyroscope-activities.txt",
            col.names=TRUE,
            row.names=FALSE)


# Now let's summarize the data based on the subject and activity showing the mean for each variable
# First we melt it to create a tall, skinny table
data.melt = melt(combined.data, id=c("test.subject", "activity"))
# Then summarize
data.summarized = dcast(data.melt, test.subject + activity ~ variable, mean)

# Now let's be explicit by adding .mean to each variable name
summarized.names = (names(data.summarized))
summarized.names[3:68] = lapply(summarized.names[3:68], function(x) paste(x, ".mean", sep=""))
names(data.summarized) = summarized.names
# Write our nice, tidy dataset to a file
write.table(data.summarized, file="subject-activity-means.txt",
                             col.names=TRUE,
                             row.names=FALSE)


