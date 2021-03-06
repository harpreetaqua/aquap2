% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/doc_settings.r
\name{settings_file}
\alias{settings_file}
\title{The Settings File}
\description{
The settings file is used to store parameters and constants used
 in several functions, and it is living in the folder specified by the 
 variable \code{AQUAP2SH} in the .Renviron file.
}
\details{
Once you have specified a folder under the variable \code{AQUAP2SH} in 
 your .Renviron file, you can use \code{\link{updateSettings}} to copy a fresh 
 version of the settings.r file to this destination. 
 Change the values in settings.r in this folder to change the behaviour of the 
 package 'aquap2'.
}
\section{Note}{
 You will get notified if there should be a newer version of 
 the settings.r file available within the  package. If you changed some values 
 of the settings.r file and then copy a new setings.r file from the package, 
 you have to adapt the newly copied file to contain your changed values.
}

\seealso{
Other fileDocs: \code{\link{anproc_file}},
  \code{\link{metadata_file}}
}
