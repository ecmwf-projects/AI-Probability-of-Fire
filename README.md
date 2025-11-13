<p align="center">
  <picture>
    <img src='./handbook/images/image.png' height="180">
  </picture>
</p>

# Getting started

In this book, we will show how you can create your own version of the Probability of Fire (PoF) system. A pof in a box!

Before you begin, please note that the workflow presented here is not intended to reproduce the exact operational system currently running at ECMWF. Instead, it provides a simplified sequence of steps designed to help you get started.
The notebook can only be used with past forecasts—it will generate a tool that allows you to explore and analyse previous forecast data.
That said, we believe this provides a valuable starting point: a complete, working system built entirely from data that are publicly available through the Climate Data Store (CDS) or accessible via temporary data repositories linked within this notebook.


<!-- ![](./PICS/PoF-in-a-box.png) -->
<p class="credits">CC BY-NC-SA</p>


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