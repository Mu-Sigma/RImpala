\name{rimpala.usedatabase}
\alias{rimpala.usedatabase}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Function to change the current working database}
\description{This function changes the current database to the database specified as an argument to the function}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{db}{
The name of the database.
}
}
\usage{
rimpala.usedatabase(db)
}
\value{
Changes the database to the specified database and prints "Database changed to \emph{<Database name>}" on the console
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
rimpala.connect(127.0.0.1,"21050")
rimpala.usedatabase(db="sample_db")
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{use database}
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
