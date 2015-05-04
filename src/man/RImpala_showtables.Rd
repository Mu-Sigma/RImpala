\name{rimpala.showtables}
\alias{rimpala.showtables}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Function to display the list of all the tables present}
\description{This function retrieves the list of tables present in the current working database}
\usage{
rimpala.showtables()
}
%- maybe also 'usage' for other objects documented here.

\value{
List of tables present in the current database is returned into a dataframe
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
rimpala.showtables()
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{show tables}
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
