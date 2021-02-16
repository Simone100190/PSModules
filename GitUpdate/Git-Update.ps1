function Git-Update{
    param(
        [string] $r = "wantToDisplayStatus", # repository name
        $f, # file to be added
        [string] $c, # git comment 
        [bool] $p = $false # push yes or no
        )
    if ($r -ne "wantToDisplayStatus")
    {
        git add $f
        git commit -m $c
        if ($p)
        {
            git push $r master
        }
    }
    git status
    # new line : `r`n for ` use Alt+96
    Write-Host "Funtion parameters: `r`n-r for repo name`r`n-f for file to be added`r`n-c for the comment`r`n-p true/false for pushing the files."
}

#     param(
#         $r=0,
#         $f=0,
#         $c=0,
#         $p=0
#         )
#     Write-Output "r-$r . f-$f . c-$c . p-$p"
# }