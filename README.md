# About
These are MicMac and PyMicMac anaconda recipies only for 64-bit Linux system.

## MicMac version
Anaconda build is using a specific version of MicMac:
https://github.com/micmacIGN/micmac/commit/8db9f6f4229326fc47766466db505eda13a0d1da

## Note on MicMac features
The anaconda package does not include these features:
 - Qt
 - X11
 - Kakadu

Applications with graphical user interface will not work (SaisieAppuisQT).

# Installation using Anaconda
```{r, engine='bash', count_lines}
conda install -c improphoto pymicmac 
```

# Build
```{r, engine='bash', count_lines}
conda build  .
conda build  . --output # get filename here
anaconda upload -u conda-forge -u improphoto *FILE*
```

