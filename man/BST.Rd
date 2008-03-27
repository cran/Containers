\name{BST}
\alias{BST}
\title{Constructor for Class BST}
\description{
This method instanciates class \code{BST}. 
}
\usage{
aBST = BST()
}
\examples{
.jinit()
.jpackage("Containers")
aBST = BST()                     # Instanciate a BST.
aBST$insert(5)                   # Insert a few elements.
aBST$insert(2)
aBST$insert(1)
aBST$insert(3)
aBST$insert(8)
aBST$find(3)                     # Search for 3.
aBST$find(0)                     # Search for 0.
aBST$minimum()                   # Find the smallest element.
aBST$successor(aBST$minimum())   # Find the in-order successor of the minimum.
}
\author{John Hughes}
\keyword{package}
\keyword{methods}
