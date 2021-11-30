

:: Welcome to GitHelper.cmd

:: call me using PowerShell: ./GitHelper
:: call me using Command Prompt/cmd: GitHelper
:: Batch file by Ramires Oliv
:: this batch used to publish changed, created, removed files in github directory
:: NEED THE GIT INSTALLED
:: NEED USE "git init" BEFORE USE THE BATCH



























@echo off

echo.
echo [Copyright Ramires Oliv]

git --version > nul
if errorlevel 1 (
    echo Not Success.
    echo Result: Error in try use git. pls verify if git installed.
    goto leave_and_ignore
)

if exist ".git" ( goto commands ) else (
    echo Not Success.
    echo Result: Error in try use git. pls verify if "git init" was used.
    goto leave_and_ignore
)

:commands
echo.
echo If you need see the informations of a command type "commandinfo" to see the commands informations.
echo 1. pull
echo 2. publish
echo 3. add
echo 4. commit
echo 5. push
echo 6. checkout [branch]
echo 6. leave/exit
echo 7. help
goto main

:main
echo.
title %CD% / Git Helper by RamiresOliv
echo ---------------
set /p select= Run git?: 


:: if %select% equ pl goto pull
:: if %select% equ ph goto push
:: if %select% equ a goto add
:: if %select% equ ct goto commit

if "%select%" equ "ph" goto publish
if "%select%" equ "cls" goto clear

if "%select%" equ "pull" goto pull
if "%select%" equ "checkout" goto checkout
if "%select%" equ "push" goto push
if "%select%" equ "add" goto add
if "%select%" equ "commit" goto commit
if "%select%" equ "publish" goto publish
if "%select%" equ "leave" goto leave
if "%select%" equ "exit" goto leave
if "%select%" equ "help" goto commands
if "%select%" equ "clear" goto clear
if "%select%" equ "commandinfo" goto commandinfos_main

if "%select%" GEQ 0 goto Error

:Error
    title %CD% / Running %select%...

    if "%select%" equ " " (
        goto ErrorInTryRun
    ) else if "%select%" equ "" ( goto main )
    
    echo Running %select% ...
    %select% || (
        goto ErrorInTryRun
    )

:ErrorInTryRun
    title %CD% / Error...
    echo.
    echo Error: The Command "%select%" not exist or error in try use "%select%"
    echo try use "help" for see commands list or
    goto main

:commandinfos_main
    echo.
    set /p command= see the command...; 
    if "%command%" equ "pull" goto helpcommands_pull
    if "%command%" equ "checkout" goto helpcommands_checkout
    if "%command%" equ "push" goto helpcommands_pull
    if "%command%" equ "add" goto helpcommands_add
    if "%command%" equ "commit" goto helpcommands_commit
    if "%command%" equ "publish" goto helpcommands_publish
    if "%command%" equ "clear" goto helpcommands_clear

    if "%command%" equ "back" goto main
    if "%command%" equ "return" goto main
    if "%command%" equ "Back" goto main
    if "%command%" equ "Return" goto main
    
    if "%command%" GEQ 0 goto helpcommand_error

:helpcommands
    :helpcommands_pull
        echo.
        echo exemple: "pull"
        echo (PULL) Incorporates changes from a remote repository into the current branch. In its default mode
        goto main
    :helpcommands_checkout
        echo.
        echo exemple: "checkout [branch]"
        echo Updates files in the working tree to match the version in the index or the specified tree. If no pathspec was given, git checkout will also update HEAD to set the specified branch as the current branch.
        goto main
    :helpcommands_push
        echo.
        echo exemple: "push"
        echo (MANUAL PUBLISH) Updates remote refs using local refs, while sending objects necessary to complete the given refs.
        goto main
    :helpcommands_add
        echo.
        echo exemple: "add"
        echo (MANUAL PUBLISH) This command updates the index using the current content found in the working tree, to prepare the content staged for the next commit.
        goto main
    :helpcommands_commit
        echo.
        echo exemple: "commit"
        echo (MANUAL PUBLISH) Create a new commit containing the current contents of the index and the given log message describing the changes.
        goto main
    :helpcommands_publish
        echo.
        echo exemple: "publish" or "ph"
        echo (AUTO PUBLISH) add, commit, pull to local branch
        goto main
    :helpcommands_clear
        echo.
        echo exemple: "clear" or "cls"
        echo clear the console
        goto main

:helpcommand_error
    echo.
    echo Try use "Back" or "Return" to back the command line
    echo Sorry the informations from command "%command%" no exist.
    goto commandinfos_main

:clear
    cls
    goto main

:add
    title %CD% / running git add -A...
    git add -A
    echo Success!
    echo Result: added local Branch.
    goto main

:commit
    title %CD% / running git commit -m "Cool Commit"...
    git commit -m "Cool Commit"
    echo Success!
    echo Result: commit local Branch.
    goto main

:push
    title %CD% / running git push...
    git pull
    echo Success!
    echo Result: pushed to GitHub Local Branch.
    goto main

:publish
    title %CD% / running git add -A...
    git add -A
    echo.
    title %CD% / running git commit -m "Cool Commit"...
    :: change here the commit name the normal name its "Cool Commit"
    git commit -m "Cool Commit"
    echo.
    title %CD% / running git push...
    git push
    echo.
    echo [Copyright Ramires Oliv]
    echo Success!
    echo Result: added, commited and pushed to GitHub local Branch.
    goto main

:pull
    title %CD% / running git pull...
    title pull
    git pull
    echo Success!
    echo Result: pulled to GitHub Local Branch.
    goto main

:checkout
    title %CD% / running git checkout...
    echo.
    echo -----------------------------
    echo type the Branch name for change.
    set /p BranchName= Branch?: 
    title %CD% / running git checkout %BranchName%...
    git checkout %BranchName%
    if errorlevel 1 (
        echo error: could not find a branch %BranchName%.
    ) else (
        echo success!
        echo Result: changed to %BranchName% Branch.
    )
    goto main

:leave
    title %CD% - cmd
    echo.
    @echo on
    :: Good Bye!

:leave_and_ignore
    echo.