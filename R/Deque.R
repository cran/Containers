setConstructorS3("Deque", function()
{
    this = extend(Queue(), "Deque",
        .obj = NULL
    )
    this$.obj = .jnew("hughes.Deque")
    this
})

setMethodS3("removeBack", "Deque", function(this,...)
{
    obj = this$.obj$removeBack()
    if (is.null(obj))
        return(NULL)
    obj = .jcastToArray(obj, quiet = T)
    if (class(obj)[1] == "jobjRef")
        .jsimplify(obj)
    else
        .jevalArray(obj)
}, createGeneric = F)

setMethodS3("insertFront", "Deque", function(this, newFront,...)
{
    if (length(newFront) > 1)
        newFront = .jarray(newFront)
    else if (is.integer(newFront))
        newFront = .jnew("java/lang/Integer", as.integer(newFront))
    else if (is.double(newFront))
        newFront = .jnew("java/lang/Double", newFront)
    else if (is.character(newFront))
        newFront = .jnew("java/lang/String", newFront)
    else if (is.logical(newFront))
        newFront = .jnew("java/lang/Boolean", newFront)
    else
        newFront = newFront
    .jcall(this$.obj, , "insertFront", .jcast(newFront, "java/lang/Object"))
}, createGeneric = F)

setMethodS3("back", "Deque", function(this,...)
{
    obj = this$.obj$back()
    if (is.null(obj))
        return(NULL)
    obj = .jcastToArray(obj, quiet = T)
    if (class(obj)[1] == "jobjRef")
        .jsimplify(obj)
    else
        .jevalArray(obj)
}, createGeneric = F)
