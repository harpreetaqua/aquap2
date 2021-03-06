% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gen_general.r
\name{genFolderStr}
\alias{genFolderStr}
\title{Generate Folder Structure}
\usage{
genFolderStr()
}
\value{
Folders get created in the current working directory.
}
\description{
Generate the required folder structure for a new experiment in 
the current working directory.
}
\details{
\code{genFolderStr} will generate all the required folders in the 
current working directory that 'aquap2' needs to work properly. Templates 
for metadata and analysis procedure will be copied into the metadata-folder.
You can change the defaults for the folder names in the settings file.
}
\seealso{
\code{\link{settings_file}}, \code{\link{noise_procedures}}, 
\code{\link{genNoiseRecExp}}

Other Helper Functions: \code{\link{genNoiseRecExp}},
  \code{\link{genTempCalibExp}}, \code{\link{getcd}},
  \code{\link{getcm}}, \code{\link{instAquap2Examples}},
  \code{\link{printStdColnames}}, \code{\link{reColor}},
  \code{\link{saveAQdata}}, \code{\link{updateAquap2}},
  \code{\link{updateSettings}}
}
