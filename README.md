# GCD_course_project
Repository for the course project for Getting and Cleaning Data Course

This repository contains files to get and clean raw data from observations conducted with the Samsung S2 accelerometer.  The purpose of this project is to take this raw data and traform it into tidy datasets of the mean and stadard deviations of the origional measurements. 

Files:
GCDproject.zip  - This zip file contains the raw data from the accelerometer observations.  The origional readMe and CodeBook files are contained in this zipfile.

TidyDataAdd.txt - This is a text datafile that contains the measurements agrregated by subject and activity

run_analysis.R - This R script performs the following procedures (detailed comments in the script):
* downloads the data from the web to the working directory.
* transforms the raw data into a single data frame with only the mean and standard deviation variables for each measurement.  
* aggregates this dataset so that means are shown by subject and activity
* writes TidyDataAgg.txt in the working directory.

CodeBook.md - A codebook that explains the datafiles created for this project.

