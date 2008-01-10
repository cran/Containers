require(R.oo, quietly = T)
require(rJava, quietly = T)
.jinit()
.jpackage("Containers")

setConstructorS3("BST", function()
{
    this = extend(Container(), "BST",
        .obj = NULL
    )
    this$.obj = .jnew("hughes.BinarySearchTree")
    this
})

setMethodS3("insert", "BST", function(this, element,...)
{
    if (length(element) > 1)
        throw("An internally ordered Container cannot contain an array.")
    else if (is.integer(element))
        element = .jnew("java/lang/Integer", as.integer(element))
    else if (is.double(element))
        element = .jnew("java/lang/Double", element)
    else if (is.character(element))
        element = .jnew("java/lang/String", element)
    else if (is.logical(element))
        element = .jnew("java/lang/Boolean", element)
    else
        element = element
    .jcall(this$.obj, , "insert", .jcast(element, "java/lang/Comparable"))
}, createGeneric = F)

setMethodS3("find", "BST", function(this, element,...)
{
    if (length(element) > 1)
        throw("An internally ordered Container cannot contain an array.")
    else if (is.integer(element))
        element = .jnew("java/lang/Integer", as.integer(element))
    else if (is.double(element))
        element = .jnew("java/lang/Double", element)
    else if (is.character(element))
        element = .jnew("java/lang/String", element)
    else if (is.logical(element))
        element = .jnew("java/lang/Boolean", element)
    else
        element = element
    obj = .jcall(this$.obj, "Ljava/lang/Comparable;", "find", .jcast(element, "java/lang/Comparable"))
    if (is.null(obj))
        return(NULL)
    .jsimplify(obj)
}, createGeneric = F)

setMethodS3("maximum", "BST", function(this,...)
{
    obj = this$.obj$maximum()
    if (is.null(obj))
        return(NULL)
    .jsimplify(obj)
}, createGeneric = F)

setMethodS3("minimum", "BST", function(this,...)
{
    obj = this$.obj$minimum()
    if (is.null(obj))
        return(NULL)
    .jsimplify(obj)
}, createGeneric = F)

setMethodS3("predecessor", "BST", function(this, element,...)
{
    if (length(element) > 1)
        throw("An internally ordered Container cannot contain an array.")
    else if (is.integer(element))
        element = .jnew("java/lang/Integer", as.integer(element))
    else if (is.double(element))
        element = .jnew("java/lang/Double", element)
    else if (is.character(element))
        element = .jnew("java/lang/String", element)
    else if (is.logical(element))
        element = .jnew("java/lang/Boolean", element)
    else
        element = element
    obj = .jcall(this$.obj, "Ljava/lang/Comparable;", "predecessor", .jcast(element, "java/lang/Comparable"))
    if (is.null(obj))
        return(NULL)
    .jsimplify(obj)
}, createGeneric = F)

setMethodS3("successor", "BST", function(this, element,...)
{
    if (length(element) > 1)
        throw("An internally ordered Container cannot contain an array.")
    else if (is.integer(element))
        element = .jnew("java/lang/Integer", as.integer(element))
    else if (is.double(element))
        element = .jnew("java/lang/Double", element)
    else if (is.character(element))
        element = .jnew("java/lang/String", element)
    else if (is.logical(element))
        element = .jnew("java/lang/Boolean", element)
    else
        element = element
    obj = .jcall(this$.obj, "Ljava/lang/Comparable;", "successor", .jcast(element, "java/lang/Comparable"))
    if (is.null(obj))
        return(NULL)
    .jsimplify(obj)
}, createGeneric = F)

setMethodS3("remove", "BST", function(this, element,...)
{
    if (length(element) > 1)
        throw("An internally ordered Container cannot contain an array.")
    else if (is.integer(element))
        element = .jnew("java/lang/Integer", as.integer(element))
    else if (is.double(element))
        element = .jnew("java/lang/Double", element)
    else if (is.character(element))
        element = .jnew("java/lang/String", element)
    else if (is.logical(element))
        element = .jnew("java/lang/Boolean", element)
    else
        element = element
    .jcall(this$.obj, , "remove", .jcast(element, "java/lang/Comparable"))
}, createGeneric = F)

setMethodS3("balance", "BST", function(this,...)
{
    dummy = this$.obj$balance()
}, createGeneric = F)

setMethodS3("height", "BST", function(this,...)
{
    this$.obj$height()
}, createGeneric = F)

