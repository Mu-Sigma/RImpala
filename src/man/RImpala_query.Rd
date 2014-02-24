\name{rimpala.query}
\alias{rimpala.query}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Function to run a Query in Impala}
\description{This function executes the Query specified as an argument in Impala. If no query is passed, the show tables query is run as default}

%- maybe also 'usage' for other objects documented here.
\arguments{
\item{Q}{
The Query to be executed on Impala. The default query is show tables.
}
}
\usage{
rimpala.query(Q="show tables")
}
\value{
The result of the Query is returned into a dataframe if the Query is valid and does not have any errors.
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
res = rimpala.query("Select * from sample_table")
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
