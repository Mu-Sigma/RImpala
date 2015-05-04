\name{rimpala.close}
\alias{rimpala.close}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Function to close the JDBC connection to Impala}
\description{This function closes a sucessful connection to Impala-server}
\usage{
rimpala.close()
}
%- maybe also 'usage' for other objects documented here.

\value{
"Connection Closed" is displayed on the console when the JDBC connection is successfully closed
}

\author{
Vijay Raajaa \email{vijay.raajaa@mu-sigma.com},\cr
Austin Chungath Vincent \email{austin.cv@mu-sigma.com},\cr
Vikas Raguttahalli \email{vikas.r@mu-sigma.com},\cr
Sachin Sudarshana \email{sachin.sudarshana@mu-sigma.com}}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\examples{
\dontrun{
library(RImpala)
rimpala.init()
rimpala.connect(IP="127.0.0.1",port="21050")
rimpala.close()
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{close}
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
