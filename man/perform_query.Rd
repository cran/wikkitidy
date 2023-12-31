% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/perform-query.R
\name{perform_query}
\alias{perform_query}
\title{Perform a single request to the Action API.}
\usage{
perform_query(request, continue)
}
\arguments{
\item{request}{The request object}

\item{continue}{The continue parameter returned by the previous request}
}
\value{
A \code{\link[=query_tbl]{query_tbl()}} of the results
}
\description{
This function is the workhorse behind the user-facing \code{\link[=next_result]{next_result()}},
\code{\link[=next_batch]{next_batch()}} and \code{\link[=retrieve_all]{retrieve_all()}}.
}
\seealso{
\code{\link[=append_query_result]{append_query_result()}}
}
\keyword{internal}
