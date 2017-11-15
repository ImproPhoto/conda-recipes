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

