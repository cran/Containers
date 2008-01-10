setConstructorS3("Stack", function()
{
    this = extend(Container(), "Stack",
        .obj = NULL
    )
    this$.obj = .jnew("hughes.Stack")
    this
})

setMethodS3("pop", "Stack", function(this,...)
{
    obj = this$.obj$pop()
    if (is.null(obj))
        return(NULL)
    obj = .jcastToArray(obj, quiet = T)
    if (class(obj)[1] == "jobjRef")
        .jsimplify(obj)
    else
        .jevalArray(obj)
}, createGeneric = F)

setMethodS3("push", "Stack", function(this, newTop,...)
{
    if (length(newTop) > 1)
        newTop = .jarray(newTop)
    else if (is.integer(newTop))
        newTop = .jnew("java/lang/Integer", as.integer(newTop))
    else if (is.double(newTop))
        newTop = .jnew("java/lang/Double", newTop)
    else if (is.character(newTop))
        newTop = .jnew("java/lang/String", newTop)
    else if (is.logical(newTop))
        newTop = .jnew("java/lang/Boolean", newTop)
    else
        newTop = newTop
    .jcall(this$.obj, , "push", .jcast(newTop, "java/lang/Object"))
}, createGeneric = F)

setMethodS3("top", "Stack", function(this,...)
{
    obj = this$.obj$top()
    if (is.null(obj))
        return(NULL)
    obj = .jcastToArray(obj, quiet = T)
    if (class(obj)[1] == "jobjRef")
        .jsimplify(obj)
    else
        .jevalArray(obj)
}, createGeneric = F)

setMethodS3("iterator", "Stack", function(this,...)
{
    it = Iterator()
    it$.obj = this$.obj$iterator()
    it
}, createGeneric = F)
