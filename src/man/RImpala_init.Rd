\name{rimpala.init}
\alias{rimpala.init}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Adds the folder containing the jars for Impala in the  Classpath}
\description{Initializing the package by adding the required jars to the Classpath}

%- maybe also 'usage' for other objects documented here.
\arguments{
\item{impala_home}{
The home folder of Impala. Default is NULL
}
\item{libs}{
The directory in which the jars required for establishing a connection to Impala are required
Default path is "/usr/lib/impala/lib"}
}

\usage{
rimpala.init(impala_home=NULL,libs="/usr/lib/impala/lib")
}

\details{
This should be the first function that should be executed once the RImpala package is installed and loaded }

\value{
"Classpath added succesfully" is displayed on the addition of a valid path.
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
rimpala.init(libs="/usr/lib/impala/lib")
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{connection}
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
