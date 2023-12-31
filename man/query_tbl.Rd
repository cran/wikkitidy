% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/query-tbl.R
\name{query_tbl}
\alias{query_tbl}
\title{Representation of Wikipedia data returned from an \href{https://www.mediawiki.org/wiki/API:Query}{Action API Query module} as tibble, with request
metadata stored as attributes.}
\usage{
query_tbl(x, request, continue, batchcomplete)
}
\arguments{
\item{x}{A tibble}

\item{request}{The httr2_request object used to generate the tibble}

\item{continue}{The continue parameter returned by the API}

\item{batchcomplete}{The batchcomplete parameter returned by the API}
}
\value{
A tibble: an S3 data.frame with class \code{query_tbl}.
}
\description{
Representation of Wikipedia data returned from an \href{https://www.mediawiki.org/wiki/API:Query}{Action API Query module} as tibble, with request
metadata stored as attributes.
}
\keyword{data_type}
