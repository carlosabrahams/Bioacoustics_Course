# Kaleidoscope Data Summary Analysis
# For initial data exploration of a Kaleidoscope output csv file
# Requires automated and manual IDs to have been assigned

# Make packages available in this script
library(tidyverse)

# ? Clear R memory to avoid accidental duplication of data
rm(list =ls())

# Get data using select file location, sort and display
bat_data <- read.csv(file.choose())

#Check data structure and content
glimpse(bat_data)

# Give count of number of files of each species
count(bat_data, MANUAL.ID)

# Number of files by night by species, using Table function in BASE
with(bat_data, table(MANUAL.ID,DATE.12))

#Filter out 'noise' and 'check' IDs
bat_data <- filter(bat_data, MANUAL.ID != "Noise" & MANUAL.ID != "CHECK")

# Number of files by night by species
bat_data %>%
  group_by(MANUAL.ID,DATE.12) %>%
  tally

# Plots - Time Bar chart
ggplot(bat_data, aes(x = HOUR, fill = MANUAL.ID)) +
  geom_bar() +
  theme_bw() +
  xlab("Time (24hr)") +
  ylab("Number of Files")

# Plots - Folder (Detector location) Bar chart
ggplot(bat_data, aes(x = FOLDER)) +
  geom_bar(width = 0.4) +
  theme_bw() +
  xlab("Folder (Detector Location)") +
  ylab("Number of Files")

# Plots - Manual ID Bar Chart
ggplot(bat_data, aes(x = MANUAL.ID)) +
  geom_bar() +
  theme_bw() +
  xlab("Manual ID") +
  ylab("Number of Files") +
  coord_flip()

# Plots - Date Bar Chart
ggplot(bat_data, aes(x = DATE.12, fill = MANUAL.ID)) +
  geom_bar() +
  theme_bw() +
  xlab("Night/Date") +
  ylab("Number of Files")

# Plots - Facet view of Manual ID Bar chart by location
ggplot(bat_data, aes(x = MANUAL.ID)) +
  geom_bar() +
  theme_bw() +
  xlab("Manual ID") +
  ylab("Number of Files") +
  facet_wrap(~FOLDER) +
  coord_flip()
