function Git-Update{
    param(
        $repname = "status",
        $file2add,
        $gitcomment,
        $wannaPush=$false
        )
    if ($repname -ne "status")
    {
    git add $file2add
    git commit -m $gitcomment
        if ($wannaPush)
        {
            git push $repname master
        }
    }
    git status
}