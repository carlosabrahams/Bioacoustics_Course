# Carlos Abrahams 
# 8 June 2021
# Analysing sound data using R
# ------------------------------

# Load packages - seewave
library(seewave)

# Seewave has some sounds already built into the package
# Let's view one - called 'tico', the bird Zonotrichia capensis
# and another - 'orni' the cicada Cicada orni
# Open the wav using data() - it appears in Environment


# You can see the wav file structure in Environment..
# Or by using the following:
# orni@samp.rate
# orni@stereo
# orni@bit


# Oscillogram -------------------

# Display an amplitude oscillogram, using oscillo command


# Zoom in on part of the 2s call


# Or display over four lines (k= horizontal sections, j= vertical)


# Add a title and color the plot


# See more details on function - ?seewave::oscillo


# Spectrogram ----------------

# Display a spectrogram of tico


# Display a spectrogram of tico with defined palette and osc
 

# Change freq scale



# Time measures --------------------

# Use timer function to display time parameters of call
# shows the duration of signal periods, pause periods and their ratio.


# This is messy - so provide smoother to clear up (wl+ovlp)



# Power spectrum -------------------

# Plot the power spectrum of tico and orni


# Plot again with a defined amplitude scale - db=0, or A, B, C weighted etc
  

# Get power spectrum at a certain time, e.g. 0.2 seconds into wav



# Dominant frequency ---------------

# Load new wav - peewit - and display with spectro


# Use par command to write new plot over the spectro plot
# Then plot dfreq


# Also fpeaks function, detects peaks using output from spec



# Edit the wav file -----------------

# Plot the oscillogram of tico




# Plot the new wav file


# Resample from 22500Hz sample rate to 16000Hz, using resamp



# Other examples ---------------

# See lots of other seewave functions/examples at: 
# http://rug.mnhn.fr/seewave/
