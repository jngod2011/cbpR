% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/cbsas.R
\name{getCBSAs}
\alias{getCBSAs}
\title{Returns a list of Core-Based Statistical Areas and counties}
\usage{
getCBSAs(drop_states = NA, drop_cbsas = NA, metro = TRUE, micro = TRUE)
}
\arguments{
\item{drop_states}{is a vector of state abbreviations to drop from the data}

\item{drop_cbsas}{is a vector of CBSA IDs (as strings) to drop from the data}

\item{metro}{is a boolean whether to include metropolitan statistical areas}

\item{micro}{is a boolean whether to include micropolitan statistical areas}
}
\value{
a list of data frames with micropolitan statistical areas,
metropolitan statistical areas and counties
}
\description{
This function uses the 2003-2009 definitions of Core-Based Statistical Areas
and returns a map of counties into Micro- and Metropolitan Statistical Areas.
}

