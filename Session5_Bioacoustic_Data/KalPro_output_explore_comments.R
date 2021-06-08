# Kaleidoscope Data Summary Analysis
# For initial data exploration of a Kaleidoscope output csv file
# Requires automated and manual IDs to have been assigned

# Make packages available in this script
library(tidyverse)

# ? Clear R memory to avoid accidental duplication of data
rm(list =ls())

############################################

# Get data using select file location, sort and display
bat_data <- read.csv(file.choose())

#Check data structure and content



#############################################

# Give count of number of files of each species


# Number of files by night by species, using Table function in BASE


#Filter out 'noise' and 'check' IDs


# Number of files by night by species



############################################

# Plots - Time Bar chart


# Plots - Folder (Detector location) Bar chart


# Plots - Manual ID Species Bar Chart


# Plots - Date Bar Chart


# Plots - Facet view of Manual ID Bar chart by location

######################################################

# Other plots - Scatter plot of Dur against TBC


# Other plots - Histogram of Fmean




#-------------------
# SHINY APP
# https://carlosabrahams.shinyapps.io/Bat_Data_Summary/
#-------------------