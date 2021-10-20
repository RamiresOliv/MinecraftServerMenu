:: call me using in PowerShell: ./publish
:: call me using in Command Prompt/cmd: publish
:: Batch file by Ramires Oliv
:: this batch used to publish changed, created, removed files in github directory
:: NEED THE GIT INSTALLED
:: NEED USE "git init" BEFORE USE THE BATCH

@echo off
if exist ".git" (
    title add
    cls
    git add -A
    title commit
    :: change here the commit name the normal name its "Cool Commit"
    git commit -m "Cool Commit"
    title push
    git push
    cls
    title %CD% - cmd
    cls
    echo [Copyright Ramires Oliv]
    echo Success!
    echo Result: added, commited and pushed to local Branch.
) else (
    title %CD% - cmd
    cls
    echo [Copyright Ramires Oliv]
    echo Not Success.
    echo Result: Error in try use git. pls verify if "git init" was used.
)
