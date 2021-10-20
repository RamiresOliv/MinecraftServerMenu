@echo off

set /p faf=

git checkout %faf% > nul

if errorlevel 1 (
    echo error in try get the branch.
) else (
    echo success.
)