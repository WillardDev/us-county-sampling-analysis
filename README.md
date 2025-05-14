# Statistical Sampling Methods in R

This repository contains an implementation of three fundamental statistical sampling methods using R and the US county dataset from the `usdata` package.

## Project Overview

This project demonstrates how to:
1. Create a Simple Random Sample (SRS)
2. Implement a Stratified Sample by education level
3. Develop a Cluster Sample by state

The code uses real US county data to illustrate how these sampling techniques differ and can be applied in statistical analysis.

## Dataset

The analysis uses the `county` dataset from the `usdata` package, which contains demographic and socioeconomic information about US counties, including:
- Population data (2000, 2010, 2017)
- Poverty rates
- Homeownership percentages
- Education levels
- Income statistics
- And more

## Sampling Methods Implemented

### 1. Simple Random Sample (SRS)
- Random selection of 250 counties from the entire dataset
- Each county has an equal probability of being selected

### 2. Stratified Sample
The population is divided into non-overlapping groups (strata) based on education level, with samples taken from each stratum:
- 1 county from "below_hs"
- 140 counties from "hs_diploma"
- 170 counties from "some_college"
- 4 counties from "bachelors"

### 3. Cluster Sample
The population is divided into clusters based on state, with all counties from randomly selected states included:
- 5 states randomly selected
- All counties from these 5 states included in the sample

## Files in this Repository

- `STAT311-HW1.R`: The R script containing the implementation of all three sampling methods
- `STAT311-HW1.Rmd`: R Markdown file with code and explanations
- `STAT311-HW1.pdf`: PDF output of the R Markdown file with results and visualizations

## Requirements

To run this code, you will need:
- R (version 4.0 or higher recommended)
- The `usdata` package

## Installation

```R
# Install the required package
install.packages("usdata")

# Load the library
library(usdata)
```

## Usage

You can run the R script directly:

```R
source("STAT311-HW1.R")
```

Or open and run the R Markdown file in RStudio for a more interactive experience.

## Why These Sampling Methods Matter

Each sampling method has its advantages:

- **Simple Random Sampling**: Provides an unbiased representation of the entire population
- **Stratified Sampling**: Ensures representation from each important subgroup, even if some are rare in the population
- **Cluster Sampling**: More efficient when the population is naturally divided into clusters, and reduces data collection costs

This project demonstrates when and how to apply each method depending on your research goals.
