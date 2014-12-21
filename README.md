### Introduction

This file contains a high level description of run_analysis.R script created for coursera Reading and Cleaning Data course project. The file reads test and train files from "Human Activity Recognition Using Smartphones Data Set" (Smartphones Data), combines the files, aggregates data for mean and standard deviation measures and finds average value by subject and activity type, and outputs aggregated data into tab delimited file


### Scrip Steps

Script reads only columns that contain mean and std in the name per features.txt file provided by Smartphones Data, excludint meanfreq columns. The total number of columns is 66. 

It is assumed that rows in the Smartphones Data are ordered by subject id, then by activity type, and then by time windows. Therefore, each subject has 6 activities * 128 time window rows allocated. Based on this subjects and activities columns were created for each of the rows in the data file and appended to the data frame.

The final tidy dataset contains 68 columns - subject id, activity type, and an average of each of the mean and standard deviation measures 
