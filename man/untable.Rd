\name{untable}
\alias{untable}

\title{
 Create Vector from Table
}

\description{
Taking a table and create a vector from it again
}
\usage{
  untable(x)
}

\arguments{
  \item{x}{A table.}
}

\details{
 Just create a vector from a table.
}

\value{
  A vector.
}

\author{
  Daniel Fischer
}

\examples{
x <- sample(1:10, 100, replace=TRUE)
x <- table(x)
untable(x)
}

\keyword{methods}
 
