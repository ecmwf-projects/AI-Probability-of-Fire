<p align="center">
  <picture>
    <img src='https://github.com/ecmwf-projects/AI-Probability-of-Fire/blob/develop/handbook/images/PoF-in-a-box.png' height="180">
  </picture>
</p>

# Getting started

In this book, we will show how you can create your own version of the Probability of Fire (PoF) system. A pof in a box!

Before you begin, please note that the workflow presented here is not intended to reproduce the exact operational system currently running at ECMWF. Instead, it provides a simplified sequence of steps designed to help you get started.
The notebook can only be used with past forecasts—it will generate a tool that allows you to explore and analyse previous forecast data.
That said, we believe this provides a valuable starting point: a complete, working system built entirely from data that are publicly available through the Climate Data Store (CDS) or accessible via temporary data repositories linked within this notebook.


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


# Licence

Copyright 2024, European Centre for Medium Range Weather Forecasts.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

In applying this licence, ECMWF does not waive the privileges and immunities
granted to it by virtue of its status as an intergovernmental organisation
nor does it submit to any jurisdiction.