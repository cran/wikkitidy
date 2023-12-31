% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{id_or_title}
\alias{id_or_title}
\alias{id_or_title.character}
\alias{id_or_title.numeric}
\title{Determine if a page parameter comprises titles or pageids, and prefix
accordingly.}
\usage{
id_or_title(page, prefix = NULL)

\method{id_or_title}{character}(page, prefix = NULL)

\method{id_or_title}{numeric}(page, prefix = NULL)
}
\arguments{
\item{page}{Either a character or numeric vector. If a character vector, it
is interpreted as a vector of page titles. If a numeric vector, of pageids.}

\item{prefix}{Optional: A prefix to affix to the page titles if it is missing}
}
\value{
A list
}
\description{
Determine if a page parameter comprises titles or pageids, and prefix
accordingly.
}
\keyword{internal}
