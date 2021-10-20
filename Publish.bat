:: call me using in PowerShell: ./publish
:: call me using in Command Prompt/cmd: publish
:: Batch file by Ramires Oliv
:: this batch used to publish changed, created, removed files in github directory
:: NEED THE GIT INSTALLED
:: NEED USE "git init" BEFORE USE THE BATCH

@echo off

echo [Copyright Ramires Oliv]

if exist ".git" ( echo ... ) else (
    echo Not Success.
    echo Result: Error in try use git. pls verify if "git init" was used.
    exit
)

echo pull           Incorporates changes from a remote repository into the current branch. In its default mode
echo publish        (AUTO PUBLISH) add, commit, pull to local branch
echo add            (MANUAL PUBLISH) This command updates the index using the current content found in the working tree, to prepare the content staged for the next commit.
echo commit         (MANUAL PUBLISH) Updates remote refs using local refs, while sending objects necessary to complete the given refs.
echo push         (MANUAL PUBLISH) Updates remote refs using local refs, while sending objects necessary to complete the given refs.
goto main

:main
set /p select=

if %select% equ pull goto pull
if %select% equ push goto push
if %select% equ add goto add
if %select% equ commit goto commit
if %select% equ publish goto publish

if %select% GEQ 0 goto Error

:Error
    echo Error: Command not found.
    goto main

:push
    title pull
    git pull
    echo Success!
    echo Result: pushed to GitHub Local Branch.
    exit

:pull
    title pull
    git pull
    echo Success!
    echo Result: pulled to GitHub Local Branch.
    exit

:add
    title add
    git add -A
    echo Success!
    echo Result: added local Branch.
    exit

:commit
    title commit
    git commit -m ""
    echo Success!
    echo Result: commit local Branch.
    exit

:publish
    title add
    git add -A
    title commit
    :: change here the commit name the normal name its "Cool Commit"
    git commit -m "Cool Commit"
    title push
    git push
    title %CD% - cmd
    echo [Copyright Ramires Oliv]
    echo Success!
    echo Result: added, commited and pushed to GitHub local Branch.
    exit

echo ...