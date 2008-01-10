setConstructorS3("Heap", function()
{
    this = extend(Container(), "Heap",
        .obj = NULL
    )
    this
})

setMethodS3("contract", "Heap", function(this,...)
{
    dummy = this$.obj$contract()
}, createGeneric = F)

setMethodS3("capacity", "Heap", function(this,...)
{
    .jsimplify(this$.obj$capacity())
}, createGeneric = F)

setMethodS3("iterator", "Heap", function(this,...)
{
    it = Iterator()
    it$.obj = this$.obj$iterator()
    it
}, createGeneric = F)

setMethodS3("insert", "Heap", function(this, element,...)
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
