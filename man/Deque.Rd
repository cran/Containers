\name{Deque}
\alias{Deque}
\title{Constructor for Class Deque}
\description{
This method instanciates class \code{Deque}. 
}
\usage{
aDeque = Deque()
}
\examples{
aDeque = Deque()          # Instanciate a Deque.
aDeque$insertBack(2)      # Insert a few elements.
aDeque$insertBack(3)
aDeque$insertFront(1)
aDeque$insertFront(0)
aDeque$front()            # Inspect the front element.
aDeque$back()             # Inspect the back element.
}
\author{John Hughes}
\keyword{package}
\keyword{methods}
