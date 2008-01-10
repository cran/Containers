setConstructorS3("Container", function()
{
    this = extend(Object(), "Container",
        .obj = NULL
    )
    this
})

setMethodS3("clear", "Container", function(this,...)
{
    dummy = this$.obj$clear()
}, createGeneric = F)

setMethodS3("clone", "Container", function(this,...)
{
    clone = Container()
    clone$.obj = this$.obj$clone()
    class(clone) = class(this)
    clone
}, createGeneric = F)

setMethodS3("isEmpty", "Container", function(this,...)
{
    .jsimplify(this$.obj$isEmpty())
}, createGeneric = F)

setMethodS3("size", "Container", function(this,...)
{
    .jsimplify(this$.obj$size())
}, createGeneric = F)
