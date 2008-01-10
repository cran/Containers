\name{Iterator}
\alias{Iterator}
\title{Constructor for Class Iterator}
\description{
This method instanciates class \code{Iterator}, but this method should not be called directly, for \code{Iterator} is an abstract class. See the package vignette for details.
}
\examples{
aDeque = Deque()          # Instanciate a Deque.
aDeque$insertBack(2)      # Insert a few elements.
aDeque$insertBack(3)
aDeque$insertFront(1)
aDeque$insertFront(0)
it = aDeque$iterator()    # Get an iterator for the deque.
it$start()
while (it$isItem())       # Traverse the deque from front to back, printing along the way.
{
    print(it$current())
    it$moveForward()
}
}
\author{John Hughes}
\keyword{package}
\keyword{methods}
