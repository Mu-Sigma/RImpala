\name{rimpala.invalidate}
\alias{rimpala.invalidate}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Invalidates the metadata of a one or all tables}
\description{This function invalidates metadata of the table passed as an argument to it. Metadata invalidation is required if a table has been changed in Hive.}

%- maybe also 'usage' for other objects documented here.
\arguments{
\item{table}{
The name of the table whose metadata needs to be invalidated. Default is NULL
}
}
\usage{
rimpala.invalidate(table=" ")
}
\value{
The metadata of the table passed as an argumented is invalidated or marked as stale from the cache. If no argument is passed, all the metadata of all the tables are invalidated.
}

\author{
Austin Chungath Vincent \email{austin.cv@mu-sigma.com},\cr
Vikas Raguttahalli \email{vikas.r@mu-sigma.com},\cr
Sachin Sudarshana \email{sachin.sudarshana@mu-sigma.com}}

%% ~Make other sections like Warning with \section{Warning }{....} ~


\examples{
\dontrun{
library("RImpala")
rimpala.init()
rimpala.connect(IP="127.0.0.1",port="21050")
rimpala.invalidate(table="sample")
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{invalidate}
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
