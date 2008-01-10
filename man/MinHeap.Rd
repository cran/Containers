\name{MinHeap}
\alias{MinHeap}
\title{Constructor for Class MinHeap}
\description{
This method instanciates class \code{MinHeap}. 
}
\usage{
aHeap = MinHeap()
}
\examples{
aHeap = MinHeap()     # Instanciate a MinHeap.
aHeap$insert(5)       # Insert a few elements.
aHeap$insert(3)
aHeap$insert(4)
aHeap$insert(1)
aHeap$insert(6)
aHeap$peekMin()       # Inspect the minimum element.
aHeap$removeMin()     # Remove the minimum element.
aHeap$peekMin()       # Inspect the new minimum.
}
\author{John Hughes}
\keyword{package}
\keyword{methods}
