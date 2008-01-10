setConstructorS3("MinHeap", function()
{
    this = extend(Heap(), "MinHeap",
        .obj = NULL
    )
    this$.obj = .jnew("hughes.MinHeap")
    this
})

setMethodS3("removeMin", "MinHeap", function(this,...)
{
    obj = this$.obj$removeMin()
    if (is.null(obj))
        return(NULL)
    .jsimplify(obj)
}, createGeneric = F)

setMethodS3("peekMin", "MinHeap", function(this,...)
{
    obj = this$.obj$peekMin()
    if (is.null(obj))
        return(NULL)
    .jsimplify(obj)
}, createGeneric = F)
