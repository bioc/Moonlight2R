% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MAFtoCscape.R
\name{MAFtoCscape}
\alias{MAFtoCscape}
\title{MAFtoCscape}
\usage{
MAFtoCscape(MAF)
}
\arguments{
\item{MAF}{tibble of MAF}
}
\value{
tibble of cscape-somatic input
}
\description{
This function extracts columns from a MAF tibble to fit CScape input format
}
\examples{
data(dataMAF)
MAFtoCscape(dataMAF[seq.int(2),])
}
