# cbpR: Working with the County Business Patterns Data in R

### What is this package about?

This is an R Package that downloads and prepares panel data sets from the **[Census County Business Patterns (CBP)](http://www.census.gov/econ/cbp/)**.

It downloads the CBP data on the county level and then allows the user to aggregate the data up into larger geographic entities such as Metropolitan Statistical Areas, Micropolitan Statistical Areas, or some user defined collection of counties.

The file [`demo/cardealers.R`](https://github.com/jtilly/cbpR/blob/master/demo/cardealers.R) contains a demonstration. It generates a panel data set for "New Car Dealers" [(NAICS 441110)](http://www.census.gov/cgi-bin/sssd/naics/naicsrch?code=441110&search=2012%20NAICS%20Search). The data set ranges from 2000 to 2009. It aggregates the firm count data from the County Business Patterns into Micropolitan Statistical Areas and returns a dataset with annual data on the firm count, employment (if available), firm count by employment, and population figures for each Micropolitan Statistical Area. The population estimates are taken from the *Annual Estimates of the Population of Metropolitan and Micropolitan Statistical Areas: April 1, 2000 to July 1, 2009* [(CBSA-EST2009-01)](https://www.census.gov/popest/data/metro/totals/2009/). The Micropolitan Statistical Area definitions are taken from the [Census 2003-2009 Delineation Files](https://www.census.gov/population/metro/files/lists/2009/List1.txt) .

Note that the CBP data is also directly available for Micropolitan Statistical Areas. However, since the definitions of Micropolitan Statistical Areas have changed frequently in the past, using county level data (and aggregating it for a particular definition of Micropolitan Statistical Areas) is a more reliable way to get a long and balanced panel.

### Installation and how to use

```
install.packages("devtools")
library("devtools")
install_github("jtilly/cbpR")
library("cbpR")
```

If you're using Ubuntu and have difficulties installing the devtools, then [this](http://stackoverflow.com/questions/20923209/problems-installing-the-devtools-package) might help.
Once the package is loaded, use
```
setCbpPath("~/cbpR_data_source", "~/cbpR_data_final")
```
to define where to store the source data that will be downloaded and where to store the generated data sets.
The package needs to download the source data. This only needs to be done once. The data will then be stored locally. To download the source data, run
```
downloadCbp()
```
If the source data already exists on the system, it will not be downloaded again.
To get the firm count data from the County Business Patterns, use
```
firms = getFirmCount(naics = "441110", years=c("07", "08", "09"))
```
More details are in [`demo/cardealers.R`](https://github.com/jtilly/cbpR/blob/master/demo/cardealers.R).

A rudimentary documentation file is available as [PDF](http://jtilly.github.io/cbpR/cbpR.pdf).
