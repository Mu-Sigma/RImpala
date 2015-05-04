\name{rimpala.connect}
\alias{rimpala.connect}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Establishes a JDBC connection to a machine running Impala}
\description{This function creates a connection to the impalad daemon running on a machine in a Hadoop Cluster. The IP of the machine and the port on which the impalad daemon is running is passed as an argument.}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{IP}{
The IP of the machine to which the connection needs to be established. Default value is localhost
}
\item{port}{
The port on the machine where the Impala daemon is running. Default value is 21050
}
\item{principal}{
The principal to use if you require Kerberos authentication.The principal must be the same user principal you used when starting Impala. For example: "impala/myhost.example.com@H2.EXAMPLE.COM". Default value is "noSasl"
}
}
\usage{
rimpala.connect(IP="localhost",port="21050",principal="noSasl")
}

\value{
"Connection Established" is displayed on the console upon successful connection. 
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
rimpala.close()
rimpala.connect(IP="localhost",port="21050",principal="impala/myhost.example.com@H2.EXAMPLE.COM")
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{connection}
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
