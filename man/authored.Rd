\name{authored}
\alias{authored}
\title{authored.R   Search Method (Public Method)}
\usage{
authored(query, page = NA, numItems = 100L, year = NA,
  key = getOption("MendeleyKey", stop("need an API key for Mendeley")),
  curl = getCurlHandle(), ...)
}
\arguments{
  \item{query}{an author name to query}

  \item{page}{number pages to return (optional)}

  \item{key}{Mendeley public key}

  \item{numItems}{number of hits to return (optional)}

  \item{year}{restrict results to publications appearing in
  that year (optional)}

  \item{...}{optional additional curl options (debugging
  tools mostly)}

  \item{curl}{If using in a loop, call getCurlHandle()
  first and pass the returned value in here (avoids
  unnecessary footprint)}
}
\value{
all results matching the query for the author
}
\description{
authored.R Search Method (Public Method)
}
\examples{
\dontrun{
a <- authored("Boettiger")
b <- authored("Boettiger", num = 10)
b$documents
a$total_results
}
}

