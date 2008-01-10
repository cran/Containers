setConstructorS3("SplayTree", function()
{
    this = extend(BST(), "SplayTree",
        .obj = NULL
    )
    this$.obj = .jnew("hughes.SplayTree")
    this
})

setMethodS3("balance", "SplayTree", function(this,...)
{
    dummy = NA
}, createGeneric = F)
