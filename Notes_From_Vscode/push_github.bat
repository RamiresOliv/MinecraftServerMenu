@echo off
if exist ".git" (
    title add
    cls
    git add -A
    title commit
    git commit -m "Cool Commit"
    title push
    git push
    cls
    title %CD% - cmd
    cls
    echo Success!
    echo Result: added, commited and pushed. to local Branch
) else (
    title %CD% - cmd
    cls
    echo Not Success.
    echo Result: Error in try use git. pls verify if "git init" was used.
)