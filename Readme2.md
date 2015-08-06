The purpose of this file is to give an overview of the common processes that underlie each of the scripts and to state what each of the files are in this repository. This file is
organized into two main parts.

## Part One: Common Processes of All Scripts

The first portion of the code in each of the scripts (plot1.R, plot2.R, plot3.R and plot4.R) loads the dataset, subsets it to only include February 1 & 2, 2007 (per the assignment
directions) and starts with a required package: lubridate. This package makes it easier to deal with dates and times in R. If you do not have this package installed, please install
it prior to running this code using the install.packages() command in R. A failure to install this package will most likely result in the code not executing correctly.

After the full (Individual Household Electric Power Consumption) dataset is loaded (henceforth: the dataset), it is subsetted to only include the dates of February 1 & 2, 2007.
Once the dataset is appropriately subsetted, the existing time and datevariables (Date and Time) are fused into a single, new R object titled "date_time." Then, this object is
converted into a Date/Time object in R using the ymd_hms command (as part of the lubridate package), and added to the dataset as a new variable: Datetime. From here, the full
dataset (fulldata) and the Date/Time object (date_time) are removed to increase computational efficiency in the remainder of the code.

## Part Two: Identity of the Remaining Files

There are eight files in this repository that correspond to one another on a pairwise basis. These files are as follows:

1) plot1.R: This is the R script that loads the dataset and generates the first requested plot.

2) plot1.png: This is the image file that outputs from plot1.R and constitutes the first requested plot.

3) plot2.R: This is the R script that loads the dataset and generates the second requested plot.

4) plot2.png: This is the image file that outputs from plot1.R and constitutes the second requested plot.

5) plot3.R: This is the R script that loads the dataset and generates the third requested plot.

6) plot3.png: This is the image file that outputs from plot1.R and constitutes the third requested plot.

7) plot4.R: This is the R script that loads the dataset and generates the fourth requested plot.

8) plot4.png: This is the image file that outputs from plot1.R and constitutes the fourth requested plot.