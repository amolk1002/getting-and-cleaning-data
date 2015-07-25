# getting-and-cleaning-data

# Ojective 
The goal is to prepare tidy data that can be used for later analysis. 

# Description

Dataset : UCI MAachine Learning experiment

The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing
a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, they captured 
3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The obtained dataset was randomly
partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test
data.

The original dataset included the following statistics.

mean(): Mean value 
std(): Standard deviation
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values.
iqr(): Interquartile range
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal
kurtosis(): kurtosis of the frequency domain signal
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.



# run_analysis.R

run_analysis.R script showes the different steps taken to getting and cleaning the dataset.

* Merging the training and the test subjects into a single dataset.
* Extracting only the measurements corresponding to the mean (mean()) and standard deviation (std()) for each available measurement.
* Joining the subjects with the activities performed by the subjects with the measurements from the dataset.
* Evaluating the mean per subject and activity of the available meassurements and sorting by subject and activity.
* Saving the resulting dataset in a text file.

The resulting dataset tidy.txt contains 66 columns of averaged information (per subject and activity) corresponding to
the Mean and std of different meassurements for a total of 180 observations (30 subjects x 6 activities).

