# This script is about the coding done in R about getting and cleaning dataset.

setInternet2(TRUE)
if(!file.exists(baseFolder)) {
dataUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
file<-file.path(getwd(),"UCI HAR Dataset.zip")
download.file(dataUrl,file)
unzip(file)
}

baseFolder <- 'UCI HAR Dataset'
trainFolder <- 'train'
testFolder <- 'test'


activityFilename <- 'activity_labels.txt'
featuresFilename <- 'features.txt'
trainSubjectFilename <- 'subject_train.txt'
trainLabelsFilename <- 'y_train.txt'
trainDataFilename <- 'X_train.txt'
testSubjectFilename <- 'subject_test.txt'
testLabelsFilename <- 'y_test.txt'
testDataFilename <- 'X_test.txt'


activityFilename <- file.path(baseFolder, activityFilename)
featuresFilename <- file.path(baseFolder, featuresFilename)
trainLabelsFilename <- file.path(baseFolder, trainFolder, trainLabelsFilename)
trainSubjectFilename <- file.path(baseFolder, trainFolder, trainSubjectFilename)
trainDataFilename <- file.path(baseFolder, trainFolder, trainDataFilename)
testLabelsFilename <- file.path(baseFolder, testFolder, testLabelsFilename)
testSubjectFilename <- file.path(baseFolder, testFolder, testSubjectFilename)
testDataFilename <- file.path(baseFolder, testFolder, testDataFilename)


features$Feature <- gsub('\\(|\\)', '', features$Feature)
features$Feature <- gsub('-|,', '.', features$Feature)
features$Feature <- gsub('BodyBody', 'Body', features$Feature)
features$Feature <- gsub('^f', 'Frequency.', features$Feature)
features$Feature <- gsub('^t', 'Time.', features$Feature)
features$Feature <- gsub('^angle', 'Angle.', features$Feature)
features$Feature <- gsub('mean', 'Mean', features$Feature)
features$Feature <- gsub('tBody', 'TimeBody', features$Feature)


colnames(testData) <- features$Feature
colnames(trainData) <- features$Feature


labels <- activity$Activity
testFactors <- factor(testLabels$Number)
trainFactors <- factor(trainLabels$Number)
testActivity <- data.frame(Activity=as.character(factor(testFactors, labels=labels)))
trainActivity <- data.frame(Activity=as.character(factor(trainFactors, labels=labels)))

testMergedData <- cbind(testSubject, testActivity, testData)
trainMergedData <- cbind(trainSubject, trainActivity, trainData)


mergedData <- rbind(testMergedData, trainMergedData)

cols <- c()
colNames <- colnames(mergedData)
for (i in seq_along(colNames)){
name <- colNames[i]
check1 <- grep('Angle', x=name)
check2 <- grep('MeanFreq', x=name)
if (!(any(check1) | any(check2))){
cols <- c(cols, i)
}
}


mergedData <- mergedData[,cols]
mergedDataSubset <- mergedData[,grep('Subject|Activity|Mean|std',x=colnames(mergedData))]


library(data.table)
tidyData <- data.table(mergedDataSubset)
tidyData <- tidyData[,lapply(.SD, mean), by=c('Subject', 'Activity')]
tidyData <- tidyData[order(tidyData$Subject, tidyData$Activity),]

tidyFileName <- 'tidy.txt'
write.table(tidyData, file=tidyFileName, row.names=FALSE)

