\name{Queue}
\alias{Queue}
\title{Constructor for Class Queue}
\description{
This method instanciates class \code{Queue}. 
}
\usage{
aQueue = Queue()
}
\examples{
aQueue = Queue()          # Instanciate a Queue.
aQueue$insertBack(2)      # Insert a few elements.
aQueue$insertBack(3)
aQueue$insertBack(-4)
aQueue$front()            # Inspect the front element.
}
\author{John Hughes}
\keyword{package}
\keyword{methods}
