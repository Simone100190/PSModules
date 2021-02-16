function Git-Update{
    param(
        [string] $r = "THIS", # repository name
        $f = "STATUS", # file to be added
        [string] $c, # git comment 
        [bool] $p = "N" # push yes or no
        )
    if ($f -ne "STATUS")
    {
        git add $f
        git commit -m $c
        if ($p -eq "Y")
        {
            if ($r -eq "THIS")
            {
                git push
            }else {
                git push $r master
            }
        }
    }
    git status
    # new line : `r`n for ` use Alt+96
    Write-Host "`r`nFuntion parameters: `r`n-r for repo name`r`n-f for file to be added`r`n-c for the comment`r`n-p Y/N for pushing the files.`r`n"
}

#     param(
#         $r=0,
#         $f=0,
#         $c=0,
#         $p=0
#         )
#     Write-Output "r-$r . f-$f . c-$c . p-$p"
# }