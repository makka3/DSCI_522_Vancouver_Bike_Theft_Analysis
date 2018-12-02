# Vancouver Bike Theft Analysis
Analysis of bike theft reports in Vancouver between 2003-2017.

### Team Members | Github:
* Fan Nie | [Jamienie](https://github.com/Jamienie)
* Mohamad Makkaoui | [makka3](https://github.com/makka3)

## Introduction & Objective
Even in an age of CCTV cameras on every street corner, bike theft remains an issue that continues to plague most modern cities. Vancouver, Canada is no exception and there are often hundreds of bike theft reports every month.

In this analysis, we looked at this data and analyzed it in an attempt to uncover insights about this phenomenon that may potentially help tackle and reduce bike theft in the region.

Specifically, we will be investigating whether there is a greater incidence of bike thefts in the summer time when compared to the remaining months of the year.

Full report can be found here:
[Vancouver Bike Theft Report](https://github.com/UBC-MDS/Vancouver_Bike_Theft_Analysis/blob/master/doc/vancouver_bike_report.md)

## Dataset

* The source of the dataset is available publicly on [Vancouver Open Data Catalogue](https://data.vancouver.ca/datacatalogue/crime-data.htm). It is crime data in Vancouver from 2003 till present (updated every Sunday morning) reported by the Vancouver Police Department. The dataset we use is as of November 16,2018.
* The original dataset was in csv format. For this project, we will use R to import and handle our data analysis.
* Imported data can be found [here](https://github.com/UBC-MDS/DSCI_522_Vancouver_Bike_Theft_Analysis/tree/master/data), in the data folder of the repository.

## Reproducing the analysis

### Running `make all`

1. Clone this repo or download it. Navigate to the directory using `cd` in your terminal. 
2. To clean the folder of the files (images, csv) from previous analyses, run `make clean`
3. Run the `make all` command at the terminal to produce the report with the analysis.

## Dependency Diagram

![Dependency Diagram](doc/dependency_diagram.png)

## Dependencies
- R 3.5.1 & libraries:
| Library | Version|
|---------|--------|
| "rmarkdown" | "1.10" |
| "here" | "0.1.11" |
| "knitr" | "1.20" |
| "ggplot2" | "3.0.0" |
| "tidyverse" | "1.2.1" |
| "broom" | "0.5.0" |