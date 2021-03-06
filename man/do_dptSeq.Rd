% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gen_coreDataManip.r
\name{do_dptSeq}
\alias{do_dptSeq}
\title{Perform Data-Pretreatment Sequence}
\usage{
do_dptSeq(dataset, dptSeq, extraModelList = NULL, silent = TRUE)
}
\arguments{
\item{dataset}{An object of class 'aquap_data'.}

\item{dptSeq}{A character holding at least one valid string for data pre-treatment.}

\item{extraModelList}{A list of possible external models to hand over to the 
data pre-treatment process.}

\item{silent}{Logical. If status info should be printed or not.}
}
\value{
The transformed dataset.
}
\description{
Manually perform a sequence of data pre-treatments defined in a 
string.
}
\details{
For internal use.
}
