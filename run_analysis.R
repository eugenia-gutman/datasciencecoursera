#setwd("C:/Users/eugenia/Documents/tmp/PD/coursera/Getting and Cleaning Data/")

download.file("http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = 'getdata_projectfiles_UCI HAR Dataset.zip')
unzip('getdata_projectfiles_UCI HAR Dataset.zip')

#STEPS 1,2,4
#due to memory issues I've read only columns that represent mean and standard deviation from the start and created labels in the reading process


#------------------------------------------------------
#------------------------------------------------------
#--------- reading test file --------------------------
#------------------------------------------------------
#------------------------------------------------------

filename <- "./UCI HAR Dataset/test/X_test.txt"

#test_file <- read.fwf(file = filename, width = c(rep(12,561)
#----- ran into memory issues when trying to read all the columns in the file
#----- reading the file as one column per record

test_file_lines <- read.fwf(file = filename, width = 16*561)

test_length <- nrow(test_file_lines)

line <- 1
repeat{
	tBodyAcc_mean_X <- as.numeric(substr(test_file_lines[line,],3,16))
	tBodyAcc_mean_Y <- as.numeric(substr(test_file_lines[line,],19,32))
	tBodyAcc_mean_Z <- as.numeric(substr(test_file_lines[line,],35,48))
	tBodyAcc_std_X <- as.numeric(substr(test_file_lines[line,],51,64))
	tBodyAcc_std_Y <- as.numeric(substr(test_file_lines[line,],67,80))
	tBodyAcc_std_Z <- as.numeric(substr(test_file_lines[line,],83,96))
	tGravityAcc_mean_X <- as.numeric(substr(test_file_lines[line,],643,656))
	tGravityAcc_mean_Y <- as.numeric(substr(test_file_lines[line,],659,672))
	tGravityAcc_mean_Z <- as.numeric(substr(test_file_lines[line,],675,688))
	tGravityAcc_std_X <- as.numeric(substr(test_file_lines[line,],691,704))
	tGravityAcc_std_Y <- as.numeric(substr(test_file_lines[line,],707,720))
	tGravityAcc_std_Z <- as.numeric(substr(test_file_lines[line,],723,736))
	tBodyAccJerk_mean_X <- as.numeric(substr(test_file_lines[line,],1283,1296))
	tBodyAccJerk_mean_Y <- as.numeric(substr(test_file_lines[line,],1299,1312))
	tBodyAccJerk_mean_Z <- as.numeric(substr(test_file_lines[line,],1315,1328))
	tBodyAccJerk_std_X <- as.numeric(substr(test_file_lines[line,],1331,1344))
	tBodyAccJerk_std_Y <- as.numeric(substr(test_file_lines[line,],1347,1360))
	tBodyAccJerk_std_Z <- as.numeric(substr(test_file_lines[line,],1363,1376))
	tBodyGyro_mean_X <- as.numeric(substr(test_file_lines[line,],1923,1936))
	tBodyGyro_mean_Y <- as.numeric(substr(test_file_lines[line,],1939,1952))
	tBodyGyro_mean_Z <- as.numeric(substr(test_file_lines[line,],1955,1968))
	tBodyGyro_std_X <- as.numeric(substr(test_file_lines[line,],1971,1984))
	tBodyGyro_std_Y <- as.numeric(substr(test_file_lines[line,],1987,2000))
	tBodyGyro_std_Z <- as.numeric(substr(test_file_lines[line,],2003,2016))
	tBodyGyroJerk_mean_X <- as.numeric(substr(test_file_lines[line,],2563,2576))
	tBodyGyroJerk_mean_Y <- as.numeric(substr(test_file_lines[line,],2579,2592))
	tBodyGyroJerk_mean_Z <- as.numeric(substr(test_file_lines[line,],2595,2608))
	tBodyGyroJerk_std_X <- as.numeric(substr(test_file_lines[line,],2611,2624))
	tBodyGyroJerk_std_Y <- as.numeric(substr(test_file_lines[line,],2627,2640))
	tBodyGyroJerk_std_Z <- as.numeric(substr(test_file_lines[line,],2643,2656))
	tBodyAccMag_mean <- as.numeric(substr(test_file_lines[line,],3203,3216))
	tBodyAccMag_std <- as.numeric(substr(test_file_lines[line,],3219,3232))
	tGravityAccMag_mean <- as.numeric(substr(test_file_lines[line,],3411,3424))
	tGravityAccMag_std <- as.numeric(substr(test_file_lines[line,],3427,3440))
	tBodyAccJerkMag_mean <- as.numeric(substr(test_file_lines[line,],3619,3632))
	tBodyAccJerkMag_std <- as.numeric(substr(test_file_lines[line,],3635,3648))
	tBodyGyroMag_mean <- as.numeric(substr(test_file_lines[line,],3827,3840))
	tBodyGyroMag_std <- as.numeric(substr(test_file_lines[line,],3843,3856))
	tBodyGyroJerkMag_mean <- as.numeric(substr(test_file_lines[line,],4035,4048))
	tBodyGyroJerkMag_std <- as.numeric(substr(test_file_lines[line,],4051,4064))
	fBodyAcc_mean_X <- as.numeric(substr(test_file_lines[line,],4243,4256))
	fBodyAcc_mean_Y <- as.numeric(substr(test_file_lines[line,],4259,4272))
	fBodyAcc_mean_Z <- as.numeric(substr(test_file_lines[line,],4275,4288))
	fBodyAcc_std_X <- as.numeric(substr(test_file_lines[line,],4291,4304))
	fBodyAcc_std_Y <- as.numeric(substr(test_file_lines[line,],4307,4320))
	fBodyAcc_std_Z <- as.numeric(substr(test_file_lines[line,],4323,4336))
	fBodyAccJerk_mean_X <- as.numeric(substr(test_file_lines[line,],5507,5520))
	fBodyAccJerk_mean_Y <- as.numeric(substr(test_file_lines[line,],5523,5536))
	fBodyAccJerk_mean_Z <- as.numeric(substr(test_file_lines[line,],5539,5552))
	fBodyAccJerk_std_X <- as.numeric(substr(test_file_lines[line,],5555,5568))
	fBodyAccJerk_std_Y <- as.numeric(substr(test_file_lines[line,],5571,5584))
	fBodyAccJerk_std_Z <- as.numeric(substr(test_file_lines[line,],5587,5600))
	fBodyGyro_mean_X <- as.numeric(substr(test_file_lines[line,],6771,6784))
	fBodyGyro_mean_Y <- as.numeric(substr(test_file_lines[line,],6787,6800))
	fBodyGyro_mean_Z <- as.numeric(substr(test_file_lines[line,],6803,6816))
	fBodyGyro_std_X <- as.numeric(substr(test_file_lines[line,],6819,6832))
	fBodyGyro_std_Y <- as.numeric(substr(test_file_lines[line,],6835,6848))
	fBodyGyro_std_Z <- as.numeric(substr(test_file_lines[line,],6851,6864))
	fBodyAccMag_mean <- as.numeric(substr(test_file_lines[line,],8035,8048))
	fBodyAccMag_std <- as.numeric(substr(test_file_lines[line,],8051,8064))
	fBodyBodyAccJerkMag_mean <- as.numeric(substr(test_file_lines[line,],8243,8256))
	fBodyBodyAccJerkMag_std <- as.numeric(substr(test_file_lines[line,],8259,8272))
	fBodyBodyGyroMag_mean <- as.numeric(substr(test_file_lines[line,],8451,8464))
	fBodyBodyGyroMag_std <- as.numeric(substr(test_file_lines[line,],8467,8480))
	fBodyBodyGyroJerkMag_mean <- as.numeric(substr(test_file_lines[line,],8659,8672))
	fBodyBodyGyroJerkMag_std <- as.numeric(substr(test_file_lines[line,],8675,8688))

	

	test_file_row <- data.frame(tBodyAcc_mean_X, tBodyAcc_mean_Y, tBodyAcc_mean_Z, tBodyAcc_std_X, tBodyAcc_std_Y, tBodyAcc_std_Z, 
						tGravityAcc_mean_X, tGravityAcc_mean_Y, tGravityAcc_mean_Z, tGravityAcc_std_X, tGravityAcc_std_Y, 
						tGravityAcc_std_Z, tBodyAccJerk_mean_X, tBodyAccJerk_mean_Y, tBodyAccJerk_mean_Z, tBodyAccJerk_std_X, 
						tBodyAccJerk_std_Y, tBodyAccJerk_std_Z, tBodyGyro_mean_X, tBodyGyro_mean_Y, tBodyGyro_mean_Z, tBodyGyro_std_X,
						tBodyGyro_std_Y, tBodyGyro_std_Z, tBodyGyroJerk_mean_X, tBodyGyroJerk_mean_Y, tBodyGyroJerk_mean_Z, 
						tBodyGyroJerk_std_X, tBodyGyroJerk_std_Y, tBodyGyroJerk_std_Z, tBodyAccMag_mean, tBodyAccMag_std, 
						tGravityAccMag_mean, tGravityAccMag_std, tBodyAccJerkMag_mean, tBodyAccJerkMag_std, tBodyGyroMag_mean, 
						tBodyGyroMag_std, tBodyGyroJerkMag_mean, tBodyGyroJerkMag_std, fBodyAcc_mean_X, fBodyAcc_mean_Y, 
						fBodyAcc_mean_Z, fBodyAcc_std_X, fBodyAcc_std_Y, fBodyAcc_std_Z, fBodyAccJerk_mean_X, fBodyAccJerk_mean_Y, 
						fBodyAccJerk_mean_Z, fBodyAccJerk_std_X, fBodyAccJerk_std_Y, fBodyAccJerk_std_Z, fBodyGyro_mean_X, 
						fBodyGyro_mean_Y, fBodyGyro_mean_Z, fBodyGyro_std_X, fBodyGyro_std_Y, fBodyGyro_std_Z, fBodyAccMag_mean, 
						fBodyAccMag_std, fBodyBodyAccJerkMag_mean, fBodyBodyAccJerkMag_std, fBodyBodyGyroMag_mean, 
						fBodyBodyGyroMag_std, fBodyBodyGyroJerkMag_mean, fBodyBodyGyroJerkMag_std)
	if (line == 1) {test_file <- test_file_row} else {test_file <- rbind(test_file, test_file_row)}

	line <- line + 1
	if (line > test_length) break
}


#------------------------------------------------------
#------------------------------------------------------
#--------- reading train file --------------------------
#------------------------------------------------------
#------------------------------------------------------

filename <- "./UCI HAR Dataset/train/X_train.txt"

train_file_lines <- read.fwf(file = filename, width = 16*561)

train_length <- nrow(train_file_lines)

line <- 1
repeat{
	tBodyAcc_mean_X <- as.numeric(substr(train_file_lines[line,],3,16))
	tBodyAcc_mean_Y <- as.numeric(substr(train_file_lines[line,],19,32))
	tBodyAcc_mean_Z <- as.numeric(substr(train_file_lines[line,],35,48))
	tBodyAcc_std_X <- as.numeric(substr(train_file_lines[line,],51,64))
	tBodyAcc_std_Y <- as.numeric(substr(train_file_lines[line,],67,80))
	tBodyAcc_std_Z <- as.numeric(substr(train_file_lines[line,],83,96))
	tGravityAcc_mean_X <- as.numeric(substr(train_file_lines[line,],643,656))
	tGravityAcc_mean_Y <- as.numeric(substr(train_file_lines[line,],659,672))
	tGravityAcc_mean_Z <- as.numeric(substr(train_file_lines[line,],675,688))
	tGravityAcc_std_X <- as.numeric(substr(train_file_lines[line,],691,704))
	tGravityAcc_std_Y <- as.numeric(substr(train_file_lines[line,],707,720))
	tGravityAcc_std_Z <- as.numeric(substr(train_file_lines[line,],723,736))
	tBodyAccJerk_mean_X <- as.numeric(substr(train_file_lines[line,],1283,1296))
	tBodyAccJerk_mean_Y <- as.numeric(substr(train_file_lines[line,],1299,1312))
	tBodyAccJerk_mean_Z <- as.numeric(substr(train_file_lines[line,],1315,1328))
	tBodyAccJerk_std_X <- as.numeric(substr(train_file_lines[line,],1331,1344))
	tBodyAccJerk_std_Y <- as.numeric(substr(train_file_lines[line,],1347,1360))
	tBodyAccJerk_std_Z <- as.numeric(substr(train_file_lines[line,],1363,1376))
	tBodyGyro_mean_X <- as.numeric(substr(train_file_lines[line,],1923,1936))
	tBodyGyro_mean_Y <- as.numeric(substr(train_file_lines[line,],1939,1952))
	tBodyGyro_mean_Z <- as.numeric(substr(train_file_lines[line,],1955,1968))
	tBodyGyro_std_X <- as.numeric(substr(train_file_lines[line,],1971,1984))
	tBodyGyro_std_Y <- as.numeric(substr(train_file_lines[line,],1987,2000))
	tBodyGyro_std_Z <- as.numeric(substr(train_file_lines[line,],2003,2016))
	tBodyGyroJerk_mean_X <- as.numeric(substr(train_file_lines[line,],2563,2576))
	tBodyGyroJerk_mean_Y <- as.numeric(substr(train_file_lines[line,],2579,2592))
	tBodyGyroJerk_mean_Z <- as.numeric(substr(train_file_lines[line,],2595,2608))
	tBodyGyroJerk_std_X <- as.numeric(substr(train_file_lines[line,],2611,2624))
	tBodyGyroJerk_std_Y <- as.numeric(substr(train_file_lines[line,],2627,2640))
	tBodyGyroJerk_std_Z <- as.numeric(substr(train_file_lines[line,],2643,2656))
	tBodyAccMag_mean <- as.numeric(substr(train_file_lines[line,],3203,3216))
	tBodyAccMag_std <- as.numeric(substr(train_file_lines[line,],3219,3232))
	tGravityAccMag_mean <- as.numeric(substr(train_file_lines[line,],3411,3424))
	tGravityAccMag_std <- as.numeric(substr(train_file_lines[line,],3427,3440))
	tBodyAccJerkMag_mean <- as.numeric(substr(train_file_lines[line,],3619,3632))
	tBodyAccJerkMag_std <- as.numeric(substr(train_file_lines[line,],3635,3648))
	tBodyGyroMag_mean <- as.numeric(substr(train_file_lines[line,],3827,3840))
	tBodyGyroMag_std <- as.numeric(substr(train_file_lines[line,],3843,3856))
	tBodyGyroJerkMag_mean <- as.numeric(substr(train_file_lines[line,],4035,4048))
	tBodyGyroJerkMag_std <- as.numeric(substr(train_file_lines[line,],4051,4064))
	fBodyAcc_mean_X <- as.numeric(substr(train_file_lines[line,],4243,4256))
	fBodyAcc_mean_Y <- as.numeric(substr(train_file_lines[line,],4259,4272))
	fBodyAcc_mean_Z <- as.numeric(substr(train_file_lines[line,],4275,4288))
	fBodyAcc_std_X <- as.numeric(substr(train_file_lines[line,],4291,4304))
	fBodyAcc_std_Y <- as.numeric(substr(train_file_lines[line,],4307,4320))
	fBodyAcc_std_Z <- as.numeric(substr(train_file_lines[line,],4323,4336))
	fBodyAccJerk_mean_X <- as.numeric(substr(train_file_lines[line,],5507,5520))
	fBodyAccJerk_mean_Y <- as.numeric(substr(train_file_lines[line,],5523,5536))
	fBodyAccJerk_mean_Z <- as.numeric(substr(train_file_lines[line,],5539,5552))
	fBodyAccJerk_std_X <- as.numeric(substr(train_file_lines[line,],5555,5568))
	fBodyAccJerk_std_Y <- as.numeric(substr(train_file_lines[line,],5571,5584))
	fBodyAccJerk_std_Z <- as.numeric(substr(train_file_lines[line,],5587,5600))
	fBodyGyro_mean_X <- as.numeric(substr(train_file_lines[line,],6771,6784))
	fBodyGyro_mean_Y <- as.numeric(substr(train_file_lines[line,],6787,6800))
	fBodyGyro_mean_Z <- as.numeric(substr(train_file_lines[line,],6803,6816))
	fBodyGyro_std_X <- as.numeric(substr(train_file_lines[line,],6819,6832))
	fBodyGyro_std_Y <- as.numeric(substr(train_file_lines[line,],6835,6848))
	fBodyGyro_std_Z <- as.numeric(substr(train_file_lines[line,],6851,6864))
	fBodyAccMag_mean <- as.numeric(substr(train_file_lines[line,],8035,8048))
	fBodyAccMag_std <- as.numeric(substr(train_file_lines[line,],8051,8064))
	fBodyBodyAccJerkMag_mean <- as.numeric(substr(train_file_lines[line,],8243,8256))
	fBodyBodyAccJerkMag_std <- as.numeric(substr(train_file_lines[line,],8259,8272))
	fBodyBodyGyroMag_mean <- as.numeric(substr(train_file_lines[line,],8451,8464))
	fBodyBodyGyroMag_std <- as.numeric(substr(train_file_lines[line,],8467,8480))
	fBodyBodyGyroJerkMag_mean <- as.numeric(substr(train_file_lines[line,],8659,8672))
	fBodyBodyGyroJerkMag_std <- as.numeric(substr(train_file_lines[line,],8675,8688))




	train_file_row <- data.frame(tBodyAcc_mean_X, tBodyAcc_mean_Y, tBodyAcc_mean_Z, tBodyAcc_std_X, tBodyAcc_std_Y, tBodyAcc_std_Z, 
						tGravityAcc_mean_X, tGravityAcc_mean_Y, tGravityAcc_mean_Z, tGravityAcc_std_X, tGravityAcc_std_Y, 
						tGravityAcc_std_Z, tBodyAccJerk_mean_X, tBodyAccJerk_mean_Y, tBodyAccJerk_mean_Z, tBodyAccJerk_std_X, 
						tBodyAccJerk_std_Y, tBodyAccJerk_std_Z, tBodyGyro_mean_X, tBodyGyro_mean_Y, tBodyGyro_mean_Z, tBodyGyro_std_X,
						tBodyGyro_std_Y, tBodyGyro_std_Z, tBodyGyroJerk_mean_X, tBodyGyroJerk_mean_Y, tBodyGyroJerk_mean_Z, 
						tBodyGyroJerk_std_X, tBodyGyroJerk_std_Y, tBodyGyroJerk_std_Z, tBodyAccMag_mean, tBodyAccMag_std, 
						tGravityAccMag_mean, tGravityAccMag_std, tBodyAccJerkMag_mean, tBodyAccJerkMag_std, tBodyGyroMag_mean, 
						tBodyGyroMag_std, tBodyGyroJerkMag_mean, tBodyGyroJerkMag_std, fBodyAcc_mean_X, fBodyAcc_mean_Y, 
						fBodyAcc_mean_Z, fBodyAcc_std_X, fBodyAcc_std_Y, fBodyAcc_std_Z, fBodyAccJerk_mean_X, fBodyAccJerk_mean_Y, 
						fBodyAccJerk_mean_Z, fBodyAccJerk_std_X, fBodyAccJerk_std_Y, fBodyAccJerk_std_Z, fBodyGyro_mean_X, 
						fBodyGyro_mean_Y, fBodyGyro_mean_Z, fBodyGyro_std_X, fBodyGyro_std_Y, fBodyGyro_std_Z, fBodyAccMag_mean, 
						fBodyAccMag_std, fBodyBodyAccJerkMag_mean, fBodyBodyAccJerkMag_std, fBodyBodyGyroMag_mean, 
						fBodyBodyGyroMag_std, fBodyBodyGyroJerkMag_mean, fBodyBodyGyroJerkMag_std)
	if (line == 1) {train_file <- train_file_row} else {train_file <- rbind(train_file, train_file_row)}

	line <- line + 1
	if (line > train_length) break
}

#-------- combine test and train data ---------------

data <- rbind(train_file, test_file)


#STEP 3
#-------- creating subject id and activity ----------

subj_id <- c(rep(1,6*128))
subjects <- data.frame(subj_id)


i <- 2
repeat {
	subj_id <- c(rep(i,6*128))
	subject <- data.frame(subj_id)
	subjects <- rbind(subjects, subject)
	i <- i+1
	if (i > 100) break
}

act_list <- c('WALKING','WALKING_UPSTAIRS','WALKING_DOWNSTAIRS', 'SITTING', 'STANDING', 'LAYING')
act <- c(rep(act_list[1],128))
activities <- data.frame(act)
i <- 2
repeat{
	act <- c(rep(act_list[i],128))
	activity <- data.frame(act)
	activities <- rbind(activities, activity)
	if(i<6) {i <- i+1} else i<-1
	if (nrow(activities) > nrow(data)) break
}

subjects <- subjects[1:nrow(data),]
activities <- activities[1:nrow(data),]

subj_and_act <- data.frame(subjects,activities)

#---------- add subject id and activities to the data ----------------

data <- cbind(subj_and_act, data)

#STEP 5

agg_data <- aggregate(list(data$tBodyAcc_mean_X, data$tBodyAcc_mean_Y, data$tBodyAcc_mean_Z, data$tBodyAcc_std_X, data$tBodyAcc_std_Y, 
					data$tBodyAcc_std_Z, data$tGravityAcc_mean_X, data$tGravityAcc_mean_Y, data$tGravityAcc_mean_Z, data$tGravityAcc_std_X, 
					data$tGravityAcc_std_Y, data$tGravityAcc_std_Z, data$tBodyAccJerk_mean_X, data$tBodyAccJerk_mean_Y, data$tBodyAccJerk_mean_Z, 
					data$tBodyAccJerk_std_X, data$tBodyAccJerk_std_Y, data$tBodyAccJerk_std_Z, data$tBodyGyro_mean_X, data$tBodyGyro_mean_Y, 
					data$tBodyGyro_mean_Z, data$tBodyGyro_std_X, data$tBodyGyro_std_Y, data$tBodyGyro_std_Z, data$tBodyGyroJerk_mean_X, 
					data$tBodyGyroJerk_mean_Y, data$tBodyGyroJerk_mean_Z, data$tBodyGyroJerk_std_X, data$tBodyGyroJerk_std_Y, data$tBodyGyroJerk_std_Z, 
					data$tBodyAccMag_mean, data$tBodyAccMag_std, data$tGravityAccMag_mean, data$tGravityAccMag_std, data$tBodyAccJerkMag_mean, 
					data$tBodyAccJerkMag_std, data$tBodyGyroMag_mean, data$tBodyGyroMag_std, data$tBodyGyroJerkMag_mean, data$tBodyGyroJerkMag_std, 
					data$fBodyAcc_mean_X, data$fBodyAcc_mean_Y, data$fBodyAcc_mean_Z, data$fBodyAcc_std_X, data$fBodyAcc_std_Y, data$fBodyAcc_std_Z, 
					data$fBodyAccJerk_mean_X, data$fBodyAccJerk_mean_Y, data$fBodyAccJerk_mean_Z, data$fBodyAccJerk_std_X, data$fBodyAccJerk_std_Y, 
					data$fBodyAccJerk_std_Z, data$fBodyGyro_mean_X, data$fBodyGyro_mean_Y, data$fBodyGyro_mean_Z, data$fBodyGyro_std_X, 
					data$fBodyGyro_std_Y, data$fBodyGyro_std_Z, data$fBodyAccMag_mean, data$fBodyAccMag_std, data$fBodyBodyAccJerkMag_mean, 
					data$fBodyBodyAccJerkMag_std, data$fBodyBodyGyroMag_mean, data$fBodyBodyGyroMag_std, data$fBodyBodyGyroJerkMag_mean, 
					data$fBodyBodyGyroJerkMag_std), 
				list(subject = data$subjects, activity = data$activities), FUN = ave)

#---------- convert list of averages into one value ------------


i <- 1
repeat{
	subject = agg_data[i,1]
	activity = agg_data[i,2]
	tBodyAcc_mean_X_avg <- data.frame(agg_data[i,3])[1,1]
	tBodyAcc_mean_Y_avg <- data.frame(agg_data[i,4])[1,1]
	tBodyAcc_mean_Z_avg <- data.frame(agg_data[i,5])[1,1]
	tBodyAcc_std_X_avg <- data.frame(agg_data[i,6])[1,1]
	tBodyAcc_std_Y_avg <- data.frame(agg_data[i,7])[1,1]
	tBodyAcc_std_Z_avg <- data.frame(agg_data[i,8])[1,1]
	tGravityAcc_mean_X_avg <- data.frame(agg_data[i,9])[1,1]
	tGravityAcc_mean_Y_avg <- data.frame(agg_data[i,10])[1,1]
	tGravityAcc_mean_Z_avg <- data.frame(agg_data[i,11])[1,1]
	tGravityAcc_std_X_avg <- data.frame(agg_data[i,12])[1,1]
	tGravityAcc_std_Y_avg <- data.frame(agg_data[i,13])[1,1]
	tGravityAcc_std_Z_avg <- data.frame(agg_data[i,14])[1,1]
	tBodyAccJerk_mean_X_avg <- data.frame(agg_data[i,15])[1,1]
	tBodyAccJerk_mean_Y_avg <- data.frame(agg_data[i,16])[1,1]
	tBodyAccJerk_mean_Z_avg <- data.frame(agg_data[i,17])[1,1]
	tBodyAccJerk_std_X_avg <- data.frame(agg_data[i,18])[1,1]
	tBodyAccJerk_std_Y_avg <- data.frame(agg_data[i,19])[1,1]
	tBodyAccJerk_std_Z_avg <- data.frame(agg_data[i,20])[1,1]
	tBodyGyro_mean_X_avg <- data.frame(agg_data[i,21])[1,1]
	tBodyGyro_mean_Y_avg <- data.frame(agg_data[i,22])[1,1]
	tBodyGyro_mean_Z_avg <- data.frame(agg_data[i,23])[1,1]
	tBodyGyro_std_X_avg <- data.frame(agg_data[i,24])[1,1]
	tBodyGyro_std_Y_avg <- data.frame(agg_data[i,25])[1,1]
	tBodyGyro_std_Z_avg <- data.frame(agg_data[i,26])[1,1]
	tBodyGyroJerk_mean_X_avg <- data.frame(agg_data[i,27])[1,1]
	tBodyGyroJerk_mean_Y_avg <- data.frame(agg_data[i,28])[1,1]
	tBodyGyroJerk_mean_Z_avg <- data.frame(agg_data[i,29])[1,1]
	tBodyGyroJerk_std_X_avg <- data.frame(agg_data[i,30])[1,1]
	tBodyGyroJerk_std_Y_avg <- data.frame(agg_data[i,31])[1,1]
	tBodyGyroJerk_std_Z_avg <- data.frame(agg_data[i,32])[1,1]
	tBodyAccMag_mean_avg <- data.frame(agg_data[i,33])[1,1]
	tBodyAccMag_std_avg <- data.frame(agg_data[i,34])[1,1]
	tGravityAccMag_mean_avg <- data.frame(agg_data[i,35])[1,1]
	tGravityAccMag_std_avg <- data.frame(agg_data[i,36])[1,1]
	tBodyAccJerkMag_mean_avg <- data.frame(agg_data[i,37])[1,1]
	tBodyAccJerkMag_std_avg <- data.frame(agg_data[i,38])[1,1]
	tBodyGyroMag_mean_avg <- data.frame(agg_data[i,39])[1,1]
	tBodyGyroMag_std_avg <- data.frame(agg_data[i,40])[1,1]
	tBodyGyroJerkMag_mean_avg <- data.frame(agg_data[i,41])[1,1]
	tBodyGyroJerkMag_std_avg <- data.frame(agg_data[i,42])[1,1]
	fBodyAcc_mean_X_avg <- data.frame(agg_data[i,43])[1,1]
	fBodyAcc_mean_Y_avg <- data.frame(agg_data[i,44])[1,1]
	fBodyAcc_mean_Z_avg <- data.frame(agg_data[i,45])[1,1]
	fBodyAcc_std_X_avg <- data.frame(agg_data[i,46])[1,1]
	fBodyAcc_std_Y_avg <- data.frame(agg_data[i,47])[1,1]
	fBodyAcc_std_Z_avg <- data.frame(agg_data[i,48])[1,1]
	fBodyAccJerk_mean_X_avg <- data.frame(agg_data[i,49])[1,1]
	fBodyAccJerk_mean_Y_avg <- data.frame(agg_data[i,50])[1,1]
	fBodyAccJerk_mean_Z_avg <- data.frame(agg_data[i,51])[1,1]
	fBodyAccJerk_std_X_avg <- data.frame(agg_data[i,52])[1,1]
	fBodyAccJerk_std_Y_avg <- data.frame(agg_data[i,53])[1,1]
	fBodyAccJerk_std_Z_avg <- data.frame(agg_data[i,54])[1,1]
	fBodyGyro_mean_X_avg <- data.frame(agg_data[i,55])[1,1]
	fBodyGyro_mean_Y_avg <- data.frame(agg_data[i,56])[1,1]
	fBodyGyro_mean_Z_avg <- data.frame(agg_data[i,57])[1,1]
	fBodyGyro_std_X_avg <- data.frame(agg_data[i,58])[1,1]
	fBodyGyro_std_Y_avg <- data.frame(agg_data[i,59])[1,1]
	fBodyGyro_std_Z_avg <- data.frame(agg_data[i,60])[1,1]
	fBodyAccMag_mean_avg <- data.frame(agg_data[i,61])[1,1]
	fBodyAccMag_std_avg <- data.frame(agg_data[i,62])[1,1]
	fBodyBodyAccJerkMag_mean_avg <- data.frame(agg_data[i,63])[1,1]
	fBodyBodyAccJerkMag_std_avg <- data.frame(agg_data[i,64])[1,1]
	fBodyBodyGyroMag_mean_avg <- data.frame(agg_data[i,65])[1,1]
	fBodyBodyGyroMag_std_avg <- data.frame(agg_data[i,66])[1,1]
	fBodyBodyGyroJerkMag_mean_avg <- data.frame(agg_data[i,67])[1,1]
	fBodyBodyGyroJerkMag_std_avg <- data.frame(agg_data[i,68])[1,1]

	
	tidy_data_row <- data.frame(subject, activity, 
						tBodyAcc_mean_X_avg, tBodyAcc_mean_Y_avg, tBodyAcc_mean_Z_avg, tBodyAcc_std_X_avg, tBodyAcc_std_Y_avg, tBodyAcc_std_Z_avg, 
						tGravityAcc_mean_X_avg, tGravityAcc_mean_Y_avg, tGravityAcc_mean_Z_avg, tGravityAcc_std_X_avg, tGravityAcc_std_Y_avg, 
						tGravityAcc_std_Z_avg, tBodyAccJerk_mean_X_avg, tBodyAccJerk_mean_Y_avg, tBodyAccJerk_mean_Z_avg, tBodyAccJerk_std_X_avg, 
						tBodyAccJerk_std_Y_avg, tBodyAccJerk_std_Z_avg, tBodyGyro_mean_X_avg, tBodyGyro_mean_Y_avg, tBodyGyro_mean_Z_avg, 
						tBodyGyro_std_X_avg, tBodyGyro_std_Y_avg, tBodyGyro_std_Z_avg, tBodyGyroJerk_mean_X_avg, tBodyGyroJerk_mean_Y_avg, 
						tBodyGyroJerk_mean_Z_avg, tBodyGyroJerk_std_X_avg, tBodyGyroJerk_std_Y_avg, tBodyGyroJerk_std_Z_avg, tBodyAccMag_mean_avg, 
						tBodyAccMag_std_avg, tGravityAccMag_mean_avg, tGravityAccMag_std_avg, tBodyAccJerkMag_mean_avg, tBodyAccJerkMag_std_avg, 
						tBodyGyroMag_mean_avg, tBodyGyroMag_std_avg, tBodyGyroJerkMag_mean_avg, tBodyGyroJerkMag_std_avg, fBodyAcc_mean_X_avg, 
						fBodyAcc_mean_Y_avg, fBodyAcc_mean_Z_avg, fBodyAcc_std_X_avg, fBodyAcc_std_Y_avg, fBodyAcc_std_Z_avg, fBodyAccJerk_mean_X_avg, 
						fBodyAccJerk_mean_Y_avg, fBodyAccJerk_mean_Z_avg, fBodyAccJerk_std_X_avg, fBodyAccJerk_std_Y_avg, fBodyAccJerk_std_Z_avg, 
						fBodyGyro_mean_X_avg, fBodyGyro_mean_Y_avg, fBodyGyro_mean_Z_avg, fBodyGyro_std_X_avg, fBodyGyro_std_Y_avg, fBodyGyro_std_Z_avg, 
						fBodyAccMag_mean_avg, fBodyAccMag_std_avg, fBodyBodyAccJerkMag_mean_avg, fBodyBodyAccJerkMag_std_avg, fBodyBodyGyroMag_mean_avg, 
						fBodyBodyGyroMag_std_avg, fBodyBodyGyroJerkMag_mean_avg, fBodyBodyGyroJerkMag_std_avg)
	if (i==1) {tidy_data <- tidy_data_row} else {tidy_data <- rbind(tidy_data, tidy_data_row)}
	
	i <- i+1
	if (i > nrow(agg_data)) break
}

	
write.table(tidy_data, "tidy_data.txt", row.names = FALSE, sep = "\t")


