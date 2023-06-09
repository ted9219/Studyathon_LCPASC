% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helperFunctions.R
\name{extractFile}
\alias{extractFile}
\title{extractFile}
\usage{
extractFile(connection, tableName, resultsSchema, dbms)
}
\arguments{
\item{connection}{DatabaseConnector connection object}

\item{tableName}{Name of table}

\item{resultsSchema}{Schema of results}

\item{dbms}{Name of dbms to use}
}
\value{
data the extracted table as a data.frame
}
\description{
Extract table with specific name from database server.
}
\examples{
\dontrun{
  con <- DatabaseConnector::connect(Eunomia::getEunomiaConnectionDetails())
  extractFile(con, "person", "main", "sqlite")
}
}
