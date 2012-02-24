
Function newDirectoryMetadata(container, item) As Object
    directory = createBaseMetadata(container, item)

    directory.ContentType = item@type
    if directory.ContentType = "show" then
        directory.ContentType = "series"
    else if directory.ContentType = invalid then
        directory.ContentType = "appClip"
    endif

    return directory
End Function

