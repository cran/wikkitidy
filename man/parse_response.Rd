% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get-diff.R, R/parse-response.R
\name{parse_response.wikidiff2}
\alias{parse_response.wikidiff2}
\alias{parse_response}
\alias{parse_response.default}
\alias{parse_response.row_list}
\title{Convert a response from a Wikipedia API into a convenient format}
\usage{
\method{parse_response}{wikidiff2}(response)

parse_response(response)

\method{parse_response}{default}(response)

\method{parse_response}{row_list}(response)
}
\arguments{
\item{response}{The data retrieved from Wikipedia.}
}
\value{
A vector the same length as the response. Generally, this will be
a simple vector, a \link[tibble:tbl_df-class]{tibble::tbl_df} or a list of \link[tibble:tbl_df-class]{tibble::tbl_df} objects.
}
\description{
Wikipedia's APIs provide data using a range of different json schemas.
This generic function converts the data into a convenient formats for use
in an R data frame.
}
\section{Methods (by class)}{
\itemize{
\item \code{parse_response(wikidiff2)}: Simplify a wikidiff2 response to a dataframe of
textual differences, discarding display data

\item \code{parse_response(default)}: By default, create a list of nested tbl_dfs

\item \code{parse_response(row_list)}: Many of the endpoints return a list of named
values for each page, which can easily be row-bound. They often contain
nested data, however, which is automatically unnested by dplyr::bind_rows.
Hence this more basic approach.

}}
\keyword{internal}
