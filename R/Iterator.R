setConstructorS3("Iterator", function()
{
    this = extend(Object(), "Iterator",
        .obj = NULL
    )
    this
})

setMethodS3("start", "Iterator", function(x,...)
{
    dummy = x$.obj$start()
}, createGeneric = F)

setMethodS3("rstart", "Iterator", function(this,...)
{
    dummy = this$.obj$rstart()
}, createGeneric = F)

setMethodS3("moveForward", "Iterator", function(this,...)
{
    dummy = this$.obj$moveForward()
}, createGeneric = F)

setMethodS3("moveBackward", "Iterator", function(this,...)
{
    dummy = this$.obj$moveBackward()
}, createGeneric = F)

setMethodS3("isItem", "Iterator", function(this,...)
{
    .jsimplify(this$.obj$isItem())
}, createGeneric = F)

setMethodS3("current", "Iterator", function(this,...)
{
    obj = this$.obj$current()
    if (is.null(obj))
        return(NULL)
    obj = .jcastToArray(obj, quiet = T)
    if (class(obj)[1] == "jobjRef")
        .jsimplify(obj)
    else
        .jevalArray(obj)
}, createGeneric = F)
