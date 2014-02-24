\name{RImpala-package}
\alias{RImpala-package}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{A Package to interface R and Impala}

\description{
RImpala-package contains the R functions required to connect, execute queries and retrieve back results from Impala. It uses the rJava package to create a JDBC connection to any of the impala servers running on a Hadoop Cluster. 
}

%- maybe also 'usage' for other objects documented here.

\author{
Austin Chungath Vincent \email{austin.cv@mu-sigma.com},\cr
Vikas Raguttahalli \email{vikas.r@mu-sigma.com},\cr
Sachin Sudarshana \email{sachin.sudarshana@mu-sigma.com}}

\details{
\tabular{ll}{
Package: \tab RImpala\cr
Type: \tab Package\cr
Version: \tab 1.0.0\cr
Date: \tab 2013-09-06\cr
License: \tab file LICENSE\cr
}
}

%% ~Make other sections like Warning with \section{Warning }{....} ~
\section{Installation}{
RImpala uses the JDBC drivers provided by Cloudera Impala. We need to install them before we can use the RImpala package. Cloudera provides the JBDC jars on their website that can be downloaded directly.\cr
\cr
There are two ways to do this:\cr
\cr
A. If you have Cloudera Impala installed on the machine running R then you will have the necessary JDBC jars already in place (probably in "/usr/lib/impala/lib") and you can use them to initiate the connection to Impala.\cr
B. If the machine running R is a different server than the Impala server then you need to download the JDBC jars from \bold{https://downloads.cloudera.com/impala-jdbc/impala-jdbc-0.5-2.zip} or from the server running Impala and extract it to a location that can be accessed by the R user.\cr
\cr
After you have installed the JDBC drivers you can start using the RImpala package.\cr
Have a look at \code{\link{rimpala.init}} and \code{\link{rimpala.connect}} to establish connection to Impala.\cr
}

\references{
http://www.cloudera.com/content/cloudera/en/products/cdh/impala.html - Cloudera's page on Impala
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Impala }
\keyword{ Installation }
\keyword{ JDBC }
\keyword{ drivers }
