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
data(tico)
data(orni)

# You can see the wav file structure in Environment..
# Or by using the following:
# orni@samp.rate
# orni@stereo
# orni@bit

# Oscillogram -------------------

# Display an amplitude oscillogram, using oscillo command
oscillo(tico)

# Zoom in on part of the 2s call
oscillo(tico, from=0.5, to=0.9)

# Or display over four lines (k= horizontal sections, j= vertical)
oscillo(tico, k=4, j=1)

# Add a title and color the plot
oscillo(orni, title="The song of a famous cicada", colwave = "pink")

# See more details on function - ?seewave::oscillo



# Spectrogram ----------------

# Display a spectrogram of tico
spectro(tico)

# Display a spectrogram of tico with defined palette and osc
spectro(tico,f=22050, 
        palette=temp.colors, collevels=seq(-40,0,0.5), osc=TRUE) 

# Change freq scale
spectro(tico,f=22050, 
        flim = c(2,6),
        palette=temp.colors, collevels=seq(-40,0,0.5), osc=TRUE)


# Time measures --------------------

# Use timer function to display time parameters of call
# shows the duration of signal periods, pause periods and their ratio.
timer(tico)

# This is messy - so provide smoother to clear up (wl+ovlp)
timer(tico, f=22050, msmooth=c(50,0))


# Power spectrum -------------------

# Plot the power spectrum of tico and orni
spec(tico)
spec(orni)

# Plot again with a defined amplitude scale - db=0, or A, B, C weighted etc
spec(tico,f=22050,dB="max0",col="blue")     

# Get power spectrum at a certain time, e.g. 0.2 seconds into wav
spec(tico,f=22050, at=0.2)


# Dominant frequency ---------------

# Load new wav - peewit - and display with spectro
data(peewit)
spectro(peewit)

# Use par command to write new plot over the spectro plot
# Then plot dfreq
par(new=TRUE)
dfreq(peewit)

# Also fpeaks function, detects peaks using output from spec
fpeaks(spec(peewit), nmax = 10)


# Edit the wav file -----------------

# Plot the oscillogram of tico
oscillo(tico)

# Now 'cutw' the second syllable out, and plot and output a wav
tico2 <- cutw(tico, from = 0.5, to = 0.9, plot = T, output = "Wave")

# Plot the new wav file
oscillo(tico2)

# Resample from 22500Hz sample rate to 16000Hz, using resamp
tico3 <- resamp(tico2, f=22500, g = 16000,  output="Wave")
spectro(tico3)
spectro(tico2)


# Other examples ---------------

# See lots of other seewave functions/examples at: 
# http://rug.mnhn.fr/seewave/
