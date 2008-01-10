\name{Containers-package}
\alias{Containers-package}
\docType{package}
\title{
Containers
}
\description{
This package furnishes R with a suite of object-oriented data structures: stack, queue, deque, max-heap, min-heap, binary search tree, splay tree. Each R class is backed by a Java class.
}
\details{
\tabular{ll}{
Package: \tab Containers\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2008-1-10\cr
License: \tab GPL\cr
}
}
\author{
John Hughes

Maintainer: John Hughes <jph264@psu.edu>
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
\keyword{package}
