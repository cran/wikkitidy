% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generator-query-type.R
\name{new_generator_query}
\alias{new_generator_query}
\title{Constructor for generator query type}
\usage{
new_generator_query(.req, generator, ...)
}
\arguments{
\item{.req}{A \code{\link[=wiki_action_request]{query/action_api/httr2_request}} object,
or a generator query as returned by this function.}

\item{generator}{The generator to add to the query. If the generator is based
on a \href{https://www.mediawiki.org/wiki/API:Properties}{property module}, then
\code{.req} must be a subtype of
\code{\link[=new_prop_query]{prop/query/action_api/httr2_request}}. If the generator
is based on a \href{https://www.mediawiki.org/wiki/API:Lists}{list module}, then
\code{.req} must subclass
\code{\link[=wiki_action_request]{query/action_api/httr2_request}} directly.}

\item{...}{<\code{\link[rlang:dyn-dots]{dynamic-dots}}> Further parameters to the generator}
}
\value{
The output type depends on the input. If \code{.req} is a
\code{\link[=wiki_action_request]{query/action_api/httr2_request}}, then the output
will be a \code{generator/query/action_api/httr2_request}. If \code{.req} is a
\code{\link[=new_prop_query]{prop/query/action_api/httr2_request}}, then the return
object will be a subclass of the passed request, with "generator" as the
first term in the class vector, i.e.
\code{generator/(titles|pageids|revids)/prop/query/action_api/httr2_request}.
}
\description{
Construct a new query to a \href{https://www.mediawiki.org/wiki/API:Query#Example_6:_Generators}{generator module} of
the Action API. This low-level constructor only performs basic type-checking.
It is your responsibility to ensure that the chosen \code{generator} is an
existing API endpoint, and that you have composed the query correctly. For
a more user-friendly interface, use \link{query_generate_pages}.
}
\examples{
# Build a generator query using a list module
# List all members of Category:Physics on English Wikipedia
physics <- wiki_action_request() \%>\%
  new_generator_query("categorymembers", gcmtitle = "Category:Physics")

# Build a generator query on a property module
# Generate the pages that are linked to Albert Einstein's page on English
# Wikipedia
einstein_categories <- wiki_action_request() \%>\%
  new_prop_query("titles", "Albert Einstein") \%>\%
  new_generator_query("iwlinks")

}
\keyword{low_level_action_api}
