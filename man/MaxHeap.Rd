\name{MaxHeap}
\alias{MaxHeap}
\title{Constructor for Class MaxHeap}
\description{
This method instanciates class \code{MaxHeap}. 
}
\usage{
aHeap = MaxHeap()
}
\examples{
aHeap = MaxHeap()     # Instanciate a MaxHeap.
aHeap$insert(5)       # Insert a few elements.
aHeap$insert(3)
aHeap$insert(4)
aHeap$insert(1)
aHeap$insert(6)
aHeap$peekMax()       # Inspect the maximum element.
aHeap$removeMax()     # Remove the maximum element.
aHeap$peekMax()       # Inspect the new maximum.
}
\author{John Hughes}
\keyword{package}
\keyword{methods}
