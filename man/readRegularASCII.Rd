% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/small-utility-functions.R
\name{readRegularASCII}
\alias{readRegularASCII}
\title{Read ASCII table}
\usage{
readRegularASCII(file.string, verbose)
}
\arguments{
\item{file.string}{Character string of the full file path.}

\item{verbose}{If TRUE give extra output
Also checks for the file on file systems, fails if not present, and gunzips and zips the file if necessary.
Note also some shenangigans for data.table package versions as earlier versions have a security risk.}
}
\value{
A data.table
}
\description{
Reads a regular ASCII table using data.table:fread.  Regular means file must have the same number of
columns on each line.
}
\author{
Matthew Forrest \email{matthew.forrest@senckenberg.de}
}
\keyword{internal}
