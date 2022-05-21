module cific.srcloc;

/// A structure that shows locations in source code.
export struct CFCSrcLoc
{
    string file;
    uint line;
    uint col;

    /// checks if the two locations are in the same file
    bool same_file_to(const ref CFCSrcLoc other) const
    {
        return file == other.file;
    }
}