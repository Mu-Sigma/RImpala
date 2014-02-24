\name{rimpala.describe}
\alias{rimpala.describe}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Function to describe any table present in Hive's metastore}
\description{This function runs the describe query of Impala against the table passed as an argument to the function}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{table}{
The name of the table that needs to be described
}
}
\usage{
rimpala.describe(table)
}
\value{
Returns an dataframe that contains the details of the table as displayed by the describe command
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
rimpala.connect("127.0.0.1","21050")
des=rimpala.describe(table="sample_table")
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{describe}
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
