% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prop-query-type.R
\name{new_prop_query}
\alias{new_prop_query}
\title{Constructor for the property query type}
\usage{
new_prop_query(.req, by, pages, ...)
}
\arguments{
\item{.req}{A \code{\link[=wiki_action_request]{query/action_api/httr2_request}} object,
or a \code{prop} query object as returned by this function. This parameter is
covariant on the type, so you can also pass all subtypes of \code{prop}.}

\item{by}{The type of page. Allowed values are: pageids, titles, revids}

\item{pages}{A string, the pages to query by, corresponding to the 'by'
parameter. Multiple values should be separated with "|"}

\item{...}{<\code{\link[rlang:dyn-dots]{dynamic-dots}}> Further parameters to the
query}
}
\value{
A properly qualified \code{prop/query} object. There are six
possibilities:
\itemize{
\item \code{titles/prop/query}
\item \code{pageids/prop/query}
\item \code{revids/prop/query}
\item \code{generator/titles/prop/query}
\item \code{generator/pageids/prop/query}
\item \code{generator/revids/prop/query}
}
}
\description{
The intended use for this query is to set the 'titles', 'pageids' or 'revids'
parameter, and enforce that only one of these is set. All \href{https://www.mediawiki.org/wiki/API:Properties}{property modules API} in the Action API require
this parameter to be set, or they require a
\code{\link[=new_generator_query]{generator}} parameter to be set instead. The
\code{prop/query} type is an abstract type representing the three possible kinds
of property query that do not rely on a generator (see below on the return
value). A complication is that a \code{prop/query} can \emph{itself} be used as the
basis for a generator.
}
\examples{
# Build a query on a set of pageids
# 963273 and 1159171 are Kate Bush albums
bush_albums_query <- wiki_action_request() \%>\%
  new_prop_query("pageids", "963273|1159171")

}
\keyword{low_level_action_api}
