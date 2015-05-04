\name{rimpala.refresh}
\alias{rimpala.refresh}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Refreshes and loads the new metadata for the given table}
\description{This function refreshes the metadata of the table passed as an argument to it.}

%- maybe also 'usage' for other objects documented here.
\arguments{
\item{table}{
The name of the table whose metadata needs to be refreshed. This is a mandatory argument.
}
}
\usage{
rimpala.refresh(table="table_name")
}
\value{
The metadata of the table passed as an argument is refreshed and the new metadata is immediately loaded into the cache.
}

\author{
Vijay Raajaa \email{vijay.raajaa@mu-sigma.com},\cr
Austin Chungath Vincent \email{austin.cv@mu-sigma.com},\cr
Vikas Raguttahalli \email{vikas.r@mu-sigma.com},\cr
Sachin Sudarshana \email{sachin.sudarshana@mu-sigma.com}}

%% ~Make other sections like Warning with \section{Warning }{....} ~


\examples{
\dontrun{
library("RImpala")
rimpala.init()
rimpala.connect(IP="127.0.0.1",port="21050")
rimpala.refresh(table="sample")
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{refresh}
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
