\name{NormEventCounts}
\alias{NormEventCounts}
\title{Scale event counts}
\usage{
  NormEventCounts(x, unit.analysis, var.name)
}
\arguments{
  \item{x}{data.frame, a GDELT data.frame.}

  \item{unit.analysis}{character, default is country.day;
  other options: country.day, country.month, country.year,
  day, month, year}

  \item{var.name}{character, base name for the new count
  variables}
}
\value{
  data.frame
}
\description{
  Scale event counts based on the unit of analysis.
}
\details{
  For \code{unit.analysis}, day and country-day put out a
  data set where date is of class \sQuote{date}.
}
\examples{
\dontrun{
GDELT.subset.data <- GetGDELT("2012-01-01", "2012-12-31", allow.wildcards=TRUE,
                              filter=list(ActionGeo_CountryCode=c("AF", "US"), EventCode="14*"))
GDELT.normed.data <- NormEventCounts(x = GDELT.subset.data,
                                     unit.analysis="country.year",
                                     var.name="protest")}
}
\author{
  \tabular{ll}{ Oskar N.T. Thoms \tab
  \email{othoms@princeton.edu}\cr Stephen R. Haptonstahl
  \tab \email{srh@haptonstahl.org}\cr }
}
\references{
  GDELT: Global Data on Events, Location and Tone,
  1979-2012. Presented at the 2013 meeting of the
  International Studies Association in San Francisco, CA.
  \url{http://gdelt.utdallas.edu/}
}

