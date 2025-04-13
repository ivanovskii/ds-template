@echo off
setlocal enabledelayedexpansion

set "target=.ipynb_checkpoints"
set "count=0"
set "scriptDir=%~dp0"

echo Searching in: %scriptDir%
echo.

for /d /r "%scriptDir%" %%a in (*) do (
    if "%%~nxa"=="%target%" (
        set /a count+=1
        echo Found folder: %%a
    )
)

if %count% gtr 0 (
    echo.
    echo Total folders found: %count%
    set /p confirmation="Delete all? (Y/N): "
    if /i "!confirmation!"=="Y" (
        echo Deleting...
        for /d /r "%scriptDir%" %%a in (*) do (
            if "%%~nxa"=="%target%" (
                rd /s /q "%%a"
                echo Deleted: %%a
            )
        )
        echo All .ipynb_checkpoints folders removed!
    ) else (
        echo Operation cancelled
    )
) else (
    echo No .ipynb_checkpoints folders found
)

pause