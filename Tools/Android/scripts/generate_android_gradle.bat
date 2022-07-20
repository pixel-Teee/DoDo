set SCRIPT_DIR=%~dp0

set ROOT_DIR=%SCRIPT_DIR%..\..\..

if [%1] == [] (
    set BUILD_DIR=%ROOT_DIR%\build\android_gradle
) else (
    set BUILD_DIR=%1
)

