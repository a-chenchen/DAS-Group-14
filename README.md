# Coffee Quality Analysis Repository

## Overview
This repository contains the data and analysis scripts used in the study of coffee quality classification. The goal is to understand the factors that contribute to the quality of coffee batches using generalized linear modeling (GLM).

## Contents
- `dataset14.csv`: The dataset includes various attributes of coffee batches, such as aroma, flavor, acidity, country of origin, and more.
- `glm for coffee quality class.qmd`: This Quarto markdown file contains the analysis script written in R, detailing data cleaning, transformation, and modeling processes.

## Data Preparation
The dataset underwent a rigorous cleaning process where incomplete records were removed, and key variables were transformed for analytical compatibility. A focus was placed on refining the data to avoid any biases from specific regions and on mapping the origins to their respective continents for a more macro-level analysis.

## Analysis
Generalized linear models were applied to discern the pivotal roles of various attributes in determining coffee quality. The analysis script details each step taken to clean the data, engineer features, fit the models, and evaluate their performance.

## Usage
To replicate the analysis or to conduct further research:
1. Clone this repository.
2. Ensure you have R and the required packages installed.
3. Run the `.qmd` file in an R environment to view the analysis.

