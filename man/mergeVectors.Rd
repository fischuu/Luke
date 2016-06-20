\name{mergeVectors}
\alias{mergeVectors}

\title{
 Merging two vectors
}

\description{
  This function merges two vectors to a data.fram, using the names as key.
}
\usage{
  mergeVectors(x,y)
}

\arguments{
  \item{x}{The first vector.}
  \item{y}{The second vector.}
}

\details{
 Just a basic merging of vectyors, incase that the order of the vector differs, but the names intersect.
}

\value{
  A merged data.frame with the two vectors.
}

\author{
  Daniel Fischer
}

\examples{
x <- 1:10
names(x) <- letters[1:10]
y <- 1:10
names(y) <- sample(letters[1:10])
mergeVectors(x,y)
}

\keyword{methods}
 
