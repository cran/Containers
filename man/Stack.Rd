\name{Stack}
\alias{Stack}
\title{Constructor for Class Stack}
\description{
This method instanciates class \code{Stack}. 
}
\usage{
aStack = Stack()
}
\examples{
aStack = Stack()             # Instanciate a stack.
aStack$push(3)               # Push a few integers onto the stack.
aStack$push(2)
aStack$push(1)
aStack$top()                 # Inspect the top element.
while (! aStack$isEmpty())   # Print the elements, emptying the stack in the process.
    print(aStack$pop())
}
\author{John Hughes}
\keyword{package}
\keyword{methods}
