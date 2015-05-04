\name{rimpala.showdatabases}
\alias{rimpala.showdatabases}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Function to list all the databases present }
\description{This function returns the list of databases present in Hive's metastore that is leveraged by Impala}

%- maybe also 'usage' for other objects documented here.

\usage{
rimpala.showdatabases()
}

\value{
The list of databases present in Hive's metastore is returned into a dataframe.
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
rimpala.connect("127.0.0.1","21050")
rimpala.showdatabases()
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{show databases}
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
