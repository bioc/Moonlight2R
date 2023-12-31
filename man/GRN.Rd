% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GRN.R
\name{GRN}
\alias{GRN}
\title{Generate network}
\usage{
GRN(
  TFs,
  DEGsmatrix,
  DiffGenes = FALSE,
  normCounts,
  kNearest = 3,
  nGenesPerm = 2000,
  nBoot = 400,
  noise_mi = 1e-12
)
}
\arguments{
\item{TFs}{a vector of genes.}

\item{DEGsmatrix}{DEGsmatrix output from DEA such as dataDEGs}

\item{DiffGenes}{if TRUE consider only diff.expr genes in GRN}

\item{normCounts}{is a matrix of gene expression with genes in rows and samples in columns.}

\item{kNearest}{the number of nearest neighbors to consider to estimate the mutual information.
Must be less than the number of columns of normCounts.}

\item{nGenesPerm}{nGenesPerm}

\item{nBoot}{nBoot}

\item{noise_mi}{noise in knnmi.cross function. Default is 1e-12.}
}
\value{
an adjacent matrix
}
\description{
This function carries out the gene regulatory network inference using parmigene
}
\examples{
data('DEGsmatrix')
data('dataFilt')
dataGRN <- GRN(TFs = sample(rownames(DEGsmatrix), 30),
DEGsmatrix = DEGsmatrix,
DiffGenes = TRUE,
normCounts = dataFilt,
nGenesPerm = 2,
nBoot = 2)
}
