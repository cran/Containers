setConstructorS3("MaxHeap", function()
{
    this = extend(Heap(), "MaxHeap",
        .obj = NULL
    )
    this$.obj = .jnew("hughes.MaxHeap")
    this
})

setMethodS3("removeMax", "MaxHeap", function(this,...)
{
    obj = this$.obj$removeMax()
    if (is.null(obj))
        return(NULL)
    .jsimplify(obj)
}, createGeneric = F)

setMethodS3("peekMax", "MaxHeap", function(this,...)
{
    obj = this$.obj$peekMax()
    if (is.null(obj))
        return(NULL)
    .jsimplify(obj)
}, createGeneric = F)
