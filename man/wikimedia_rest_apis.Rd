% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rest-request.R
\name{wikimedia_rest_apis}
\alias{wikimedia_rest_apis}
\alias{wikimedia_org_rest_request}
\alias{xtools_rest_request}
\title{Build a REST request to one of the Wikimedia Foundation's central APIs}
\usage{
wikimedia_org_rest_request(endpoint, ..., language = "en")

xtools_rest_request(endpoint, ..., language = "en")
}
\arguments{
\item{endpoint}{The endpoint for the specific kind of request; for wikimedia
apis, this comprises the path components in between the general API
endpoint and the component specifying the project to query}

\item{...}{<\code{\link[rlang:dyn-dots]{dynamic-dots}}> Components to add to the URL.
Unnamed arguments are added to the path of the request, while named
arguments are added as query parameters.}

\item{language}{Two-letter language code for the desired Wikipedia edition.}
}
\value{
A \code{wikimedia_org/rest} or \code{xtools/rest} object, an S3 vector that
subclasses \link[httr2:request]{httr2::request}.
}
\description{
\code{wikimedia_org_rest_request()} builds a request for the
\href{https://wikimedia.org/api/rest_v1/}{wikimedia.org REST API}, which
provides statistical data about Wikimedia Foundation projects

\code{xtools_rest_request()} builds a request to the \href{https://www.mediawiki.org/wiki/XTools/API}{XTools API}, which provides additional
statistical data about Wikimedia foundation projects
}
\examples{
# Build request for articleinfo about Kate Bush's page on English Wikipedia
request <- xtools_rest_request("page/articleinfo", "Kate_Bush")

# Build request for most-viewed pages on German Wikipedia in July 2020
request <- wikimedia_org_rest_request(
    "metrics/pageviews/top",
    "all-access", "2020", "07", "all-days",
    language = "de"
    )
}
