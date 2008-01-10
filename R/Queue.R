setConstructorS3("Queue", function()
{
    this = extend(Container(), "Queue",
        .obj = NULL
    )
    this$.obj = .jnew("hughes.Queue")
    this
})

setMethodS3("removeFront", "Queue", function(this,...)
{
    obj = this$.obj$removeFront()
    if (is.null(obj))
        return(NULL)
    obj = .jcastToArray(obj, quiet = T)
    if (class(obj)[1] == "jobjRef")
        .jsimplify(obj)
    else
        .jevalArray(obj)
}, createGeneric = F)

setMethodS3("insertBack", "Queue", function(this, newBack,...)
{
    if (length(newBack) > 1)
        newBack = .jarray(newBack)
    else if (is.integer(newBack))
        newBack = .jnew("java/lang/Integer", as.integer(newBack))
    else if (is.double(newBack))
        newBack = .jnew("java/lang/Double", newBack)
    else if (is.character(newBack))
        newBack = .jnew("java/lang/String", newBack)
    else if (is.logical(newBack))
        newBack = .jnew("java/lang/Boolean", newBack)
    else
        newBack = newBack
    .jcall(this$.obj, , "insertBack", .jcast(newBack, "java/lang/Object"))
}, createGeneric = F)

setMethodS3("front", "Queue", function(this,...)
{
    obj = this$.obj$front()
    if (is.null(obj))
        return(NULL)
    obj = .jcastToArray(obj, quiet = T)
    if (class(obj)[1] == "jobjRef")
        .jsimplify(obj)
    else
        .jevalArray(obj)
}, createGeneric = F)

setMethodS3("iterator", "Queue", function(this,...)
{
    it = Iterator()
    it$.obj = this$.obj$iterator()
    it
}, createGeneric = F)
