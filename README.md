# About
These are MicMac and PyMicMac anaconda recipies only for 64-bit Linux system.

## Note on MicMac features
The anaconda package does not include these features:
 - Qt
 - X11
 - Kakadu

Applications with graphical user interface will not work (SaisieAppuisQT).

# Installation using Anaconda
```{r, engine='bash', count_lines}
conda install -c improphoto micmac 
```

# Build
```{r, engine='bash', count_lines}
conda build  .
conda build  . --output # get filename here
anaconda upload -u conda-forge -u improphoto *FILE*
```

