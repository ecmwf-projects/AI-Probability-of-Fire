<p align="center">
  <picture>
    <img src='./handbook/images/image.png' height="180">
  </picture>
</p>

# ECMWF - Probability of Fire (POF) Model Pipeline

This repository contains three main scripts representing the end-to-end workflow for generating, training, and forecasting Probability of Fire (POF) using environmental and human
datasets. The model framework is based around the operation Sparky-PoF system used by ECMWF.

## Building the environment
```
conda env create -f environment.yml
conda activate POF_IN_A_BOX
```
## Building the Jupyter Book
```
rm -rf _build
jupyter-book build 
```
## Visualising the book locally.
```
jupyter-book start
```