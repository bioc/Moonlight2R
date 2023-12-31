% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotURA.R
\name{plotURA}
\alias{plotURA}
\title{plotURA: Upstream regulatory analysis heatmap plot}
\usage{
plotURA(dataURA, additionalFilename = "URAplot")
}
\arguments{
\item{dataURA}{output URA function}

\item{additionalFilename}{figure name}
}
\value{
heatmap
}
\description{
This function visualizes the URA in a heatmap
}
\examples{
data(dataURA)
data(DiseaseList)
data(tabGrowBlock)
data(knownDriverGenes)
dataDual <- PRA(dataURA = dataURA,
BPname = c("apoptosis","proliferation of cells"),
thres.role = 0)
TSGs_genes <- names(dataDual$TSG)
OCGs_genes <- names(dataDual$OCG)
plotURA(dataURA = dataURA[c(TSGs_genes, OCGs_genes),],additionalFilename = "_example")
}
